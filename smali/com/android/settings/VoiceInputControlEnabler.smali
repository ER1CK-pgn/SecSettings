.class public final Lcom/android/settings/VoiceInputControlEnabler;
.super Ljava/lang/Object;
.source "VoiceInputControlEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;
    }
.end annotation


# static fields
.field private static mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;


# instance fields
.field private final KEY_TEMP_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field protected MESSAGE_DELAY:I

.field private final VOICEINPUTCONTROL_ALARM:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_CAMERA:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_CHATONV:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_INCOMMING_CALL:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_MUSIC:Ljava/lang/String;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mSwitch:Landroid/widget/Switch;

.field protected mVoiceControlUncheckerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "voice_input_control"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 54
    const-string v0, "temp_voice_input_control"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->KEY_TEMP_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 55
    const-string v0, "voice_input_control_incomming_calls"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_INCOMMING_CALL:Ljava/lang/String;

    .line 56
    const-string v0, "voice_input_control_chatonv"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_CHATONV:Ljava/lang/String;

    .line 57
    const-string v0, "voice_input_control_alarm"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_ALARM:Ljava/lang/String;

    .line 58
    const-string v0, "voice_input_control_camera"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_CAMERA:Ljava/lang/String;

    .line 59
    const-string v0, "voice_input_control_music"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_MUSIC:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->MESSAGE_DELAY:I

    .line 65
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 70
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 237
    new-instance v0, Lcom/android/settings/VoiceInputControlEnabler$6;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceInputControlEnabler$6;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceControlUncheckerHandler:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    .line 76
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 317
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090d18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0910c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/VoiceInputControlEnabler$7;

    invoke-direct {v2, p0}, Lcom/android/settings/VoiceInputControlEnabler$7;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 332
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 333
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 267
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 268
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v7, "voice_input_control_incomming_calls"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 269
    .local v1, call:I
    const-string v7, "voice_input_control_alarm"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 270
    .local v0, alarm:I
    const-string v7, "voice_input_control_camera"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 271
    .local v2, camera:I
    const-string v7, "voice_input_control_music"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 272
    .local v5, music:I
    const-string v7, "voice_input_control_chatonv"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 274
    .local v3, chatonv:I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    .line 275
    const/4 v6, 0x1

    .line 277
    :cond_0
    return v6
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 157
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voiceinputcontrol_showNeverAgain"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 158
    .local v4, showNeverAgain:I
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_input_control"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 162
    .local v6, voiceState:I
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v7, v10}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v7, v10}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v7

    if-nez v7, :cond_2

    .line 164
    :cond_0
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 165
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v10}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 166
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_input_control"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v11}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 173
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 174
    .local v5, vibrator:Landroid/os/Vibrator;
    if-eqz p2, :cond_5

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlEnabler;->isAllOptionDisabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 175
    const-string v7, "VoiceInputControlEnabler"

    const-string v8, "VoiceControl changed ignored cause all sub options are disabled "

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 177
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlEnabler;->showAllOptionDisabledDialog()V

    .line 228
    :cond_3
    :goto_1
    if-eqz p2, :cond_6

    if-nez v6, :cond_6

    .line 229
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v11}, Landroid/widget/Switch;->setChecked(Z)V

    .line 230
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_input_control"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 179
    :cond_4
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceControlUncheckerHandler:Landroid/os/Handler;

    iget v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->MESSAGE_DELAY:I

    int-to-long v8, v8

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 181
    :cond_5
    if-eqz p2, :cond_3

    if-nez v6, :cond_3

    if-nez v4, :cond_3

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 183
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 184
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040052

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 185
    .local v2, layout:Landroid/view/View;
    const v7, 0x7f0b00ee

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 186
    .local v0, check:Landroid/widget/CheckBox;
    new-instance v7, Lcom/android/settings/VoiceInputControlEnabler$1;

    invoke-direct {v7, p0}, Lcom/android/settings/VoiceInputControlEnabler$1;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0910c1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0910c3

    new-instance v9, Lcom/android/settings/VoiceInputControlEnabler$3;

    invoke-direct {v9, p0, v0}, Lcom/android/settings/VoiceInputControlEnabler$3;-><init>(Lcom/android/settings/VoiceInputControlEnabler;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0910c4

    new-instance v9, Lcom/android/settings/VoiceInputControlEnabler$2;

    invoke-direct {v9, p0}, Lcom/android/settings/VoiceInputControlEnabler$2;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 209
    .local v3, mAutoHapticDialog:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 210
    new-instance v7, Lcom/android/settings/VoiceInputControlEnabler$4;

    invoke-direct {v7, p0}, Lcom/android/settings/VoiceInputControlEnabler$4;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 214
    new-instance v7, Lcom/android/settings/VoiceInputControlEnabler$5;

    invoke-direct {v7, p0}, Lcom/android/settings/VoiceInputControlEnabler$5;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_1

    .line 231
    .end local v0           #check:Landroid/widget/CheckBox;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    .end local v3           #mAutoHapticDialog:Landroid/app/AlertDialog;
    :cond_6
    if-nez p2, :cond_1

    if-ne v6, v11, :cond_1

    .line 232
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 233
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_input_control"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 121
    :goto_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    sget-object v0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;->stopObserving()V

    .line 125
    sput-object v4, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    goto :goto_0

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    sget-object v0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;-><init>(Lcom/android/settings/VoiceInputControlEnabler;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    .line 100
    sget-object v0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;->startObserving()V

    .line 102
    :cond_1
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    .line 137
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, voiceTalkState:I
    if-ne v0, v4, :cond_3

    .line 140
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 145
    :goto_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 251
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 253
    .local v1, voiceInputControState:I
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 255
    .local v0, isChecked:Z
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    if-ne v1, v5, :cond_1

    .line 257
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 258
    const-string v2, "VoiceInputControlEnabler"

    const-string v3, "updateSwitch - mSwitch.setChecked(true)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 261
    const-string v2, "VoiceInputControlEnabler"

    const-string v3, "updateSwitch - mSwitch.setChecked(false)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateSwitch(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 309
    return-void
.end method
