.class public Lcom/android/settings/placesettings/PlaceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlaceReceiver.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private applyPlaceSettings(I)V
    .locals 12
    .parameter "placeId"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 229
    iget-object v7, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/settings/placesettings/PlaceReceiver;->getPlaceSharedPreferenceKey(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 230
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v7, "wifi_settings"

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 231
    .local v6, wifi:Z
    const-string v7, "bluetooth_settings"

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 232
    .local v1, bluetooth:Z
    const-string v7, "blocking_mode"

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 233
    .local v0, blockingMode:Z
    const-string v7, "data_network"

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 234
    .local v2, dataNetwork:Z
    const-string v7, "sound_mode"

    const/4 v8, 0x2

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 236
    .local v5, soundMode:I
    invoke-direct {p0, v6}, Lcom/android/settings/placesettings/PlaceReceiver;->handleWifi(Z)V

    .line 237
    invoke-direct {p0, v1}, Lcom/android/settings/placesettings/PlaceReceiver;->handleBluetooth(Z)V

    .line 238
    invoke-direct {p0, v0}, Lcom/android/settings/placesettings/PlaceReceiver;->handleBlockingMode(Z)V

    .line 239
    invoke-direct {p0, v2}, Lcom/android/settings/placesettings/PlaceReceiver;->setMobileDataEnabled(Z)V

    .line 240
    invoke-direct {p0, v5}, Lcom/android/settings/placesettings/PlaceReceiver;->handleSoundMode(I)V

    .line 242
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 243
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v7, "deactivated_noti"

    invoke-interface {v3, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    iget-object v7, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    const v9, 0x7f0915a2

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 246
    invoke-direct {p0, v11}, Lcom/android/settings/placesettings/PlaceReceiver;->sendPlaceSettingsBroadcast(Z)V

    .line 247
    return-void
.end method

.method private checkCurrentPlaceSettings()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 127
    iget-object v5, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceReceiver;->getCurrentPlaceId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings/placesettings/PlaceReceiver;->getPlaceSharedPreferenceKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 129
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v5, "enable"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 130
    .local v1, enabled:Z
    if-nez v1, :cond_1

    .line 131
    const-string v5, "PlaceReceiver"

    const-string v6, "custome settings is disabled"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceReceiver;->getCurrentPlaceId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/placesettings/PlaceReceiver;->checkPlaceSettings(I)Z

    move-result v3

    .line 138
    .local v3, result:Z
    if-nez v3, :cond_2

    .line 139
    const-string v5, "deactivated_noti"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 140
    .local v2, isDeactivatedNoti:Z
    if-nez v2, :cond_0

    .line 141
    const-string v5, "deactivated_noti"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    iget-object v5, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f0915a3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 144
    invoke-direct {p0, v3}, Lcom/android/settings/placesettings/PlaceReceiver;->sendPlaceSettingsBroadcast(Z)V

    .line 145
    const-string v5, "PlaceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCurrentPlaceSettings() send broadcast, result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    .end local v2           #isDeactivatedNoti:Z
    :cond_2
    const-string v5, "deactivated_noti"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    invoke-direct {p0, v3}, Lcom/android/settings/placesettings/PlaceReceiver;->sendPlaceSettingsBroadcast(Z)V

    .line 151
    const-string v5, "PlaceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCurrentPlaceSettings() send broadcast, result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkPlaceSettings(I)Z
    .locals 11
    .parameter "placeId"

    .prologue
    const/4 v4, 0x0

    .line 164
    iget-object v8, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/settings/placesettings/PlaceReceiver;->getPlaceSharedPreferenceKey(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 165
    .local v5, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v8, "enable"

    invoke-interface {v5, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 166
    .local v3, enabled:Z
    if-nez v3, :cond_0

    .line 189
    :goto_0
    return v4

    .line 170
    :cond_0
    const-string v8, "wifi_settings"

    invoke-interface {v5, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 171
    .local v7, wifi:Z
    const-string v8, "bluetooth_settings"

    invoke-interface {v5, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 172
    .local v1, bluetooth:Z
    const-string v8, "blocking_mode"

    invoke-interface {v5, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 173
    .local v0, blockingMode:Z
    const-string v8, "data_network"

    invoke-interface {v5, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 174
    .local v2, dataNetwork:Z
    const-string v8, "sound_mode"

    const/4 v9, 0x2

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 175
    .local v6, soundMode:I
    const/4 v4, 0x1

    .line 177
    .local v4, result:Z
    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceReceiver;->getCurrentWiFiStatus()Z

    move-result v8

    if-eq v7, v8, :cond_2

    .line 178
    const/4 v4, 0x0

    .line 188
    :cond_1
    :goto_1
    const-string v8, "PlaceReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkPlaceSettings(), id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceReceiver;->getCurrentBluetoothStatus()Z

    move-result v8

    if-eq v1, v8, :cond_3

    .line 180
    const/4 v4, 0x0

    goto :goto_1

    .line 181
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceReceiver;->getCurrentBlockingMode()Z

    move-result v8

    if-eq v0, v8, :cond_4

    .line 182
    const/4 v4, 0x0

    goto :goto_1

    .line 183
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceReceiver;->getCurrentSoundMode()I

    move-result v8

    if-eq v6, v8, :cond_5

    .line 184
    const/4 v4, 0x0

    goto :goto_1

    .line 185
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceReceiver;->getCurrentMobileData()Z

    move-result v8

    if-eq v2, v8, :cond_1

    .line 186
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getCurrentBlockingMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 208
    iget-object v2, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 209
    .local v0, result:Z
    :goto_0
    const-string v1, "PlaceReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentBlockingMode() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v0

    .end local v0           #result:Z
    :cond_0
    move v0, v1

    .line 208
    goto :goto_0
.end method

.method private getCurrentBluetoothStatus()Z
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 202
    .local v0, result:Z
    const-string v1, "PlaceReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentBluetoothStatus() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v0
.end method

.method private getCurrentMobileData()Z
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 216
    .local v0, result:Z
    const-string v1, "PlaceReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentMobileData() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v0
.end method

.method private getCurrentPlaceId()I
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method private getCurrentSoundMode()I
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 223
    .local v0, result:I
    const-string v1, "PlaceReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSoundMode() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v0
.end method

.method private getCurrentWiFiStatus()Z
    .locals 4

    .prologue
    .line 194
    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 195
    .local v0, result:Z
    const-string v1, "PlaceReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentWiFiStatus() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return v0
.end method

.method private getPlaceSharedPreferenceKey(I)Ljava/lang/String;
    .locals 1
    .parameter "placeId"

    .prologue
    .line 320
    packed-switch p1, :pswitch_data_0

    .line 328
    const-string v0, "place_settings_home"

    :goto_0
    return-object v0

    .line 322
    :pswitch_0
    const-string v0, "place_settings_home"

    goto :goto_0

    .line 324
    :pswitch_1
    const-string v0, "place_settings_work"

    goto :goto_0

    .line 326
    :pswitch_2
    const-string v0, "place_settings_car"

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleBlockingMode(Z)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 280
    iget-object v4, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dormant_switch_onoff"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 281
    .local v1, state:Z
    :goto_0
    if-eq p1, v1, :cond_0

    .line 282
    if-eqz p1, :cond_2

    .line 283
    iget-object v3, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_switch_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    const-string v2, "PlaceReceiver"

    const-string v3, "Blocking mode is on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 294
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .end local v1           #state:Z
    :cond_1
    move v1, v3

    .line 280
    goto :goto_0

    .line 288
    .restart local v1       #state:Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "dormant_switch_onoff"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    const-string v2, "PlaceReceiver"

    const-string v3, "Blocking mode is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private handleBluetooth(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 261
    if-eqz p1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method private handleSoundMode(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 272
    const-string v0, "PlaceReceiver"

    const-string v1, "handleSoundMode : not need to change"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method private handleWifi(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 251
    if-eqz p1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method private sendPlaceSettingsBroadcast(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.PLACE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 297
    iget-object v2, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 298
    .local v1, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 300
    .local v0, isMobileDataEnabled:Z
    if-ne v0, p1, :cond_0

    .line 301
    const-string v2, "PlaceReceiver"

    const-string v3, "setMobileDataEnabled : not need to change"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v0           #isMobileDataEnabled:Z
    :goto_0
    return-void

    .line 304
    .restart local v0       #isMobileDataEnabled:Z
    :cond_0
    const-string v2, "PlaceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMobileDataEnabled : set to  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 314
    .end local v0           #isMobileDataEnabled:Z
    :cond_1
    const-string v2, "PlaceReceiver"

    const-string v3, "setMobileDataEnabled : connectivityManager = null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const v7, 0x10008000

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, action:Ljava/lang/String;
    const-string v4, "PlaceReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object p1, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    .line 77
    iget-object v4, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 79
    iget-object v4, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 80
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 81
    iget-object v4, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 82
    iget-object v4, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/settings/placesettings/PlaceReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 84
    const-string v4, "com.sec.android.intent.action.PLACE_HOME"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, LaunchIntent:Landroid/content/Intent;
    const-string v4, "android.settings.PLACE_SETTINGS"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    const-string v4, "place_id"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v0           #LaunchIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v4, "com.sec.android.intent.action.PLACE_WORK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .restart local v0       #LaunchIntent:Landroid/content/Intent;
    const-string v4, "android.settings.PLACE_SETTINGS"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    const-string v4, "place_id"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 96
    .end local v0           #LaunchIntent:Landroid/content/Intent;
    :cond_2
    const-string v4, "com.sec.android.intent.action.PLACE_CAR"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .restart local v0       #LaunchIntent:Landroid/content/Intent;
    const-string v4, "android.settings.PLACE_SETTINGS"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    const-string v4, "place_id"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    .end local v0           #LaunchIntent:Landroid/content/Intent;
    :cond_3
    const-string v4, "com.sec.android.intent.action.APPLY_PLACE_SETTINGS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 104
    .local v2, extras:Landroid/os/Bundle;
    const-string v4, "place_id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 105
    .local v3, placeId:I
    const-string v4, "PlaceReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APPLY_PLACE_SETTINGS, place id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0, v3}, Lcom/android/settings/placesettings/PlaceReceiver;->applyPlaceSettings(I)V

    goto :goto_0

    .line 107
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #placeId:I
    :cond_4
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    const-string v4, "PlaceReceiver"

    const-string v5, "WIFI_STATE_CHANGED,  : "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceReceiver;->checkCurrentPlaceSettings()V

    goto :goto_0

    .line 110
    :cond_5
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 111
    const-string v4, "PlaceReceiver"

    const-string v5, "BT STATE_CHANGED, : "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceReceiver;->checkCurrentPlaceSettings()V

    goto/16 :goto_0

    .line 113
    :cond_6
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 114
    const-string v4, "PlaceReceiver"

    const-string v5, "RINGER_MODE_CHANGED, : "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceReceiver;->checkCurrentPlaceSettings()V

    goto/16 :goto_0

    .line 116
    :cond_7
    const-string v4, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 117
    const-string v4, "PlaceReceiver"

    const-string v5, "DORMANTMODE_SWITCH_CHANGED, : "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceReceiver;->checkCurrentPlaceSettings()V

    goto/16 :goto_0

    .line 119
    :cond_8
    const-string v4, "android.systemui.statusbar.MOBILE_DATA_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    const-string v4, "PlaceReceiver"

    const-string v5, "MOBILE_DATA_CHANGED, : "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceReceiver;->checkCurrentPlaceSettings()V

    goto/16 :goto_0
.end method
