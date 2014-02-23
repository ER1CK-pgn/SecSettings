.class public final Lcom/android/settings/AirCommandEnabler;
.super Ljava/lang/Object;
.source "AirCommandEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mEnableAirCommandDialog:Landroid/app/AlertDialog;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    .line 51
    iput-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AirCommandEnabler;->mPosition:I

    .line 55
    iput-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 57
    new-instance v0, Lcom/android/settings/AirCommandEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirCommandEnabler$1;-><init>(Lcom/android/settings/AirCommandEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    .line 66
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirCommandEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirCommandEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->turnOnPenInfoPreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AirCommandEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 152
    :cond_0
    return-void
.end method

.method private showAirCommandEnabledPopup()V
    .locals 3

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->dismissAllDialog()V

    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090e64

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e39

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirCommandEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/AirCommandEnabler$3;-><init>(Lcom/android/settings/AirCommandEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/AirCommandEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/AirCommandEnabler$2;-><init>(Lcom/android/settings/AirCommandEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 144
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 145
    return-void
.end method

.method private turnOnPenInfoPreview()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_master_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    .line 158
    .local v1, airViewState:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 159
    .local v0, airViewMode:I
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 160
    .local v2, penInforPreview:Z
    :goto_1
    if-nez v1, :cond_0

    .line 162
    iget-object v4, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_view_master_onoff"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    :cond_0
    sget v4, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-ne v0, v4, :cond_1

    .line 165
    iget-object v4, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_view_mode"

    sget v6, Lcom/android/settings/Utils;->AUTO_AIR_VIEW_MODE:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    :cond_1
    if-nez v2, :cond_2

    .line 168
    iget-object v4, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    .end local v0           #airViewMode:I
    .end local v1           #airViewState:Z
    .end local v2           #penInforPreview:Z
    :cond_2
    return-void

    :cond_3
    move v1, v4

    .line 157
    goto :goto_0

    .restart local v0       #airViewMode:I
    .restart local v1       #airViewState:Z
    :cond_4
    move v2, v4

    .line 159
    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 101
    if-eqz p2, :cond_4

    .line 102
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_master_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 103
    .local v1, airViewState:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, airViewMode:I
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 105
    .local v2, penInforPreview:Z
    :goto_1
    if-eqz v1, :cond_0

    sget v4, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-eq v0, v4, :cond_0

    if-nez v2, :cond_3

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->showAirCommandEnabledPopup()V

    .line 113
    .end local v0           #airViewMode:I
    .end local v1           #airViewState:Z
    .end local v2           #penInforPreview:Z
    :goto_2
    return-void

    :cond_1
    move v1, v4

    .line 102
    goto :goto_0

    .restart local v0       #airViewMode:I
    .restart local v1       #airViewState:Z
    :cond_2
    move v2, v4

    .line 104
    goto :goto_1

    .line 108
    .restart local v2       #penInforPreview:Z
    :cond_3
    iget-object v4, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_button_onoff"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 111
    .end local v0           #airViewMode:I
    .end local v1           #airViewState:Z
    .end local v2           #penInforPreview:Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "air_button_onoff"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->dismissAllDialog()V

    .line 84
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/AirCommandEnabler;->updateSwitch()V

    .line 77
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 72
    iput p2, p0, Lcom/android/settings/AirCommandEnabler;->mPosition:I

    .line 73
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/AirCommandEnabler;->updateSwitch()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, state:I
    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 119
    return-void

    :cond_0
    move v1, v2

    .line 118
    goto :goto_0
.end method
