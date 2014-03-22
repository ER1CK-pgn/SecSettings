.class public Lcom/android/settings/easymode/EasyModeApp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final HUGE_FONT_INDEX:I

.field private static final LARGE_FONT_SCALE:F

.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private easy_mode_apps:Landroid/preference/PreferenceScreen;

.field private easy_mode_call:Landroid/preference/CheckBoxPreference;

.field private easy_mode_camera:Landroid/preference/CheckBoxPreference;

.field private easy_mode_clock:Landroid/preference/CheckBoxPreference;

.field private easy_mode_contacts:Landroid/preference/CheckBoxPreference;

.field private easy_mode_email:Landroid/preference/CheckBoxPreference;

.field private easy_mode_gallery:Landroid/preference/CheckBoxPreference;

.field private easy_mode_internet:Landroid/preference/CheckBoxPreference;

.field private easy_mode_messages:Landroid/preference/CheckBoxPreference;

.field private easy_mode_music:Landroid/preference/CheckBoxPreference;

.field private easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

.field private easy_mode_select_all:Landroid/preference/CheckBoxPreference;

.field private easy_mode_splanner:Landroid/preference/CheckBoxPreference;

.field private easy_mode_video:Landroid/preference/CheckBoxPreference;

.field private easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mChangeFont:Z

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mCurrentEsayModeState:I

.field private mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

.field private mFontSizePref:Lcom/android/settings/FontSizeListPreference;

.field private mOldEsayModeState:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private objValue:Ljava/lang/Object;

.field private previousIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    .line 78
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsHugeFontIndex()I

    move-result v0

    sput v0, Lcom/android/settings/easymode/EasyModeApp;->HUGE_FONT_INDEX:I

    .line 87
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.incallui"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.clockpackage"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sec.android.app.myfiles"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.android.app.voicenote"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 69
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    .line 72
    iput v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mOldEsayModeState:I

    .line 73
    iput v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurrentEsayModeState:I

    .line 74
    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->previousIndex:I

    .line 75
    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z

    .line 120
    new-instance v0, Lcom/android/settings/easymode/EasyModeApp$1;

    invoke-direct {v0, p0}, Lcom/android/settings/easymode/EasyModeApp$1;-><init>(Lcom/android/settings/easymode/EasyModeApp;)V

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private allEasyModeApps()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 348
    const-string v1, "EasyModeApp"

    const-string v2, "KKK allEasyModeApps"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_call:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    :cond_3
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_contacts:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_contacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    :cond_4
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    :cond_5
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    :cond_6
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    :cond_7
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    :cond_8
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    :cond_9
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    :cond_a
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    :cond_b
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    :cond_c
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private initPreference()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "EasyModeApp"

    const-string v1, "KKK initPreference"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/FontSizeListPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    .line 157
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    const-string v0, "easy_mode_apps"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    .line 159
    const-string v0, "easy_mode_select_all"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    .line 160
    const-string v0, "easy_mode_call"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_call:Landroid/preference/CheckBoxPreference;

    .line 161
    const-string v0, "easy_mode_camera"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    .line 162
    const-string v0, "easy_mode_clock"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    .line 163
    const-string v0, "easy_mode_contacts"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_contacts:Landroid/preference/CheckBoxPreference;

    .line 164
    const-string v0, "easy_mode_email"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    .line 165
    const-string v0, "easy_mode_gallery"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    .line 166
    const-string v0, "easy_mode_internet"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    .line 167
    const-string v0, "easy_mode_messages"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    .line 168
    const-string v0, "easy_mode_myfiles"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    .line 169
    const-string v0, "easy_mode_music"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    .line 171
    const-string v0, "easy_mode_splanner"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    .line 172
    const-string v0, "easy_mode_video"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    .line 173
    const-string v0, "easy_mode_voicerecorder"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    .line 174
    return-void
.end method

.method private updateCheckBoxState(Z)V
    .locals 5
    .parameter "force"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    const-string v0, "EasyModeApp"

    const-string v3, "KKK updateCheckBoxState"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_call:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 384
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_call:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_call"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 387
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_camera"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 390
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_clock"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_contacts:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 393
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_contacts:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_contacts"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 395
    :cond_3
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 396
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_email"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 398
    :cond_4
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 399
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_gallery"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 402
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_internet"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 404
    :cond_6
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    .line 405
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_messages"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 407
    :cond_7
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 408
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_myfiles"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 410
    :cond_8
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    .line 411
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_music"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 416
    :cond_9
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    .line 417
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_splanner"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 419
    :cond_a
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    .line 420
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_video"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 422
    :cond_b
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_c

    .line 423
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_voicerecorder"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    move v0, v1

    :goto_c
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 425
    :cond_c
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->allEasyModeApps()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 426
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 430
    :goto_d
    return-void

    :cond_d
    move v0, v2

    .line 384
    goto/16 :goto_0

    :cond_e
    move v0, v2

    .line 387
    goto/16 :goto_1

    :cond_f
    move v0, v2

    .line 390
    goto/16 :goto_2

    :cond_10
    move v0, v2

    .line 393
    goto/16 :goto_3

    :cond_11
    move v0, v2

    .line 396
    goto/16 :goto_4

    :cond_12
    move v0, v2

    .line 399
    goto/16 :goto_5

    :cond_13
    move v0, v2

    .line 402
    goto/16 :goto_6

    :cond_14
    move v0, v2

    .line 405
    goto/16 :goto_7

    :cond_15
    move v0, v2

    .line 408
    goto :goto_8

    :cond_16
    move v0, v2

    .line 411
    goto :goto_9

    :cond_17
    move v0, v2

    .line 417
    goto :goto_a

    :cond_18
    move v0, v2

    .line 420
    goto :goto_b

    :cond_19
    move v0, v2

    .line 423
    goto :goto_c

    .line 428
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_d
.end method

.method private updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 2
    .parameter "preference"
    .parameter "ainfo"
    .parameter "pkgName"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 276
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 278
    return-void
.end method

.method private updatePreperenceStatus()V
    .locals 9

    .prologue
    .line 207
    const-string v6, "EasyModeApp"

    const-string v7, "KKK updatePreperenceStatus"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 209
    .local v5, ps:Landroid/preference/PreferenceScreen;
    sget-object v6, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    array-length v3, v6

    .line 210
    .local v3, length:I
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 211
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_19

    .line 213
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 214
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 215
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    const-string v6, "com.android.incallui"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 216
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_call:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v0, v7}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 211
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .restart local v0       #ainfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    const-string v6, "com.sec.android.app.camera"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 218
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v0, v7}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 242
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 243
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "com.android.incallui"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 244
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 219
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ainfo:Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_1
    const-string v6, "com.sec.android.app.clockpackage"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 220
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v0, v7}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_3
    const-string v6, "com.android.contacts"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 222
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_contacts:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v0, v7}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_4
    const-string v6, "com.android.email"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 224
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v0, v7}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_5
    const-string v6, "com.sec.android.gallery3d"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 226
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v0, v7}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 227
    :cond_6
    const-string v6, "com.sec.android.app.sbrowser"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 228
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v0, v7}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 229
    :cond_7
    const-string v6, "com.android.mms"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 230
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v0, v7}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 231
    :cond_8
    const-string v6, "com.sec.android.app.music"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 232
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v0, v7}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 233
    :cond_9
    const-string v6, "com.sec.android.app.myfiles"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 234
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v0, v7}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 235
    :cond_a
    const-string v6, "com.android.calendar"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 236
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v0, v7}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 237
    :cond_b
    const-string v6, "com.samsung.everglades.video"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 238
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v0, v7}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 239
    :cond_c
    const-string v6, "com.sec.android.app.voicenote"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 240
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v0, v7}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 245
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d
    const-string v6, "com.sec.android.app.camera"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 246
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 247
    :cond_e
    const-string v6, "com.sec.android.app.clockpackage"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 248
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 249
    :cond_f
    const-string v6, "com.android.contacts"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 250
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_contacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 251
    :cond_10
    const-string v6, "com.android.email"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 252
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 253
    :cond_11
    const-string v6, "com.sec.android.gallery3d"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 254
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 255
    :cond_12
    const-string v6, "com.sec.android.app.sbrowser"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 256
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 257
    :cond_13
    const-string v6, "com.android.mms"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 258
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 259
    :cond_14
    const-string v6, "com.sec.android.app.music"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 260
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 261
    :cond_15
    const-string v6, "com.sec.android.app.myfiles"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 262
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 263
    :cond_16
    const-string v6, "com.android.calendar"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 264
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 265
    :cond_17
    const-string v6, "com.samsung.everglades.video"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 266
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 267
    :cond_18
    const-string v6, "com.sec.android.app.voicenote"

    sget-object v7, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 268
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 272
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_19
    return-void
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 7
    .parameter "val"

    .prologue
    .line 569
    const-string v4, "EasyModeApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KKK floatToIndex val : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, indices:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 573
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 574
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 575
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 576
    add-int/lit8 v4, v0, -0x1

    .line 580
    .end local v3           #thisVal:F
    :goto_1
    return v4

    .line 578
    .restart local v3       #thisVal:F
    :cond_0
    move v2, v3

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    .end local v3           #thisVal:F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method initswitchBtn()V
    .locals 8

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 503
    const-string v3, "EasyModeApp"

    const-string v4, "KKK initswitchBtn"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 505
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 506
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 507
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 508
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 509
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 510
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 511
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 512
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 515
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarLayout:Landroid/view/View;

    .line 518
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v3, Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    .line 519
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 136
    const-string v0, "EasyModeApp"

    const-string v1, "KKK onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->addPreferencesFromResource(I)V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->initPreference()V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/easymode/EasyModeApp;->previousIndex:I

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    .line 142
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "dialogId"

    .prologue
    const/4 v7, 0x0

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-object v7

    .line 588
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 589
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 590
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f04013e

    invoke-virtual {v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 591
    .local v2, layout:Landroid/view/View;
    const v8, 0x7f04013d

    invoke-virtual {v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 592
    .local v3, layout_flash:Landroid/view/View;
    const v8, 0x7f0b0147

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 593
    .local v5, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v8, 0x7f0b0354

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 594
    .local v6, mcheck_flash:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 595
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x2

    if-ne p1, v8, :cond_0

    .line 596
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f090064

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v9, Lcom/android/settings/easymode/EasyModeApp$2;

    invoke-direct {v9, p0, v0, v5}, Lcom/android/settings/easymode/EasyModeApp$2;-><init>(Lcom/android/settings/easymode/EasyModeApp;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 147
    .local v1, v:Landroid/view/View;
    const-string v2, "EasyModeApp"

    const-string v3, "KKK onCreateView"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040089

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, header:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->initswitchBtn()V

    .line 151
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 495
    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK onDestroy mChangeFont = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-boolean v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/easymode/EasyModeEnabler;->startLauncher()V

    .line 499
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 500
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 487
    const-string v0, "EasyModeApp"

    const-string v1, "KKK onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 489
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/easymode/EasyModeEnabler;->pause()V

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 491
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 178
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    const-string v5, "EasyModeApp"

    const-string v6, "KKK onPreferenceChange mFontSizePref"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p2

    .line 180
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/easymode/EasyModeApp;->floatToIndex(F)I

    move-result v1

    .line 181
    .local v1, fontIndex:I
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 182
    .local v4, previousIndex:I
    const-string v5, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK onPreferenceChange fontIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / previousIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    add-int/lit8 v7, v1, 0x3

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    sget v5, Lcom/android/settings/easymode/EasyModeApp;->HUGE_FONT_INDEX:I

    if-ge v4, v5, :cond_3

    if-ne v1, v9, :cond_3

    .line 185
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v2, i:Landroid/content/Intent;
    const-string v5, "large_font"

    invoke-virtual {v2, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    const-string v5, "EasyModeApp"

    const-string v6, "KKK android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 196
    .local v3, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v5, "pref_font_noti"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 197
    .local v0, do_not_show_again:Ljava/lang/Boolean;
    if-ne v1, v9, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 198
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/settings/easymode/EasyModeApp;->showDialog(I)V

    .line 200
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings/easymode/EasyModeApp;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 201
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v5}, Lcom/android/settings/easymode/EasyModeApp;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 203
    .end local v0           #do_not_show_again:Ljava/lang/Boolean;
    .end local v1           #fontIndex:I
    .end local v3           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v4           #previousIndex:I
    :cond_2
    return v10

    .line 189
    .restart local v1       #fontIndex:I
    .restart local v4       #previousIndex:I
    :cond_3
    sget v5, Lcom/android/settings/easymode/EasyModeApp;->HUGE_FONT_INDEX:I

    if-ne v4, v5, :cond_0

    if-ge v1, v9, :cond_0

    .line 190
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v2       #i:Landroid/content/Intent;
    const-string v5, "large_font"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    const-string v5, "EasyModeApp"

    const-string v6, "KKK android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 282
    const-string v0, "EasyModeApp"

    const-string v3, "KKK onPreferenceTreeClick"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    const-string v0, "EasyModeApp"

    const-string v3, "KKK onPreferenceTreeClick easy_mode_select_all is clicked"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0, v2}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/easymode/EasyModeEnabler;->onEasyModeApps(Z)V

    .line 328
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->allEasyModeApps()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 329
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 333
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 289
    :cond_1
    const-string v0, "EasyModeApp"

    const-string v3, "KKK onPreferenceTreeClick easy_mode_select_all is not clicked"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings/easymode/EasyModeEnabler;->onEasyModeApps(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/easymode/EasyModeEnabler;->updateSwitch()V

    .line 293
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/easymode/EasyModeEnabler;->startStandardMode()V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 296
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_call"

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 298
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_camera"

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v4, v0}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_3

    .line 299
    :cond_6
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 300
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_clock"

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v3, v4, v0}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_4

    .line 301
    :cond_8
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_contacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 302
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_contacts"

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_contacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {v3, v4, v0}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_contacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeContactIntent(Z)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 302
    goto :goto_5

    .line 304
    :cond_a
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 305
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_email"

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_6
    invoke-virtual {v3, v4, v0}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_6

    .line 306
    :cond_c
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 307
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_gallery"

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_7
    invoke-virtual {v3, v4, v0}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto :goto_7

    .line 308
    :cond_e
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 309
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_internet"

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_8
    invoke-virtual {v3, v4, v0}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto :goto_8

    .line 310
    :cond_10
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 311
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_messages"

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_9
    invoke-virtual {v3, v4, v0}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto :goto_9

    .line 312
    :cond_12
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 313
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_myfiles"

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_a
    invoke-virtual {v3, v4, v0}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_13
    move v0, v2

    goto :goto_a

    .line 314
    :cond_14
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 315
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_music"

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_b
    invoke-virtual {v3, v4, v0}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeMusicIntent(Z)V

    goto/16 :goto_0

    :cond_15
    move v0, v2

    .line 315
    goto :goto_b

    .line 319
    :cond_16
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 320
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_splanner"

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_c
    invoke-virtual {v3, v4, v0}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_17
    move v0, v2

    goto :goto_c

    .line 321
    :cond_18
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 322
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_video"

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_d
    invoke-virtual {v3, v4, v0}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_19
    move v0, v2

    goto :goto_d

    .line 323
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 324
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_voicerecorder"

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_e
    invoke-virtual {v3, v4, v0}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1b
    move v0, v2

    goto :goto_e

    .line 325
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    goto/16 :goto_0

    .line 331
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 472
    const-string v2, "EasyModeApp"

    const-string v3, "KKK onResume"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 474
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperenceStatus()V

    .line 475
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v2}, Lcom/android/settings/easymode/EasyModeEnabler;->resume()V

    .line 476
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v2}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasymodeState()Z

    move-result v1

    .line 477
    .local v1, state:Z
    const-string v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KKK onResume state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/easymode/EasyModeApp;->updateCheckBoxState(Z)V

    .line 479
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.intent.action.easy_mode_switch_change"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    invoke-virtual {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->setAllCheckEnable(Z)V

    .line 482
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/easymode/EasyModeApp;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 483
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z

    .line 484
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 9
    .parameter "pref"

    .prologue
    const/4 v8, 0x0

    .line 523
    const-string v5, "EasyModeApp"

    const-string v6, "KKK readFontSizePreference"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    const-string v5, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK readFontSizePreference : mCurConfig.fontScale : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v5}, Lcom/android/settings/easymode/EasyModeApp;->floatToIndex(F)I

    move-result v3

    .line 533
    .local v3, index:I
    const-string v5, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK readFontSizePreference : font index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 535
    .local v1, fontIndex:I
    const-string v5, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK readFontSizePreference : Settings.Global.FONT_SIZE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    sget v5, Lcom/android/settings/easymode/EasyModeApp;->HUGE_FONT_INDEX:I

    if-ne v1, v5, :cond_0

    .line 537
    const/4 v3, 0x3

    .line 538
    const-string v5, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK readFontSizePreference : Extra large font. index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 543
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 545
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f0a0026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, fontSizeNames:[Ljava/lang/String;
    const v5, 0x7f0905b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v2, v3

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 548
    return-void

    .line 526
    .end local v1           #fontIndex:I
    .end local v2           #fontSizeNames:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "EasyModeApp"

    const-string v6, "Unable to retrieve font size"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setAllCheckEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 434
    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK setAllCheckEnable state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 436
    return-void
.end method

.method public setAllOptionCheck(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 454
    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK setAllCheckEnable state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_contacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 469
    return-void
.end method

.method public setLargeFont()V
    .locals 6

    .prologue
    const-wide v4, 0x3ff35c28f5c28f5cL

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK readFontSizePreference : mCurConfig.fontScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    float-to-double v1, v1

    cmpg-double v1, v1, v4

    if-gez v1, :cond_0

    .line 448
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 451
    :cond_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EasyModeApp"

    const-string v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 5
    .parameter "objValue"

    .prologue
    .line 551
    const-string v2, "EasyModeApp"

    const-string v3, "KKK writeFontSizePreference"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 554
    .local v1, fontScale:F
    const-string v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KKK writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/high16 v2, 0x3fc0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 556
    sget v1, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    .line 557
    const-string v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KKK writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 561
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 562
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v1           #fontScale:F
    :goto_0
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasyModeApp"

    const-string v3, "KKK Unable to save font size"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
