.class public final Lcom/android/settings/motion2013/ArcMotionEnabler;
.super Ljava/lang/Object;
.source "ArcMotionEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;
    }
.end annotation


# static fields
.field private static mMotionSettingObserver:Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 44
    iput-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mPosition:I

    .line 48
    iput-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 50
    iput-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 55
    iput-object p1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/ArcMotionEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/ArcMotionEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/ArcMotionEnabler;->broadcastArcMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/ArcMotionEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/ArcMotionEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mPosition:I

    return v0
.end method

.method private broadcastArcMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.ARC_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 199
    :cond_0
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/settings/motion2013/ArcMotionEnabler;->dismissAllDialog()V

    .line 137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090d95

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e39

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/ArcMotionEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/ArcMotionEnabler$1;-><init>(Lcom/android/settings/motion2013/ArcMotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 162
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 163
    return-void
.end method


# virtual methods
.method public isAllArcMotionDisabled()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 202
    iget-object v7, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 203
    .local v0, mResolver:Landroid/content/ContentResolver;
    const-string v7, "arc_motion_ripple_effect"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 204
    .local v4, rippleEffect:I
    const-string v7, "arc_motion_quick_glance"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 205
    .local v3, quickGlance:I
    const-string v7, "arc_motion_music_playback"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 206
    .local v2, musicPlayback:I
    const-string v7, "arc_motion_messaging"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 208
    .local v1, messaging:I
    or-int v7, v4, v3

    or-int/2addr v7, v2

    or-int/2addr v7, v1

    if-ge v7, v5, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    if-nez p2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "master_arc_motion"

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/ArcMotionEnabler;->broadcastArcMotionChanged(Z)V

    .line 133
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 120
    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionEnabler;->isAllArcMotionDisabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/android/settings/motion2013/ArcMotionEnabler;->showAllOptionDisabledDialog()V

    goto :goto_1

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "master_arc_motion"

    if-eqz p2, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/ArcMotionEnabler;->broadcastArcMotionChanged(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 129
    goto :goto_2
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/motion2013/ArcMotionEnabler;->dismissAllDialog()V

    .line 75
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    sget-object v0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;->stopObserving()V

    .line 79
    sput-object v1, Lcom/android/settings/motion2013/ArcMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;

    .line 81
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    sget-object v0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;-><init>(Lcom/android/settings/motion2013/ArcMotionEnabler;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;

    .line 69
    sget-object v0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/ArcMotionEnabler$MotionSettingObserver;->startObserving()V

    .line 71
    :cond_0
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 61
    iput p2, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mPosition:I

    .line 62
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iput-object p1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 89
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_arc_motion"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, motionState:I
    if-ne v0, v4, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "master_arc_motion"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 105
    .local v1, motionEngine:I
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 107
    .local v0, isChecked:Z
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    if-ne v1, v5, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
