.class public Lcom/android/settings/SoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String;

.field private static final PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

.field public static final REVERB_URI:Landroid/net/Uri;

.field public static mPenNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPenNotificationListValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static myContext:Landroid/content/Context;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioOutput:Landroid/preference/ListPreference;

.field private mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

.field private mAutoHapticDialog:Landroid/app/AlertDialog;

.field mAutoHapticNoPopup:Z

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

.field private mDockAudioSettings:Landroid/preference/Preference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mFolderSounds:Landroid/preference/CheckBoxPreference;

.field private mGSMRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mIsEmerMode:Z

.field private mLoadSoundEffectRunnable:Ljava/lang/Runnable;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mMySound:Landroid/preference/PreferenceScreen;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mPenDetachSoundPref:Landroid/preference/PreferenceScreen;

.field private mPhoneProfile:Landroid/preference/Preference;

.field private mPhoneVibration:Landroid/preference/Preference;

.field private mProfileMode:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtone2Preference:Landroid/preference/Preference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mRingtonePreference_DS:Landroid/preference/Preference;

.field private mSamsungKeyboardCategory:Landroid/preference/PreferenceGroup;

.field private mSipFeedbackSound:Landroid/preference/CheckBoxPreference;

.field private mSipFeedbackVibration:Landroid/preference/CheckBoxPreference;

.field private mSoundCall:Landroid/preference/PreferenceScreen;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundEmail:Landroid/preference/PreferenceScreen;

.field private mSoundMessage:Landroid/preference/PreferenceScreen;

.field private mSoundMode:Landroid/preference/ListPreference;

.field private mSoundSPlanner:Landroid/preference/PreferenceScreen;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVolume:Lcom/android/settings/RingerVolumePreference;

.field private offset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/SoundSettings;->mPenNotificationList:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/SoundSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SoundSettings;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ringtone2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .line 245
    const-string v0, "content://com.android.settings.reverb.params"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SoundSettings;->REVERB_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 229
    iput-boolean v0, p0, Lcom/android/settings/SoundSettings;->mIsEmerMode:Z

    .line 248
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 249
    iput-boolean v0, p0, Lcom/android/settings/SoundSettings;->mAutoHapticNoPopup:Z

    .line 253
    iput v0, p0, Lcom/android/settings/SoundSettings;->mDirect:I

    .line 254
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mDirectUri:Landroid/net/Uri;

    .line 272
    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 296
    new-instance v0, Lcom/android/settings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$2;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/SoundSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/SoundSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/SoundSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SoundSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mLoadSoundEffectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SoundSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SoundSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/SoundSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioOutput:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/SoundSettings;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->setSystemSound()V

    return-void
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1316
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1317
    const v1, 0x7f09058b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1318
    const v1, 0x7f09058c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1319
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 950
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 943
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 945
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 947
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 941
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1264
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1265
    const-string v0, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1267
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1270
    :goto_0
    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    .line 1272
    if-eqz v3, :cond_6

    .line 1275
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    :goto_1
    if-eqz v0, :cond_2

    .line 1281
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1305
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 1267
    goto :goto_0

    .line 1283
    :cond_2
    const/4 v0, 0x3

    if-ne v3, v0, :cond_5

    .line 1284
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1285
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1286
    const-string v0, "dock_audio_media_enabled"

    invoke-static {v3, v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 1288
    const-string v0, "dock_audio_media_enabled"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1291
    :cond_3
    const-string v0, "dock_audio_media_enabled"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    .line 1293
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1294
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    const-string v4, "dock_audio_media_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    .line 1298
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 1302
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 1276
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private initDockSettings()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1246
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1248
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->needsDockSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1249
    const-string v0, "dock_sounds"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 1250
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1251
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v0, "dock_sounds_enabled"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1253
    const-string v0, "dock_audio"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    .line 1254
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1261
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1251
    goto :goto_0

    .line 1256
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "dock_category"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1257
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "dock_audio"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1258
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "dock_sounds"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1259
    const-string v0, "dock_audio_media_enabled"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 1041
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1042
    return-void
.end method

.method private makePenNotificationList()V
    .locals 3

    .prologue
    .line 1610
    sget-object v0, Lcom/android/settings/SoundSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1611
    sget-object v0, Lcom/android/settings/SoundSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0911a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    sget-object v0, Lcom/android/settings/SoundSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0911a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    sget-object v0, Lcom/android/settings/SoundSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0911a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    sget-object v0, Lcom/android/settings/SoundSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0911a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    sget-object v0, Lcom/android/settings/SoundSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1620
    sget-object v0, Lcom/android/settings/SoundSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/SoundSettings;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1621
    sget-object v0, Lcom/android/settings/SoundSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    sget-object v0, Lcom/android/settings/SoundSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti2.ogg,/system/media/audio/ui/Pen_det_noti2.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    sget-object v0, Lcom/android/settings/SoundSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti3.ogg,/system/media/audio/ui/Pen_det_noti3.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1624
    return-void
.end method

.method private needsDockSettings()Z
    .locals 1

    .prologue
    .line 1242
    const/4 v0, 0x0

    return v0
.end method

.method private setSystemSound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 995
    const-string v0, "off"

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 996
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 997
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 998
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 999
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mFolderSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1006
    :goto_0
    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1002
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1003
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1004
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mFolderSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private startRingtoneSetting()V
    .locals 4

    .prologue
    .line 921
    const-string v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 922
    const-string v1, "gsm.sim.state2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 923
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 924
    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    const-string v3, "ABSENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    const-string v0, "sound title"

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 928
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings.RingtoneSettingTabActivity"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    :goto_0
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 938
    return-void

    .line 929
    :cond_0
    const-string v0, "1"

    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 931
    :cond_1
    const-string v0, "sim Id"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 934
    :cond_2
    const-string v0, "sim Id"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 935
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateDetachNotiPref()V
    .locals 3

    .prologue
    .line 1627
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_detachment_notification"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1629
    sget-object v1, Lcom/android/settings/SoundSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1630
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1631
    const/4 v0, 0x1

    .line 1632
    const-string v1, "SoundSettings"

    const-string v2, "updateDetachNotiPref() file exist error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mPenDetachSoundPref:Landroid/preference/PreferenceScreen;

    sget-object v2, Lcom/android/settings/SoundSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1635
    return-void
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1507
    const-string v1, "SoundSettings"

    const-string v2, "UpdateMediaDB"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1509
    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1510
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1511
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1512
    if-ltz v3, :cond_0

    .line 1513
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1518
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1520
    const-string v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMediaDB - extension("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), mimeType("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    if-nez v3, :cond_2

    const-string v4, "3ga"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1525
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1551
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1552
    const-string v3, "_data"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    const-string v3, "title"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const-string v3, "mime_type"

    const-string v4, "audio/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    const-string v3, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1557
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1558
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1559
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1560
    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaDB - tempUri("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), newUri("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :goto_0
    return-object v0

    .line 1526
    :cond_2
    :try_start_1
    const-string v1, "audio"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1527
    const-string v1, "SoundSettings"

    const-string v2, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1530
    :catch_0
    move-exception v1

    .line 1531
    const-string v2, "SoundSettings"

    const-string v3, "updateMediaDB - exception is Occured - return null"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateRingtoneData(I)V
    .locals 3
    .parameter "ringtoneType"

    .prologue
    const/4 v1, 0x1

    .line 1566
    if-ne p1, v1, :cond_1

    .line 1567
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v1, v0, v1}, Lcom/android/settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1572
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1573
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1009
    if-nez p2, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1011
    if-eqz v0, :cond_0

    .line 1013
    const v2, 0x1040697

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1015
    :try_start_0
    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1020
    :goto_1
    if-nez v1, :cond_2

    .line 1021
    const v1, 0x1040695

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1037
    :goto_2
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1016
    :catch_0
    move-exception v2

    .line 1017
    const-string v3, "SoundSettings"

    const-string v4, "No data for ringtoneUri"

    invoke-static {v3, v4, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1025
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1027
    if-eqz v1, :cond_4

    .line 1028
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1029
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 1031
    :goto_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1033
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v6

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_3

    :cond_4
    move-object v0, v6

    goto :goto_2
.end method

.method private updateState(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 955
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    .line 958
    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CMCC"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 961
    :cond_2
    iget v0, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    if-nez v0, :cond_4

    .line 962
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v1, 0x7f090d6a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 979
    :goto_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 980
    const-string v1, "profile_silent"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 981
    const-string v1, "content://com.android.settings/profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 982
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 984
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateDetachNotiPref()V

    goto :goto_0

    .line 963
    :cond_4
    iget v0, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    if-ne v0, v2, :cond_5

    .line 964
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v1, 0x7f0910d4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 965
    :cond_5
    iget v0, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 966
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v1, 0x7f0910d5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 967
    :cond_6
    iget v0, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 968
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v1, 0x7f0910d6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 969
    :cond_7
    iget v0, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 970
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v1, 0x7f0910d7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 972
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 973
    const-string v1, "content://com.android.settings/profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "profile_name"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 974
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 975
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const-string v2, "profile_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 976
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1237
    const v0, 0x7f090c11

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f090581

    const/4 v4, 0x0

    .line 1425
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1426
    :cond_0
    const-string v0, "SoundSettings"

    const-string v1, "handleRingtonePicked() : Not changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_1
    :goto_0
    const-string v0, "SoundSettings"

    const-string v1, "updateRingtoneData(ringtoneType)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    invoke-direct {p0, p2}, Lcom/android/settings/SoundSettings;->updateRingtoneData(I)V

    .line 1468
    :goto_1
    return-void

    .line 1435
    :cond_2
    const-string v0, "SoundSettings"

    const-string v1, "handleRingtonePicked updating media DB"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1437
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1439
    if-nez p1, :cond_3

    .line 1440
    const-string v0, "SoundSettings"

    const-string v1, "handleRingtonePicked - pickedUri is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1446
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1447
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1450
    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRingtonePicked - pickedUri("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), ringtoneType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    :goto_2
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->offset:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1458
    const/16 v0, 0x8

    if-ne p2, v0, :cond_4

    .line 1459
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recommendation_time_2"

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->offset:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1452
    :catch_0
    move-exception v0

    .line 1453
    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRingtonePicked(Exception): pickedUri is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1462
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recommendation_time"

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->offset:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1379
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1381
    packed-switch p1, :pswitch_data_0

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1383
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 1384
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1385
    const-string v1, "highlight_offset"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->offset:Ljava/lang/String;

    .line 1386
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->offset:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?highlight_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->offset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1388
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1389
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1391
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1396
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 1397
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1398
    const-string v1, "highlight_offset"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->offset:Ljava/lang/String;

    .line 1399
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->offset:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?highlight_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->offset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1401
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1404
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 321
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 323
    .local v17, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    .line 325
    .local v3, activePhoneType:I
    const-string v21, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/media/AudioManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 327
    const v21, 0x7f0700c3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 329
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 331
    const-string v21, "sound_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/ListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundMode:Landroid/preference/ListPreference;

    .line 333
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundMode:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundMode:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 338
    const-string v21, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/android/settings/DefaultRingtonePreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 342
    :goto_0
    const-string v21, "audio_output"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/ListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mAudioOutput:Landroid/preference/ListPreference;

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mAudioOutput:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/android/settings/SoundSettings;)V

    .line 358
    const-string v21, "ringtone2"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/android/settings/DefaultRingtonePreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mGSMRingtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mGSMRingtone:Lcom/android/settings/DefaultRingtonePreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/android/settings/SoundSettings;)V

    .line 360
    const-string v21, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/android/settings/RingerVolumePreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mVolume:Lcom/android/settings/RingerVolumePreference;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVolume:Lcom/android/settings/RingerVolumePreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/RingerVolumePreference;->setObject(Lcom/android/settings/SoundSettings;)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 364
    .local v4, activity:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mDirectUri:Landroid/net/Uri;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDirectUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDirectUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/SoundSettings;->mDirect:I

    .line 367
    const-string v21, "Direct"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mDirect : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SoundSettings;->mDirect:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const-string v22, "com.android.settings"

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v21

    sput-object v21, Lcom/android/settings/SoundSettings;->myContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_1
    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v0, v3, :cond_1

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    const-string v22, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 395
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c0001

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-nez v21, :cond_2

    .line 396
    const-string v21, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 399
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1110057

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    const-string v22, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    :cond_3
    const-string v21, "gps_notification_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 410
    const-string v21, "vibrate_when_ringing"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const-string v21, "vibrate_when_ringing"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_10

    const/16 v21, 0x1

    :goto_2
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 415
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v21

    const-string v22, "vibrate"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v21

    const-string v22, "mute"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 416
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 420
    :goto_3
    const-string v21, "dtmf_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const-string v21, "dtmf_tone"

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_12

    const/16 v21, 0x1

    :goto_4
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 424
    const-string v21, "sound_effects"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const-string v21, "sound_effects_enabled"

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_13

    const/16 v21, 0x1

    :goto_5
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 428
    const-string v21, "haptic_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const-string v21, "haptic_feedback_enabled"

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_14

    const/16 v21, 0x1

    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 432
    const-string v21, "haptic_feedback_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedbackSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v22, v0

    const-string v21, "haptic_feedback_enabled"

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_15

    const/16 v21, 0x1

    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 442
    const-string v21, "lock_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const-string v21, "lockscreen_sounds_enabled"

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_16

    const/16 v21, 0x1

    :goto_8
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 447
    const-string v21, "folder_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mFolderSounds:Landroid/preference/CheckBoxPreference;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mFolderSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mFolderSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    const-string v21, "folder_sounds_enabled"

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_17

    const/16 v21, 0x1

    :goto_9
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v21

    if-nez v21, :cond_18

    .line 452
    :cond_5
    const-string v21, "folder_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 458
    :goto_a
    const-string v21, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 460
    const-string v21, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 461
    const-string v21, "ds_ring_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 462
    const-string v21, "ringtone2"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    .line 464
    const-string v21, "autohaptic_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 467
    const-string v21, "phone_vibration"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    .line 469
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    if-eqz v21, :cond_6

    .line 470
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 476
    :cond_6
    const-string v21, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Vibrator;

    .line 477
    .local v20, vibrator:Landroid/os/Vibrator;
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v21

    if-nez v21, :cond_19

    .line 478
    :cond_7
    const-string v21, "vibrate_when_ringing"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 479
    const-string v21, "haptic_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 480
    const-string v21, "haptic_feedback_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    const-string v22, "vibration_feedback_intensity"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 483
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 506
    :goto_b
    const-string v21, "sound_call"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundCall:Landroid/preference/PreferenceScreen;

    .line 507
    const-string v21, "sound_message"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundMessage:Landroid/preference/PreferenceScreen;

    .line 508
    const-string v21, "sound_email"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundEmail:Landroid/preference/PreferenceScreen;

    .line 509
    const-string v21, "sound_splanner"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundSPlanner:Landroid/preference/PreferenceScreen;

    .line 510
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    .line 511
    .local v19, salesCode:Ljava/lang/String;
    const-string v21, "ATT"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "SPR"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "VZW"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "TMB"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "USC"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "VMU"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "BST"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "XAS"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "CRI"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "GLW"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 513
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSPlanner:Landroid/preference/PreferenceScreen;

    move-object/from16 v21, v0

    const v22, 0x7f090fbb

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setTitle(I)V

    .line 516
    :cond_9
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_1c

    .line 517
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 518
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    const-string v22, "sound_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 519
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundCall:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 520
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundMessage:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 521
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundEmail:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 522
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSPlanner:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 531
    :cond_a
    :goto_c
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v0, v3, :cond_b

    .line 532
    const-string v21, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 534
    .local v9, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v21, "emergency_tone"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 563
    .end local v9           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 564
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 567
    const-string v21, "sound_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v21, v0

    const-string v22, "phone_profile"

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    .line 570
    const-string v21, "CTC"

    const-string v22, "ro.csc.sales_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    const-string v21, "CMCC"

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    const-string v21, "CHM"

    const-string v22, "ro.csc.sales_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 576
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v21, v0

    const-string v22, "musicfx"

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 577
    new-instance v10, Landroid/content/Intent;

    const-string v21, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v10, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 579
    .local v13, p:Landroid/content/pm/PackageManager;
    const/16 v21, 0x200

    move/from16 v0, v21

    invoke-virtual {v13, v10, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 580
    .local v18, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_d

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 589
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_1f

    .line 590
    sget-object v5, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_d
    if-ge v11, v12, :cond_1e

    aget-object v15, v5, v11

    .line 591
    .local v15, prefKey:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 592
    .local v14, pref:Landroid/preference/Preference;
    if-eqz v14, :cond_e

    .line 593
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 590
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 340
    .end local v4           #activity:Landroid/content/Intent;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i:Landroid/content/Intent;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #p:Landroid/content/pm/PackageManager;
    .end local v14           #pref:Landroid/preference/Preference;
    .end local v15           #prefKey:Ljava/lang/String;
    .end local v18           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19           #salesCode:Ljava/lang/String;
    .end local v20           #vibrator:Landroid/os/Vibrator;
    :cond_f
    const-string v21, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/android/settings/DefaultRingtonePreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    goto/16 :goto_0

    .line 375
    .restart local v4       #activity:Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 376
    .local v8, e:Ljava/lang/Exception;
    const-string v21, "SoundSettings"

    const-string v22, "GPS sound settings: error getting activity of create package context"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 412
    .end local v8           #e:Ljava/lang/Exception;
    :cond_10
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 418
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 422
    :cond_12
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 426
    :cond_13
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 430
    :cond_14
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 435
    :cond_15
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 444
    :cond_16
    const/16 v21, 0x0

    goto/16 :goto_8

    .line 449
    :cond_17
    const/16 v21, 0x0

    goto/16 :goto_9

    .line 454
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const v22, 0x7f091711

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setTitle(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const v22, 0x7f091712

    invoke-virtual/range {v21 .. v22}, Landroid/preference/TwoStatePreference;->setSummaryOn(I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const v22, 0x7f091712

    invoke-virtual/range {v21 .. v22}, Landroid/preference/TwoStatePreference;->setSummaryOff(I)V

    goto/16 :goto_a

    .line 492
    .restart local v20       #vibrator:Landroid/os/Vibrator;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_1a

    .line 493
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 495
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 502
    :goto_e
    const-string v21, "haptic_feedback_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 496
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_e

    .line 525
    .restart local v19       #salesCode:Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_1d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    if-eqz v21, :cond_a

    .line 526
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundCall:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 527
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundMessage:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 596
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v10       #i:Landroid/content/Intent;
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #p:Landroid/content/pm/PackageManager;
    .restart local v18       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1e
    const-string v21, "category_calls_and_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 597
    .local v6, callsAndNotificationCategory:Landroid/preference/PreferenceCategory;
    const v21, 0x7f090a1a

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 600
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #callsAndNotificationCategory:Landroid/preference/PreferenceCategory;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :cond_1f
    new-instance v21, Lcom/android/settings/SoundSettings$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$3;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 618
    new-instance v21, Lcom/android/settings/SoundSettings$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$4;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mLoadSoundEffectRunnable:Ljava/lang/Runnable;

    .line 625
    new-instance v21, Lcom/android/settings/SoundSettings$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$5;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

    .line 634
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 635
    .local v7, download_contents:Ljava/lang/String;
    const-string v21, "Ringtone"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_20

    .line 636
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    const-string v22, "download_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 639
    :cond_20
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v21

    if-eqz v21, :cond_21

    .line 641
    const-string v21, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/ListPreference;

    .line 642
    .local v16, removable:Landroid/preference/ListPreference;
    if-eqz v16, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 645
    .end local v16           #removable:Landroid/preference/ListPreference;
    :cond_21
    const-string v21, "my_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mMySound:Landroid/preference/PreferenceScreen;

    .line 665
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_23

    .line 666
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 669
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->initDockSettings()V

    .line 671
    const-string v21, "pen_deatachment_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mPenDetachSoundPref:Landroid/preference/PreferenceScreen;

    .line 672
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v21

    if-eqz v21, :cond_24

    .line 677
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->makePenNotificationList()V

    .line 684
    :goto_f
    const-string v21, "sip_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSamsungKeyboardCategory:Landroid/preference/PreferenceGroup;

    .line 685
    const-string v21, "sip_feedback_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSipFeedbackSound:Landroid/preference/CheckBoxPreference;

    .line 686
    const-string v21, "sip_feedback_vibration"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSipFeedbackVibration:Landroid/preference/CheckBoxPreference;

    .line 731
    return-void

    .line 680
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPenDetachSoundPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_f
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 1309
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1310
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 1312
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1581
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1590
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    const/4 v0, 0x1

    const v1, 0x7f091291

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201c8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1595
    :cond_0
    return-void
.end method

.method public onMusicPickerChosen(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1411
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1412
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1414
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1415
    const-string v1, "enable_ringtone_recommender"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1416
    if-ne p1, v2, :cond_0

    .line 1417
    invoke-virtual {p0, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1422
    :goto_0
    return-void

    .line 1420
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 1599
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1606
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1601
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1602
    const-string v1, "helphub:section"

    const-string v2, "ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1603
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1604
    const/4 v0, 0x1

    goto :goto_0

    .line 1599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 910
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 912
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 914
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 918
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1175
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 1176
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const-string v3, "emergency_tone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1179
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1180
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_tone"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :cond_0
    :goto_0
    return v1

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    const-string v2, "SoundSettings"

    const-string v3, "could not persist emergency tone setting"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1185
    :cond_1
    const-string v3, "sound_mode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1186
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1187
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1188
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1190
    :cond_2
    const-string v3, "audio_output"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1191
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1192
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1193
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hdmi_audio_output"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1194
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1196
    :cond_4
    const-string v3, "autohaptic_settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1197
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1199
    if-eqz v2, :cond_5

    .line 1201
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_reverb"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1202
    if-eqz v3, :cond_5

    .line 1203
    const-string v4, "DoNotShowDialog"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1204
    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/settings/SoundSettings;->mAutoHapticNoPopup:Z

    if-nez v4, :cond_5

    .line 1205
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->showGuideDialog()V

    .line 1207
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1208
    const-string v4, "com.ensight.android.radioalarm"

    const-string v5, "disabled"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1209
    const-string v4, "com.google.android.apps.books"

    const-string v5, "disabled"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1210
    const-string v4, "com.samsung.SMT"

    const-string v5, "disabled"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1211
    const-string v4, "com.google.android.tts"

    const-string v5, "disabled"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1212
    const-string v4, "com.sec.android.app.dmb"

    const-string v5, "disabled"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1213
    const-string v4, "com.ktmusic.geniemusic"

    const-string v5, "disabled"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1214
    const-string v4, "kt.navi"

    const-string v5, "disabled"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1215
    const-string v4, "com.kt.otv"

    const-string v5, "disabled"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1216
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1220
    :cond_5
    iput-boolean v0, p0, Lcom/android/settings/SoundSettings;->mAutoHapticNoPopup:Z

    .line 1221
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-ne v2, v1, :cond_6

    move v0, v1

    :cond_6
    const/4 v2, 0x6

    const/4 v4, -0x1

    invoke-static {v3, v0, v2, v4}, Lcom/android/settings/autohaptic/AutoHapticSettings;->storeReverbSettings(Landroid/content/ContentResolver;III)V

    goto/16 :goto_0

    .line 1222
    :cond_7
    const-string v3, "haptic_feedback_switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1223
    check-cast p2, Ljava/lang/Boolean;

    .line 1224
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1225
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1227
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0xc8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1047
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_1

    .line 1049
    sget v0, Lcom/android/settings/SoundSettings;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1050
    sget v0, Lcom/android/settings/SoundSettings;->mSettingValue:I

    if-ne v0, v2, :cond_4

    move v1, v2

    :goto_0
    move-object v0, p2

    .line 1051
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1052
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1053
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 1060
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_when_ringing"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1171
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :cond_3
    return v3

    :cond_4
    move v1, v3

    .line 1050
    goto :goto_0

    :cond_5
    move v2, v3

    .line 1060
    goto :goto_1

    .line 1062
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 1063
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3

    .line 1066
    :cond_8
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 1071
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_noti_sound_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_4
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_4

    .line 1073
    :cond_a
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_f

    .line 1074
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1075
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1076
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1089
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    :goto_6
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1079
    :cond_b
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1080
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 1083
    :cond_c
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1084
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_5

    .line 1086
    :cond_d
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    goto :goto_5

    :cond_e
    move v2, v3

    .line 1089
    goto :goto_6

    .line 1092
    :cond_f
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_11

    .line 1093
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_7
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_10
    move v2, v3

    goto :goto_7

    .line 1096
    :cond_11
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_13

    .line 1097
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_8
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_2

    :cond_12
    move v2, v3

    goto :goto_8

    .line 1099
    :cond_13
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mFolderSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_15

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "folder_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mFolderSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_9
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_14
    move v2, v3

    goto :goto_9

    .line 1102
    :cond_15
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-eq p2, v0, :cond_3

    .line 1105
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1b

    .line 1106
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1110
    :goto_a
    if-nez v0, :cond_17

    .line 1111
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_2

    :cond_16
    move v0, v3

    .line 1106
    goto :goto_a

    .line 1113
    :cond_17
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_18

    move v0, v2

    .line 1115
    :goto_b
    if-eqz v0, :cond_19

    .line 1116
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1117
    const-string v1, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1118
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/bluetooth/DockEventReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1119
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_18
    move v0, v3

    .line 1113
    goto :goto_b

    .line 1121
    :cond_19
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1122
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1123
    const-string v4, "checked"

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_1a

    :goto_c
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1126
    invoke-super {p0, v0, v0}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_1a
    move v2, v3

    .line 1123
    goto :goto_c

    .line 1129
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1d

    .line 1130
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1c

    :goto_d
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1c
    move v2, v3

    goto :goto_d

    .line 1132
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1f

    .line 1133
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_audio_media_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1e

    :goto_e
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1e
    move v2, v3

    goto :goto_e

    .line 1135
    :cond_1f
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    if-ne p2, v0, :cond_20

    .line 1136
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->startRingtoneSetting()V

    goto/16 :goto_2

    .line 1137
    :cond_20
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mMySound:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_21

    .line 1138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.hearingadjust.launch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1140
    :cond_21
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackSound:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_23

    .line 1141
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sip_key_feedback_sound"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_22

    :goto_f
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_22
    move v2, v3

    goto :goto_f

    .line 1143
    :cond_23
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackVibration:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_25

    .line 1144
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sip_key_feedback_vibration"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_24

    :goto_10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_24
    move v2, v3

    goto :goto_10

    .line 1146
    :cond_25
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundSPlanner:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_27

    .line 1147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1148
    const-string v1, "com.sec.android.intent.calendar.soundsettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1151
    const-string v1, ":android:show_fragment"

    const-string v2, "com.android.calendar.preference.AllCalendarPreferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    :goto_11
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1153
    :cond_26
    const-string v1, ":android:show_fragment"

    const-string v2, "com.android.calendar.preference.EventNotificationPreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_11

    .line 1156
    :cond_27
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundEmail:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_28

    .line 1157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1158
    const-string v1, "com.android.email.setup.NOTISETUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1160
    :cond_28
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundMessage:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_29

    .line 1161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1162
    const-string v1, "com.android.mms.setting.SoundSetting"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1164
    :cond_29
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_2

    .line 1165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1166
    const-string v1, "com.android.phone.CALL_SOUND_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 736
    .line 737
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 738
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 739
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    move v1, v0

    .line 742
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 744
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "vibrate_when_ringing"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 745
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "vibrate_when_ringing"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v3

    :goto_1
    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 747
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "dtmf_tone"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 748
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "dtmf_tone"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 751
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 755
    iget v0, p0, Lcom/android/settings/SoundSettings;->mDirect:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_10

    .line 756
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVolume:Lcom/android/settings/RingerVolumePreference;

    invoke-virtual {v0}, Lcom/android/settings/RingerVolumePreference;->directVolume()V

    .line 767
    :cond_3
    :goto_3
    iput v2, p0, Lcom/android/settings/SoundSettings;->mDirect:I

    .line 770
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 771
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 774
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "hdmi_audio_output"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 775
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 778
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 779
    const-string v4, "audioParam;outDevice"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    if-eqz v0, :cond_1b

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v0, v2

    .line 786
    :goto_4
    const-string v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHDMI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    if-eqz v0, :cond_13

    .line 789
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 790
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 791
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 796
    :goto_5
    const-string v0, "CTC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CMCC"

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CHM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 799
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sound_profile_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    .line 802
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    .line 805
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->lookupRingtoneNames()V

    .line 813
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->updateDeviceVibrationName()V

    .line 816
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "com.android.settings_reverb"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 817
    if-eqz v0, :cond_7

    .line 818
    const-string v4, "enable"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 819
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 820
    if-eqz v0, :cond_14

    .line 821
    iput-boolean v3, p0, Lcom/android/settings/SoundSettings;->mAutoHapticNoPopup:Z

    .line 826
    :cond_7
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 827
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->setSystemSound()V

    .line 829
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_8

    .line 830
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 831
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 832
    new-instance v4, Lcom/android/settings/SoundSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/SoundSettings$6;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 844
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 869
    :cond_8
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "default_input_method"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 870
    const-string v4, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 871
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSamsungKeyboardCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_9

    .line 872
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSamsungKeyboardCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 874
    :cond_9
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackSound:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    .line 875
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 876
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "sip_key_feedback_sound"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_16

    move v0, v3

    :goto_8
    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 878
    :cond_a
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackVibration:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    .line 879
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 880
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sip_key_feedback_vibration"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_17

    :goto_9
    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 901
    :cond_b
    :goto_a
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 902
    :cond_c
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 903
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 906
    :cond_d
    return-void

    :cond_e
    move v0, v2

    .line 745
    goto/16 :goto_1

    :cond_f
    move v0, v2

    .line 748
    goto/16 :goto_2

    .line 758
    :cond_10
    iget v0, p0, Lcom/android/settings/SoundSettings;->mDirect:I

    if-ne v0, v3, :cond_3

    .line 764
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/DefaultRingtonePreference;->directRingtone()V

    goto/16 :goto_3

    .line 784
    :cond_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_12

    move v0, v2

    goto/16 :goto_4

    :cond_12
    move v0, v3

    goto/16 :goto_4

    .line 793
    :cond_13
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 823
    :cond_14
    iput-boolean v2, p0, Lcom/android/settings/SoundSettings;->mAutoHapticNoPopup:Z

    goto/16 :goto_6

    .line 848
    :cond_15
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_8

    .line 849
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 850
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    new-instance v4, Lcom/android/settings/SoundSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/SoundSettings$7;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 865
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_7

    :cond_16
    move v0, v2

    .line 876
    goto/16 :goto_8

    :cond_17
    move v3, v2

    .line 880
    goto :goto_9

    .line 883
    :cond_18
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSamsungKeyboardCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_19

    .line 884
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSamsungKeyboardCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 886
    :cond_19
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackSound:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1a

    .line 887
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 889
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackVibration:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    .line 890
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSipFeedbackVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    :cond_1b
    move v0, v2

    goto/16 :goto_4

    :cond_1c
    move v1, v2

    goto/16 :goto_0
.end method

.method public showGuideDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1325
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1326
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1328
    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 1331
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1332
    const v2, 0x7f04006e

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1333
    const v0, 0x7f0b007e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1335
    const v3, 0x7f09118c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1336
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1337
    const v0, 0x7f09118b

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1338
    const v0, 0x7f09079f

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1339
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 1340
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1341
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/SoundSettings$8;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SoundSettings$8;-><init>(Lcom/android/settings/SoundSettings;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1354
    return-void
.end method

.method public updateDeviceVibrationName()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1358
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1361
    if-nez v1, :cond_1

    .line 1362
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1363
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1364
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v2, "vibration_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1370
    if-eqz v0, :cond_0

    .line 1371
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1372
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v2, "vibration_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1373
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
