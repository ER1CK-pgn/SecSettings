.class public final Lcom/android/settings/motion2014/MotionEnabler2014;
.super Ljava/lang/Object;
.source "MotionEnabler2014.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mMotionObserver:Landroid/database/ContentObserver;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic access$000(Lcom/android/settings/motion2014/MotionEnabler2014;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2014/MotionEnabler2014;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2014/MotionEnabler2014;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2014/MotionEnabler2014;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mPosition:I

    return v0
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 174
    iput-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 179
    iput-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 181
    :cond_1
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionEnabler2014;->dismissAllDialog()V

    .line 120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09155d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090f72

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2014/MotionEnabler2014$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/MotionEnabler2014$2;-><init>(Lcom/android/settings/motion2014/MotionEnabler2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 141
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 142
    return-void
.end method

.method private showTalkBackDisableDialog()V
    .locals 3

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionEnabler2014;->dismissAllDialog()V

    .line 147
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090ee1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090ee0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2014/MotionEnabler2014$3;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/MotionEnabler2014$3;-><init>(Lcom/android/settings/motion2014/MotionEnabler2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 160
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 162
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2014/MotionEnabler2014$4;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2014/MotionEnabler2014$4;-><init>(Lcom/android/settings/motion2014/MotionEnabler2014;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 168
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 103
    if-eqz p2, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isAllMotionDisabled2014(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionEnabler2014;->showAllOptionDisabledDialog()V

    .line 116
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isAllAirMotionDisabled2014(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionEnabler2014;->showTalkBackDisableDialog()V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAllMotionMaster(Landroid/content/Context;)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffAllMotionMaster(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionEnabler2014;->dismissAllDialog()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 65
    iput p2, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mPosition:I

    .line 66
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    .line 89
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, motionState:I
    if-ne v0, v4, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 97
    :goto_1
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method
