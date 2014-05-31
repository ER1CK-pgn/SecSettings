.class public final Lcom/android/settings/motion2013/AirMotionEnabler;
.super Ljava/lang/Object;
.source "AirMotionEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;
    }
.end annotation


# static fields
.field private static mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 44
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mPosition:I

    .line 48
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 50
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 57
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/AirMotionEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/AirMotionEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2013/AirMotionEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mPosition:I

    return v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 309
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 313
    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 315
    :cond_1
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->dismissAllDialog()V

    .line 207
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0915be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090fad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/AirMotionEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/AirMotionEnabler$4;-><init>(Lcom/android/settings/motion2013/AirMotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 232
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 233
    return-void
.end method

.method private showTalkBackDisableDialog()V
    .locals 3

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->dismissAllDialog()V

    .line 158
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090f1c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090f1b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/AirMotionEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/AirMotionEnabler$2;-><init>(Lcom/android/settings/motion2013/AirMotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/motion2013/AirMotionEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/AirMotionEnabler$1;-><init>(Lcom/android/settings/motion2013/AirMotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 194
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 196
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/AirMotionEnabler$3;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/AirMotionEnabler$3;-><init>(Lcom/android/settings/motion2013/AirMotionEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 203
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 122
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->showTalkBackDisableDialog()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    if-nez p2, :cond_3

    .line 128
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_motion_engine"

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 128
    goto :goto_1

    .line 132
    :cond_3
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isCurrentAirmotionAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 133
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 135
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_5

    .line 137
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->showAllOptionDisabledDialog()V

    goto :goto_0

    .line 141
    :cond_5
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_motion_engine"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_6

    move v0, v2

    .line 143
    .local v0, airMotionState:Z
    :goto_2
    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->showAllOptionDisabledDialog()V

    goto :goto_0

    .end local v0           #airMotionState:Z
    :cond_6
    move v0, v3

    .line 141
    goto :goto_2

    .line 149
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_7
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_motion_engine"

    if-eqz p2, :cond_8

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_8
    move v2, v3

    .line 149
    goto :goto_3
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->dismissAllDialog()V

    .line 77
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    sget-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;->stopObserving()V

    .line 81
    sput-object v1, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    .line 83
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    sget-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;-><init>(Lcom/android/settings/motion2013/AirMotionEnabler;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    .line 71
    sget-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;->startObserving()V

    .line 73
    :cond_0
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 63
    iput p2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mPosition:I

    .line 64
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 92
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 95
    .local v0, motionState:I
    if-ne v0, v4, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_engine"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 108
    .local v1, motionEngine:I
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 110
    .local v0, isChecked:Z
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    if-ne v1, v5, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
