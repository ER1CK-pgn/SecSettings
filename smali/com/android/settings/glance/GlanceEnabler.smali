.class public final Lcom/android/settings/glance/GlanceEnabler;
.super Ljava/lang/Object;
.source "GlanceEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private final mGlanceObserver:Landroid/database/ContentObserver;

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

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/android/settings/glance/GlanceEnabler;->mSwitch:Landroid/widget/Switch;

    .line 47
    iput-object v1, p0, Lcom/android/settings/glance/GlanceEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/glance/GlanceEnabler;->mPosition:I

    .line 49
    iput-object v1, p0, Lcom/android/settings/glance/GlanceEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 50
    iput-object v1, p0, Lcom/android/settings/glance/GlanceEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 52
    new-instance v0, Lcom/android/settings/glance/GlanceEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/glance/GlanceEnabler$1;-><init>(Lcom/android/settings/glance/GlanceEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/glance/GlanceEnabler;->mGlanceObserver:Landroid/database/ContentObserver;

    .line 61
    iput-object p1, p0, Lcom/android/settings/glance/GlanceEnabler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settings/glance/GlanceEnabler;->mSwitch:Landroid/widget/Switch;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/glance/GlanceEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/glance/GlanceEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/glance/GlanceEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/glance/GlanceEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/glance/GlanceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "glance_switch_onoff"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/glance/GlanceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/glance/GlanceEnabler;->mGlanceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/glance/GlanceEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 71
    iget-object v2, p0, Lcom/android/settings/glance/GlanceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_switch_onoff"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/glance/GlanceEnabler;->mGlanceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    iget-object v2, p0, Lcom/android/settings/glance/GlanceEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/settings/glance/GlanceEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 75
    iget-object v2, p0, Lcom/android/settings/glance/GlanceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_switch_onoff"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    .line 76
    .local v0, glanceState:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/glance/GlanceEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/glance/GlanceEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    .end local v0           #glanceState:Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 75
    goto :goto_0
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/glance/GlanceEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 67
    iput p2, p0, Lcom/android/settings/glance/GlanceEnabler;->mPosition:I

    .line 68
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lcom/android/settings/glance/GlanceEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iput-object p1, p0, Lcom/android/settings/glance/GlanceEnabler;->mSwitch:Landroid/widget/Switch;

    .line 91
    iget-object v1, p0, Lcom/android/settings/glance/GlanceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "glance_switch_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 93
    .local v0, glanceState:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/glance/GlanceEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/glance/GlanceEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    return-void
.end method
