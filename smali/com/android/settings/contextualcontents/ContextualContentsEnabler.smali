.class public Lcom/android/settings/contextualcontents/ContextualContentsEnabler;
.super Ljava/lang/Object;
.source "ContextualContentsEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mSwitch:Landroid/widget/Switch;

    .line 26
    iput-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mPosition:I

    .line 34
    new-instance v0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/contextualcontents/ContextualContentsEnabler$1;-><init>(Lcom/android/settings/contextualcontents/ContextualContentsEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mObserver:Landroid/database/ContentObserver;

    .line 43
    iput-object p1, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mSwitch:Landroid/widget/Switch;

    .line 45
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v0, 0x1

    .line 77
    iget-object v1, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_contents_enabled"

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->updateSwitch()V

    .line 54
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contextual_contents_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 49
    iput p2, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mPosition:I

    .line 50
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    iput-object p1, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mSwitch:Landroid/widget/Switch;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->updateSwitch()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    iget-object v3, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_contents_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, state:I
    iget-object v3, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 93
    return-void

    :cond_0
    move v1, v2

    .line 88
    goto :goto_0
.end method
