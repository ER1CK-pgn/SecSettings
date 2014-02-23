.class public Lcom/android/settings/AudioBalancePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "AudioBalancePreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AudioBalancePreference$SavedState;
    }
.end annotation


# instance fields
.field private initMessage:Ljava/lang/String;

.field private leftMessage:Ljava/lang/String;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentProgress:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerisPrepared:Z

.field private mOldAudioBalance:I

.field private mPercentageOfBalance:I

.field private mRestoredOldState:Z

.field private mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

.field private rightMessage:Ljava/lang/String;

.field private seekBarMessage:Ljava/lang/String;

.field private swipeMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 51
    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayerisPrepared:Z

    .line 308
    new-instance v0, Lcom/android/settings/AudioBalancePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AudioBalancePreference$1;-><init>(Lcom/android/settings/AudioBalancePreference;)V

    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 70
    const v0, 0x7f040112

    invoke-virtual {p0, v0}, Lcom/android/settings/AudioBalancePreference;->setDialogLayoutResource(I)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c6c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->initMessage:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c6d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->swipeMessage:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c6e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->leftMessage:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c6f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->rightMessage:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c70

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->seekBarMessage:Ljava/lang/String;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AudioBalancePreference;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private getAudioBalanceFromDB(I)I
    .locals 4
    .parameter "defaultValue"

    .prologue
    .line 227
    move v0, p1

    .line 228
    .local v0, audiobalance:I
    const-string v1, "AudioBalancePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioBalanceFromDB() defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/AudioBalancePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "audio_balance"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 232
    const-string v1, "AudioBalancePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioBalanceFromDB() audiobalance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return v0

    .line 233
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private pauseMediaPlayer()V
    .locals 3

    .prologue
    .line 159
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 163
    :cond_0
    return-void
.end method

.method private prepareMediaPlayer()V
    .locals 4

    .prologue
    .line 132
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/android/settings/AudioBalancePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    const-string v1, "AudioBalancePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareMediaPlayer() mMediaPlayer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, localIOException:Ljava/io/IOException;
    const-string v1, "AudioBalancePreference"

    const-string v2, "Exception thrown during preparing sound."

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private releaseMediaPlayer()V
    .locals 3

    .prologue
    .line 166
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayerisPrepared:Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 176
    :cond_1
    return-void
.end method

.method private restoreOldState()V
    .locals 3

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreOldState() mOldAudioBalance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    invoke-direct {p0, v0}, Lcom/android/settings/AudioBalancePreference;->setAudioBalance(I)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mRestoredOldState:Z

    goto :goto_0
.end method

.method private setAudioBalance(I)V
    .locals 3
    .parameter "audiobalance"

    .prologue
    .line 269
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioBalance() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sound_balance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method private startMediaPlayer()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayerisPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    const-string v0, "AudioBalancePreference"

    const-string v1, "startMediaPlayer() requestAudioFocus : fail"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string v0, "AudioBalancePreference"

    const-string v1, "startMediaPlayer() requestAudioFocus : success"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f090c71

    invoke-virtual {p0, v0}, Lcom/android/settings/AudioBalancePreference;->setPositiveButtonText(I)V

    .line 92
    const v0, 0x7f090c72

    invoke-virtual {p0, v0}, Lcom/android/settings/AudioBalancePreference;->setNegativeButtonText(I)V

    .line 93
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x2

    const/16 v4, 0x64

    const/16 v3, 0x32

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 99
    invoke-direct {p0, v3}, Lcom/android/settings/AudioBalancePreference;->getAudioBalanceFromDB(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    .line 100
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView() mOldAudioBalance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const v0, 0x7f0b0303

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iput-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    .line 103
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setRange(I)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setDrawSeekBarSplitForeGround(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const v1, 0x7f0204ec

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setVerticalBarDrawable(I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setUseCustomContentDescription(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgressDraw(Z)V

    .line 110
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    if-gt v0, v4, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iget v1, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    .line 114
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    if-ne v0, v3, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->seekBarMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->initMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/AudioBalancePreference;->prepareMediaPlayer()V

    .line 129
    return-void

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    if-ge v0, v3, :cond_1

    .line 118
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    add-int/lit8 v0, v0, -0x32

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/AudioBalancePreference;->mPercentageOfBalance:I

    .line 119
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->seekBarMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->swipeMessage:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/AudioBalancePreference;->mPercentageOfBalance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/AudioBalancePreference;->leftMessage:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :cond_1
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    rsub-int/lit8 v0, v0, 0x32

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/AudioBalancePreference;->mPercentageOfBalance:I

    .line 122
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->seekBarMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->swipeMessage:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/AudioBalancePreference;->mPercentageOfBalance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/AudioBalancePreference;->rightMessage:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    goto/16 :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/AudioBalancePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "AudioBalancePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogClosed() : mSeekBar.getProgress()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/AudioBalancePreference;->setAudioBalance(I)V

    .line 248
    const-string v1, "audio_balance"

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/AudioBalancePreference;->releaseMediaPlayer()V

    .line 256
    return-void

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/AudioBalancePreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "paramMediaPlayer"

    .prologue
    .line 179
    const-string v0, "AudioBalancePreference"

    const-string v1, "onPrepared() mMediaPlayer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayerisPrepared:Z

    .line 181
    return-void
.end method

.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V
    .locals 7
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v1, 0x32

    .line 185
    iput v5, p0, Lcom/android/settings/AudioBalancePreference;->mPercentageOfBalance:I

    .line 186
    iput p2, p0, Lcom/android/settings/AudioBalancePreference;->mCurrentProgress:I

    .line 187
    const/16 v0, 0x64

    if-gt p2, v0, :cond_2

    .line 189
    if-eq p2, v1, :cond_0

    const/16 v0, 0x35

    if-gt p2, v0, :cond_0

    const/16 v0, 0x2f

    if-lt p2, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    .line 211
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mCurrentProgress:I

    if-le v0, v1, :cond_3

    .line 196
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mCurrentProgress:I

    add-int/lit8 v0, v0, -0x32

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/AudioBalancePreference;->mPercentageOfBalance:I

    .line 197
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->seekBarMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->swipeMessage:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/AudioBalancePreference;->mPercentageOfBalance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/AudioBalancePreference;->rightMessage:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    :cond_1
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/settings/AudioBalancePreference;->setAudioBalance(I)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    invoke-direct {p0}, Lcom/android/settings/AudioBalancePreference;->startMediaPlayer()V

    .line 210
    :cond_2
    const-string v0, "AudioBalancePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volumn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/AudioBalancePreference;->mPercentageOfBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_3
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mCurrentProgress:I

    if-ge v0, v1, :cond_1

    .line 200
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mCurrentProgress:I

    rsub-int/lit8 v0, v0, 0x32

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/AudioBalancePreference;->mPercentageOfBalance:I

    .line 201
    iget-object v0, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->seekBarMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->swipeMessage:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/AudioBalancePreference;->mPercentageOfBalance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/AudioBalancePreference;->leftMessage:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 294
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/AudioBalancePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 306
    :goto_0
    return-void

    .line 300
    :cond_1
    check-cast p1, Lcom/android/settings/AudioBalancePreference$SavedState;

    .line 301
    invoke-virtual {p1}, Lcom/android/settings/AudioBalancePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 303
    iget v0, p1, Lcom/android/settings/AudioBalancePreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    .line 305
    iget v0, p1, Lcom/android/settings/AudioBalancePreference$SavedState;->progress:I

    invoke-direct {p0, v0}, Lcom/android/settings/AudioBalancePreference;->setAudioBalance(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 276
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 277
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/AudioBalancePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AudioBalancePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 289
    :cond_1
    :goto_0
    return-object v0

    .line 281
    :cond_2
    new-instance v0, Lcom/android/settings/AudioBalancePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/AudioBalancePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 282
    .local v0, myState:Lcom/android/settings/AudioBalancePreference$SavedState;
    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/settings/AudioBalancePreference$SavedState;->progress:I

    .line 283
    iget v2, p0, Lcom/android/settings/AudioBalancePreference;->mOldAudioBalance:I

    iput v2, v0, Lcom/android/settings/AudioBalancePreference$SavedState;->oldProgress:I

    .line 285
    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayerisPrepared:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/AudioBalancePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/android/settings/AudioBalancePreference;->pauseMediaPlayer()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 215
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    const/16 v1, 0x64

    .line 218
    iget v0, p0, Lcom/android/settings/AudioBalancePreference;->mCurrentProgress:I

    if-gt v0, v1, :cond_0

    .line 219
    const-string v0, "AudioBalancePreference"

    const-string v1, "onStopTrackingTouch() : Current progress is below than MaxAudioBalance"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p1, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    .line 222
    const-string v0, "AudioBalancePreference"

    const-string v1, "onStopTrackingTouch() : Current progress is over than MaxAudioBalance"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AudioBalancePreference;->mRestoredOldState:Z

    .line 87
    return-void
.end method
