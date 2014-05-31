.class public Lcom/android/settings/placesettings/PlaceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PlaceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBlockingMode:Landroid/preference/CheckBoxPreference;

.field private mBlueTooth:Landroid/preference/CheckBoxPreference;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mDataNetwork:Landroid/preference/CheckBoxPreference;

.field private mEnable:Landroid/preference/CheckBoxPreference;

.field private mGuideText:Landroid/widget/TextView;

.field private mPlaceId:I

.field mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSoundMode:Landroid/preference/ListPreference;

.field private mTextName:Landroid/widget/TextView;

.field private mWiFi:Landroid/preference/CheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getPlaceName()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mPlaceId:I

    packed-switch v0, :pswitch_data_0

    .line 199
    const v0, 0x7f090ccf

    :goto_0
    return v0

    .line 193
    :pswitch_0
    const v0, 0x7f091588

    goto :goto_0

    .line 195
    :pswitch_1
    const v0, 0x7f091589

    goto :goto_0

    .line 197
    :pswitch_2
    const v0, 0x7f09158a

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPlaceSharedPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mPlaceId:I

    packed-switch v0, :pswitch_data_0

    .line 185
    const-string v0, "place_settings_home"

    :goto_0
    return-object v0

    .line 179
    :pswitch_0
    const-string v0, "place_settings_home"

    goto :goto_0

    .line 181
    :pswitch_1
    const-string v0, "place_settings_work"

    goto :goto_0

    .line 183
    :pswitch_2
    const-string v0, "place_settings_car"

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public initPref()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    const-string v0, "enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/placesettings/PlaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mEnable:Landroid/preference/CheckBoxPreference;

    .line 273
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mEnable:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 276
    const-string v0, "wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/placesettings/PlaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mWiFi:Landroid/preference/CheckBoxPreference;

    .line 277
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mWiFi:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "wifi_settings"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mWiFi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 280
    const-string v0, "bluetooth_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/placesettings/PlaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mBlueTooth:Landroid/preference/CheckBoxPreference;

    .line 281
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mBlueTooth:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "bluetooth_settings"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mBlueTooth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 284
    const-string v0, "blocking_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/placesettings/PlaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mBlockingMode:Landroid/preference/CheckBoxPreference;

    .line 285
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mBlockingMode:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "blocking_mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mBlockingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 288
    const-string v0, "data_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/placesettings/PlaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mDataNetwork:Landroid/preference/CheckBoxPreference;

    .line 289
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mDataNetwork:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "data_network"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mDataNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 292
    const-string v0, "sound_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/placesettings/PlaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSoundMode:Landroid/preference/ListPreference;

    .line 293
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "sound_mode"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 296
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 214
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 215
    const-string v2, "PlaceSettings"

    const-string v3, "onActivityCreated"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->clearFocus()V

    .line 219
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/placesettings/PlaceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 220
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04012d

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 221
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0290

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/placesettings/PlaceSettings;->mTextName:Landroid/widget/TextView;

    .line 223
    iget-object v2, p0, Lcom/android/settings/placesettings/PlaceSettings;->mTextName:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getPlaceName()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0291

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/placesettings/PlaceSettings;->mGuideText:Landroid/widget/TextView;

    .line 225
    iget-object v2, p0, Lcom/android/settings/placesettings/PlaceSettings;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09159c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v1, 0x7f07008e

    invoke-virtual {p0, v1}, Lcom/android/settings/placesettings/PlaceSettings;->addPreferencesFromResource(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 96
    const-string v1, "place_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mPlaceId:I

    .line 97
    const-string v1, "PlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "place id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/placesettings/PlaceSettings;->mPlaceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/placesettings/PlaceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 101
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 102
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/placesettings/PlaceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getPlaceSharedPreferenceKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->initPref()V

    .line 122
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 243
    const-string v0, "PlaceSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 246
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, key:Ljava/lang/String;
    const-string v3, "PlaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange(), key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v3, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 363
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "wifi_settings"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 365
    .local v2, value:Z
    const-string v3, "wifi_settings"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 384
    .end local v2           #value:Z
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    const/4 v3, 0x1

    return v3

    .line 366
    .restart local p2
    :cond_1
    const-string v3, "bluetooth_settings"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 367
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 368
    .restart local v2       #value:Z
    const-string v3, "bluetooth_settings"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 369
    .end local v2           #value:Z
    .restart local p2
    :cond_2
    const-string v3, "blocking_mode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 370
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 371
    .restart local v2       #value:Z
    const-string v3, "blocking_mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 372
    .end local v2           #value:Z
    .restart local p2
    :cond_3
    const-string v3, "data_network"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 373
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 374
    .restart local v2       #value:Z
    const-string v3, "data_network"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 375
    .end local v2           #value:Z
    .restart local p2
    :cond_4
    const-string v3, "sound_mode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 376
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 377
    .local v2, value:I
    iget-object v3, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/placesettings/PlaceSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    const-string v3, "sound_mode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 380
    .end local v2           #value:I
    .restart local p2
    :cond_5
    const-string v3, "enable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 382
    .local v2, value:Z
    const-string v3, "enable"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 326
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v2, :cond_0

    .line 328
    sget v2, Lcom/android/settings/placesettings/PlaceSettings;->mSettingValue:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 329
    sget v2, Lcom/android/settings/placesettings/PlaceSettings;->mSettingValue:I

    if-ne v2, v1, :cond_1

    .local v1, value:Z
    :goto_0
    move-object v0, p2

    .line 330
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 331
    .local v0, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 355
    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v1           #value:Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 329
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 230
    const-string v0, "PlaceSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 232
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/placesettings/PlaceSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 239
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 251
    const-string v1, "PlaceSettings"

    const-string v2, "onStop() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/settings/placesettings/PlaceSettings;->mEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.APPLY_PLACE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "place_id"

    iget v2, p0, Lcom/android/settings/placesettings/PlaceSettings;->mPlaceId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    :goto_0
    return-void

    .line 262
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.PLACE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/placesettings/PlaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
