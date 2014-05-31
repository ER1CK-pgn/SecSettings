.class public Lcom/android/settings/FeatureSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAdapt:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mAirView:Landroid/preference/SwitchPreferenceScreen;

.field private mEasyMode:Landroid/preference/SwitchPreferenceScreen;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMulti:Landroid/preference/SwitchPreferenceScreen;

.field private mOPMode:Landroid/preference/SwitchPreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field mResolver:Landroid/content/ContentResolver;

.field private mSBeam:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartPause:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartStay:Landroid/preference/SwitchPreferenceScreen;

.field private mSupportFolderType:Z

.field protected mSwitchUncheckHandler:Landroid/os/Handler;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tv.peel.samsung.app"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.readershub"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.apps.books"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 95
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 108
    new-instance v0, Lcom/android/settings/FeatureSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/FeatureSettings$1;-><init>(Lcom/android/settings/FeatureSettings;)V

    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FeatureSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/FeatureSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/FeatureSettings;->turnOnEasyMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/FeatureSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/FeatureSettings;->turnOnOPMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private initUI()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    .line 164
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 165
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_view_master_onoff"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 169
    :goto_1
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_engine"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_8

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 170
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "voice_input_control"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_9

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 171
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "intelligent_sleep_mode"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_a

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 172
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "smart_pause"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_b

    move v6, v7

    :goto_5
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 173
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "smart_scroll"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_c

    move v6, v7

    :goto_6
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 174
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "easy_mode_switch"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_d

    move v6, v7

    :goto_7
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 175
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "key_spam_smart"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_e

    move v6, v7

    :goto_8
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 176
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "screen_mode_automatic_setting"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_f

    move v6, v7

    :goto_9
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 186
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_window_enabled"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_10

    :goto_a
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 188
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 190
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 191
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 193
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 195
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 197
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 199
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 203
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 205
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 207
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 209
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 228
    .local v4, ps:Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 231
    .local v1, cscFeature:Lcom/sec/android/app/CscFeature;
    const-string v6, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v1, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    .line 232
    .local v3, enableBlackListForCHN:Z
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, salesCode:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, "CTC"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 234
    :cond_0
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.vlingo.midas"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_b
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v6, :cond_2

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.multiwindow"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 268
    .local v0, UseMultiWindow:Z
    if-eqz v0, :cond_3

    const-string v6, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 269
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    :cond_4
    return-void

    .end local v0           #UseMultiWindow:Z
    .end local v1           #cscFeature:Lcom/sec/android/app/CscFeature;
    .end local v3           #enableBlackListForCHN:Z
    .end local v4           #ps:Landroid/preference/PreferenceScreen;
    .end local v5           #salesCode:Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 165
    goto/16 :goto_0

    .line 167
    :cond_6
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_7

    move v6, v7

    :goto_c
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_1

    :cond_7
    move v6, v8

    goto :goto_c

    :cond_8
    move v6, v8

    .line 169
    goto/16 :goto_2

    :cond_9
    move v6, v8

    .line 170
    goto/16 :goto_3

    :cond_a
    move v6, v8

    .line 171
    goto/16 :goto_4

    :cond_b
    move v6, v8

    .line 172
    goto/16 :goto_5

    :cond_c
    move v6, v8

    .line 173
    goto/16 :goto_6

    :cond_d
    move v6, v8

    .line 174
    goto/16 :goto_7

    :cond_e
    move v6, v8

    .line 175
    goto/16 :goto_8

    :cond_f
    move v6, v8

    .line 176
    goto/16 :goto_9

    :cond_10
    move v7, v8

    .line 186
    goto/16 :goto_a

    .line 255
    .restart local v1       #cscFeature:Lcom/sec/android/app/CscFeature;
    .restart local v3       #enableBlackListForCHN:Z
    .restart local v4       #ps:Landroid/preference/PreferenceScreen;
    .restart local v5       #salesCode:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 256
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_b
.end method

.method private showTalkBackDisableDialog(IILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1160
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1162
    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1167
    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 1171
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FeatureSettings$10;

    invoke-direct {v2, p0, p3}, Lcom/android/settings/FeatureSettings$10;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/FeatureSettings$9;

    invoke-direct {v2, p0, p3}, Lcom/android/settings/FeatureSettings$9;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 1247
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1249
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/FeatureSettings$11;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/FeatureSettings$11;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1270
    return-void
.end method

.method private turnOnEasyMode(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1079
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1080
    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "easy_mode_switch"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1082
    if-ne p1, v2, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1084
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1085
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1086
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1087
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1089
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_pause"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1090
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1091
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1092
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1093
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1095
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1096
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "air_view_master_onoff"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1100
    :goto_1
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1102
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1103
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1104
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1106
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "multi_window_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1117
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1080
    goto :goto_0

    .line 1098
    :cond_2
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "finger_air_view"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private turnOnOPMode(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1120
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1121
    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "op_mode_switch"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1122
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1124
    if-ne p1, v1, :cond_3

    .line 1125
    if-nez v0, :cond_0

    .line 1126
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f091353

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1129
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1130
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1131
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1133
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1134
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1136
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1137
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1139
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1140
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1142
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1143
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_master_onoff"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1147
    :goto_1
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1150
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1151
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1153
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1157
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 1121
    goto/16 :goto_0

    .line 1145
    :cond_2
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1155
    :cond_3
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "easy_mode_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method


# virtual methods
.method public makeAdaptDisplayLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 811
    .line 812
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 813
    const v0, 0x7f0b01d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 815
    new-instance v2, Lcom/android/settings/HelpItem;

    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v2, v3}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 816
    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 817
    const v3, 0x7f090cba

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeContentsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/FeatureSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 818
    const v3, 0x7f0203ec

    invoke-virtual {v2, v3}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 819
    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 821
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 823
    return-object v1
.end method

.method public makeAirMotionLayout()Landroid/view/View;
    .locals 22

    .prologue
    .line 439
    const/16 v16, 0x0

    .line 440
    .local v16, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f04009f

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 441
    const v17, 0x7f0b01d0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 443
    .local v4, helpContent:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 444
    .local v2, first:Lcom/android/settings/HelpItem;
    const v17, 0x7f090f1d

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 447
    .local v12, res:Landroid/content/res/Resources;
    const v17, 0x7f090f35

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 448
    .local v9, part1:Ljava/lang/String;
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 449
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 453
    :goto_0
    const v17, 0x7f0e0009

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 454
    .local v11, proper_distance:I
    const v17, 0x7f090f37

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 455
    .local v10, part3:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    .line 456
    .local v13, salesCode:Ljava/lang/String;
    const-string v17, "ATT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "SPR"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "VZW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "TMB"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "USC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "CRI"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "VMU"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "BST"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "XAS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "TFN"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "XAR"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "CSP"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 459
    :cond_0
    const v17, 0x7f0e000a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 460
    const v17, 0x7f090f38

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 462
    :cond_1
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 463
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 467
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f36

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 468
    .local v7, original_str:Ljava/lang/String;
    const-string v17, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 469
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090f35

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f37

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f36

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 473
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 474
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f36

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f09176e

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 476
    :cond_3
    const v17, 0x7f02001e

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v6

    .line 477
    .local v6, message_str:Landroid/text/SpannableString;
    if-eqz v6, :cond_b

    .line 478
    invoke-virtual {v2, v6}, Lcom/android/settings/HelpItem;->setContentText(Landroid/text/SpannableString;)V

    .line 482
    :goto_2
    const v17, 0x7f0204d1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 484
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 486
    new-instance v15, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 487
    .local v15, third:Lcom/android/settings/HelpItem;
    const v17, 0x7f090f24

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 488
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090f3e

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f30

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f76

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f7f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, mGuideContent:Ljava/lang/String;
    invoke-virtual {v15, v5}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 493
    const v17, 0x7f02001f

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 494
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 495
    invoke-virtual {v15}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 497
    new-instance v14, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 498
    .local v14, second:Lcom/android/settings/HelpItem;
    const v17, 0x7f090f26

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 500
    const/4 v8, 0x0

    .line 501
    .local v8, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "com.samsung.android.snote"

    const/16 v19, 0x5

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 503
    if-eqz v8, :cond_c

    .line 504
    const-string v17, "FeatureSettings"

    const-string v18, "S note is Installed."

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090f40

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f30

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f86

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f89

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f8c

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f8e

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f93

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 525
    :goto_3
    invoke-virtual {v14, v5}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 526
    const v17, 0x7f020020

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 527
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 528
    invoke-virtual {v14}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 531
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v17

    if-nez v17, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_4
    const-string v17, "jflterefreshspr"

    const-string v18, "ro.product.name"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 532
    :cond_5
    new-instance v3, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 533
    .local v3, fourth:Lcom/android/settings/HelpItem;
    const v17, 0x7f090f43

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 534
    const-string v17, "ATT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "SPR"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "VZW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "TMB"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "USC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 535
    :cond_6
    const v17, 0x7f090f45

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 538
    :cond_7
    const v17, 0x7f090f28

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 539
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 540
    const v17, 0x7f02001b

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 541
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 542
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 545
    .end local v3           #fourth:Lcom/android/settings/HelpItem;
    :cond_8
    return-object v16

    .line 451
    .end local v5           #mGuideContent:Ljava/lang/String;
    .end local v6           #message_str:Landroid/text/SpannableString;
    .end local v7           #original_str:Ljava/lang/String;
    .end local v8           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v10           #part3:Ljava/lang/String;
    .end local v11           #proper_distance:I
    .end local v13           #salesCode:Ljava/lang/String;
    .end local v14           #second:Lcom/android/settings/HelpItem;
    .end local v15           #third:Lcom/android/settings/HelpItem;
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ". "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 465
    .restart local v10       #part3:Ljava/lang/String;
    .restart local v11       #proper_distance:I
    .restart local v13       #salesCode:Ljava/lang/String;
    :cond_a
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 480
    .restart local v6       #message_str:Landroid/text/SpannableString;
    .restart local v7       #original_str:Ljava/lang/String;
    :cond_b
    const v17, 0x7f090f34

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    goto/16 :goto_2

    .line 513
    .restart local v5       #mGuideContent:Ljava/lang/String;
    .restart local v8       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v14       #second:Lcom/android/settings/HelpItem;
    .restart local v15       #third:Lcom/android/settings/HelpItem;
    :cond_c
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090f40

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f30

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f86

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f89

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f8c

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f8e

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090f91

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto/16 :goto_3

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 523
    const-string v17, "FeatureSettings"

    const-string v18, "S note is NOT Installed"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public makeAirViewLayout()Landroid/view/View;
    .locals 10

    .prologue
    .line 373
    const/4 v6, 0x0

    .line 374
    .local v6, view:Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04009f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 375
    const v7, 0x7f0b01d0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 387
    .local v1, helpContent:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v2, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 388
    .local v2, infoPreview:Lcom/android/settings/HelpItem;
    const v7, 0x7f090fe6

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 389
    const v7, 0x7f090fe7

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 390
    const v7, 0x7f02045b

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 392
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 396
    .local v0, barPreview:Lcom/android/settings/HelpItem;
    const v7, 0x7f090fef

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 397
    const v7, 0x7f090ff0

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 398
    const v7, 0x7f020458

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 400
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    new-instance v5, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 404
    .local v5, speedPreview:Lcom/android/settings/HelpItem;
    const v7, 0x7f090ff1

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 405
    const v7, 0x7f090ff2

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 406
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, salesCode:Ljava/lang/String;
    const-string v7, "ATT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SPR"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "VZW"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TMB"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "USC"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 409
    :cond_0
    const v7, 0x7f02045a

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 414
    :goto_0
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 418
    .local v3, magniPreview:Lcom/android/settings/HelpItem;
    const v7, 0x7f090fe2

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 419
    const v7, 0x7f090fe3

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 420
    const v7, 0x7f020457

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 422
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    return-object v6

    .line 411
    .end local v3           #magniPreview:Lcom/android/settings/HelpItem;
    :cond_1
    const v7, 0x7f020459

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_0
.end method

.method public makeContentsString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    sget-object v1, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    array-length v3, v1

    .line 829
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move v1, v0

    .line 833
    :goto_0
    if-ge v1, v3, :cond_1

    .line 835
    :try_start_0
    sget-object v5, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 836
    if-lez v0, :cond_0

    .line 837
    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    add-int/lit8 v0, v0, 0x1

    .line 833
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 840
    :catch_0
    move-exception v5

    .line 841
    const-string v5, "FeatureSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package not found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 844
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeEasyModeLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 764
    .line 765
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 766
    const v0, 0x7f0b01d0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 768
    const v1, 0x7f090031

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 770
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 773
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 774
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 775
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 776
    const v1, 0x7f020466

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 778
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 780
    return-object v2
.end method

.method public makeMultiWindowLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 848
    .line 849
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 850
    const v0, 0x7f0b01d0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 852
    const v1, 0x7f0905e6

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 854
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 855
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 856
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 857
    const v1, 0x7f020367

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 858
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 860
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 862
    new-instance v1, Lcom/android/settings/HelpItem;

    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v1, v3}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 863
    invoke-virtual {v1, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 864
    invoke-virtual {v1, v5}, Lcom/android/settings/HelpItem;->setContentVisibility(I)V

    .line 865
    const v3, 0x7f020368

    invoke-virtual {v1, v3}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 866
    invoke-virtual {v1, v5}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 868
    invoke-virtual {v1}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 870
    return-object v2
.end method

.method public makeOPModeLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 785
    .line 786
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 787
    const v0, 0x7f0b01d0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 789
    const v1, 0x7f091364

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 791
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 794
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 795
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 796
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 797
    const v1, 0x7f020467

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 798
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 800
    return-object v2
.end method

.method public makeSBeamLayout()Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 348
    const/4 v4, 0x0

    .line 349
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04009f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 350
    const v5, 0x7f0b01d0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 352
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v5, 0x7f09030b

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 354
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.snotebook"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 355
    .local v2, i:Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 356
    const v5, 0x7f09030c

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3           #s:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 359
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 360
    .local v0, first:Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v9}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 361
    invoke-virtual {v0, v9}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 362
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setImageMarginTop(I)V

    .line 363
    invoke-virtual {v0, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 364
    const v5, 0x7f050009

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 365
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 366
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    return-object v4
.end method

.method public makeSmartBlockLayout()Landroid/view/View;
    .locals 3

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400c2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 806
    return-object v0
.end method

.method public makeSmartPauseLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 684
    .line 685
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 686
    const v0, 0x7f0b01d0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 688
    const v1, 0x7f091141

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 690
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 691
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 692
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 693
    const v1, 0x7f020491

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 694
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 695
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f091142

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f091143

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f091144

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f091145

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 701
    iget-boolean v3, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    if-eqz v3, :cond_0

    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f09176e

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 704
    :cond_0
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 705
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 706
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 707
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 710
    return-object v2
.end method

.method public makeSmartScrollLayout()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 715
    .line 716
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 717
    const v0, 0x7f0b01d0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f091149

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f09114a

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f09114b

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f09114c

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f09114d

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f09114e

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 727
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 728
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 729
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 733
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 734
    const v1, 0x7f091158

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 735
    const v1, 0x7f09114f

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 736
    const v1, 0x7f020493

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 737
    invoke-virtual {v3, v6}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 738
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 740
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 741
    const v1, 0x7f091157

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 742
    const v1, 0x7f091150

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 743
    const v1, 0x7f020492

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 744
    invoke-virtual {v3, v6}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 745
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f091151

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f091152

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f091153

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f091154

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 751
    iget-boolean v3, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    if-eqz v3, :cond_0

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f09176e

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 754
    :cond_0
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 755
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 756
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 757
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 760
    return-object v2
.end method

.method public makeSmartStayLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 653
    const/4 v4, 0x0

    .line 654
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04009f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 655
    const v5, 0x7f0b01d0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 657
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v5, 0x7f09111d

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 659
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 660
    .local v0, first:Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 661
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 662
    const v5, 0x7f02048a

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 663
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 664
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 666
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f09111e

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f09111f

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 668
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f091120

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f091121

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 670
    iget-boolean v5, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    if-eqz v5, :cond_0

    .line 671
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f09176e

    invoke-virtual {p0, v6}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 673
    :cond_0
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 674
    .local v3, second:Lcom/android/settings/HelpItem;
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 675
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 676
    invoke-virtual {v3, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 679
    return-object v4
.end method

.method public makeVoiceCmdLayout()Landroid/view/View;
    .locals 18

    .prologue
    .line 562
    const/4 v14, 0x0

    .line 563
    .local v14, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v16, 0x7f04009f

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 564
    const v15, 0x7f0b01d0

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 565
    .local v9, helpContent:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 567
    .local v1, c:Landroid/content/Context;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "com.vlingo.midas"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 573
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a000f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, cmds:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09124a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 575
    .local v13, title:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f091255

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 576
    .local v11, templ:Ljava/lang/String;
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, contents:Ljava/lang/String;
    new-instance v7, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v7, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 579
    .local v7, first:Lcom/android/settings/HelpItem;
    invoke-virtual {v7, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v7, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 581
    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 582
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 583
    invoke-virtual {v7}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 586
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "com.coolots.chaton"

    invoke-static/range {v15 .. v16}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v15

    if-nez v15, :cond_1

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a000f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09124b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f091256

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 590
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 592
    new-instance v5, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 593
    .local v5, extra:Lcom/android/settings/HelpItem;
    invoke-virtual {v5, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v5, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 595
    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 596
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 597
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 602
    .end local v5           #extra:Lcom/android/settings/HelpItem;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0010

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09124d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f091257

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 605
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 607
    new-instance v10, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v10, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 608
    .local v10, second:Lcom/android/settings/HelpItem;
    invoke-virtual {v10, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v10, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 610
    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 611
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 612
    invoke-virtual {v10}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 615
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0011

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09124f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f091258

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 618
    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 620
    new-instance v12, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v12, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 621
    .local v12, third:Lcom/android/settings/HelpItem;
    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v12, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 623
    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 624
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 625
    invoke-virtual {v12}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 628
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0012

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f091251

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09125a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 631
    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x4

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const/16 v17, 0x5

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 633
    new-instance v8, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v8, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 634
    .local v8, fourth:Lcom/android/settings/HelpItem;
    invoke-virtual {v8, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v8, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 636
    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 637
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 638
    invoke-virtual {v8}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 641
    :cond_4
    new-instance v6, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v6, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 642
    .local v6, fifth:Lcom/android/settings/HelpItem;
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 643
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 644
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setContentVisibility(I)V

    .line 645
    const v15, 0x7f0205c0

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 646
    invoke-virtual {v6}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 648
    return-object v14

    .line 568
    .end local v2           #cmds:[Ljava/lang/String;
    .end local v3           #contents:Ljava/lang/String;
    .end local v6           #fifth:Lcom/android/settings/HelpItem;
    .end local v7           #first:Lcom/android/settings/HelpItem;
    .end local v8           #fourth:Lcom/android/settings/HelpItem;
    .end local v10           #second:Lcom/android/settings/HelpItem;
    .end local v11           #templ:Ljava/lang/String;
    .end local v12           #third:Lcom/android/settings/HelpItem;
    .end local v13           #title:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 570
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/FeatureSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/FeatureSettings$2;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 317
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "FeatureSettings"

    const-string v3, "talkback is enabled, so samsung features are off"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "option_flag"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, mDisableExclusiveOptionsFlag:I
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 140
    .end local v0           #mDisableExclusiveOptionsFlag:I
    :cond_0
    const v1, 0x7f07004d

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->addPreferencesFromResource(I)V

    .line 142
    const-string v1, "sbeam"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 143
    const-string v1, "air_view"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    .line 144
    const-string v1, "air_motion"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 145
    const-string v1, "voice_cmd"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    .line 146
    const-string v1, "smart_stay"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    .line 147
    const-string v1, "smart_pause"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    .line 148
    const-string v1, "smart_scroll"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 149
    const-string v1, "easy_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    .line 150
    const-string v1, "op_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    .line 151
    const-string v1, "smart_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    .line 152
    const-string v1, "adapt_display"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    .line 153
    const-string v1, "multi_window"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    .line 159
    return-void

    :cond_1
    move v1, v2

    .line 158
    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 289
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x104000a

    const/high16 v5, 0x104

    const v4, 0x7f09116d

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 923
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 924
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 925
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "sbeam_mode"

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1075
    :cond_1
    :goto_0
    return v1

    .line 926
    :cond_2
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 927
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 928
    const v0, 0x7f090fdc

    const v2, 0x7f090e0c

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto :goto_0

    .line 930
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 931
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_view_master_onoff"

    if-eqz v3, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 936
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 937
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 938
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 933
    :cond_5
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view"

    if-eqz v3, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 940
    :cond_7
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 941
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 942
    const v0, 0x7f090f18

    const v2, 0x7f090f1c

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto :goto_0

    .line 944
    :cond_8
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_engine"

    if-eqz v3, :cond_a

    move v2, v1

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 945
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 946
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 947
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 949
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_scroll"

    if-eqz v3, :cond_b

    move v2, v1

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 950
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 952
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 954
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn"

    if-eqz v3, :cond_c

    move v2, v1

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 955
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 957
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 959
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_item_move"

    if-eqz v3, :cond_9

    move v0, v1

    :cond_9
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 960
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 961
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 962
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    move v2, v0

    .line 944
    goto :goto_2

    :cond_b
    move v2, v0

    .line 949
    goto :goto_3

    :cond_c
    move v2, v0

    .line 954
    goto :goto_4

    .line 971
    :cond_d
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 972
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "voice_input_control"

    if-eqz v3, :cond_e

    move v0, v1

    :cond_e
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 973
    :cond_f
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 974
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 975
    const v0, 0x7f091119

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 977
    :cond_10
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    if-eqz v3, :cond_11

    move v0, v1

    :cond_11
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 979
    :cond_12
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 980
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 981
    const v0, 0x7f091126

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 983
    :cond_13
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_pause"

    if-eqz v3, :cond_14

    move v0, v1

    :cond_14
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 985
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 986
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 987
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 989
    :cond_15
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 990
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 991
    const v0, 0x7f091128

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 993
    :cond_16
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    if-eqz v3, :cond_17

    move v0, v1

    :cond_17
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 995
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 996
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 997
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 999
    :cond_18
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1000
    if-eqz v3, :cond_19

    .line 1002
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1003
    const v2, 0x7f091359

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1004
    const v2, 0x7f090031

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1005
    new-instance v2, Lcom/android/settings/FeatureSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$4;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1011
    new-instance v2, Lcom/android/settings/FeatureSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$5;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1017
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1019
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/settings/FeatureSettings;->turnOnEasyMode(Z)V

    goto/16 :goto_0

    .line 1022
    :cond_1a
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1023
    if-eqz v3, :cond_1b

    .line 1025
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1026
    const v2, 0x7f091361

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1027
    const v2, 0x7f091364

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1028
    new-instance v2, Lcom/android/settings/FeatureSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$6;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1034
    new-instance v2, Lcom/android/settings/FeatureSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$7;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1040
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1042
    :cond_1b
    invoke-direct {p0, v0}, Lcom/android/settings/FeatureSettings;->turnOnOPMode(Z)V

    goto/16 :goto_0

    .line 1045
    :cond_1c
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1046
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_spam_smart"

    if-eqz v3, :cond_1d

    move v0, v1

    :cond_1d
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1048
    :cond_1e
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1049
    if-eqz v3, :cond_1f

    .line 1051
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 1055
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1057
    :cond_1f
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_mode_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 1058
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_mode_automatic_setting"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1061
    :cond_20
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1062
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1063
    const v0, 0x7f090e09

    const v2, 0x7f090e0a

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1065
    :cond_21
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    if-eqz v3, :cond_22

    move v2, v1

    :goto_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1066
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1067
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1068
    new-instance v2, Lcom/android/settings/FeatureSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$8;-><init>(Lcom/android/settings/FeatureSettings;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_22
    move v2, v0

    .line 1065
    goto :goto_5
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSBeamLayout()Landroid/view/View;

    move-result-object v0

    .line 878
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090306

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    .line 917
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 880
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAirViewLayout()Landroid/view/View;

    move-result-object v0

    .line 881
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e0d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 883
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAirMotionLayout()Landroid/view/View;

    move-result-object v0

    .line 884
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090f18

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 885
    :cond_3
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 886
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeVoiceCmdLayout()Landroid/view/View;

    move-result-object v0

    .line 887
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 888
    :cond_4
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 889
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartStayLayout()Landroid/view/View;

    move-result-object v0

    .line 890
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_5
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 892
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartPauseLayout()Landroid/view/View;

    move-result-object v0

    .line 893
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 894
    :cond_6
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 895
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartScrollLayout()Landroid/view/View;

    move-result-object v0

    .line 896
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 897
    :cond_7
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 898
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeEasyModeLayout()Landroid/view/View;

    move-result-object v0

    .line 899
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091348

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 901
    :cond_8
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 902
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartBlockLayout()Landroid/view/View;

    move-result-object v0

    .line 903
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09112b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 905
    :cond_9
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 906
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAdaptDisplayLayout()Landroid/view/View;

    move-result-object v0

    .line 907
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090cb7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 909
    :cond_a
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 910
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeOPModeLayout()Landroid/view/View;

    move-result-object v0

    .line 911
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09135f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 913
    :cond_b
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeMultiWindowLayout()Landroid/view/View;

    move-result-object v0

    .line 915
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 280
    invoke-direct {p0}, Lcom/android/settings/FeatureSettings;->initUI()V

    .line 281
    return-void
.end method

.method public showGuideDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "layout"
    .parameter "title"

    .prologue
    const/4 v2, 0x0

    .line 321
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 323
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 325
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 330
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 333
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 334
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 336
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FeatureSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$3;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 342
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 343
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 344
    return-void
.end method
