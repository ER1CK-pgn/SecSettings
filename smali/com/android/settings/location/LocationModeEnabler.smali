.class public Lcom/android/settings/location/LocationModeEnabler;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationModeEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActive:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private final mLocationModeObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 51
    iput-boolean v2, p0, Lcom/android/settings/location/LocationModeEnabler;->mActive:Z

    .line 53
    new-instance v0, Lcom/android/settings/location/LocationModeEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/location/LocationModeEnabler$1;-><init>(Lcom/android/settings/location/LocationModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationModeEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    .line 68
    iput-object p1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 70
    iput-boolean v2, p0, Lcom/android/settings/location/LocationModeEnabler;->mValidListener:Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/LocationModeEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/location/LocationModeEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private isRestricted()Z
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 144
    .local v0, um:Landroid/os/UserManager;
    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v2, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 129
    .local v0, locationModeState:Z
    :goto_0
    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    .line 132
    const-string v1, "USC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/location/LocationModeEnabler;->showUSCLocationConsentDialog(Landroid/content/Context;I)V

    .line 140
    :cond_0
    :goto_1
    return-void

    .end local v0           #locationModeState:Z
    :cond_1
    move v0, v1

    .line 127
    goto :goto_0

    .line 135
    .restart local v0       #locationModeState:Z
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationModeEnabler;->setLocationMode(I)V

    goto :goto_1

    .line 137
    :cond_3
    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationModeEnabler;->setLocationMode(I)V

    goto :goto_1
.end method

.method public onModeChanged(IZ)V
    .locals 4
    .parameter "mode"
    .parameter "restricted"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    if-eqz p1, :cond_2

    move v0, v1

    .line 97
    .local v0, enabled:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez p2, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 101
    iget-boolean v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 105
    iget-boolean v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    :cond_1
    const-string v1, "LocationModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onModeChanged : mSwitch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .end local v0           #enabled:Z
    :cond_2
    move v0, v2

    .line 96
    goto :goto_0

    .restart local v0       #enabled:Z
    :cond_3
    move v1, v2

    .line 97
    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationModeEnabler;->mValidListener:Z

    .line 88
    iget-object v0, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 89
    return-void
.end method

.method public resume()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mValidListener:Z

    .line 76
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 77
    .local v0, isChecked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 79
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_providers_allowed"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/location/LocationModeEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 83
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/location/LocationModeEnabler;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 84
    return-void

    .end local v0           #isChecked:Z
    :cond_0
    move v0, v2

    .line 76
    goto :goto_0

    .restart local v0       #isChecked:Z
    :cond_1
    move v1, v2

    .line 83
    goto :goto_1
.end method

.method public setLocationMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings/location/LocationModeEnabler;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    const-string v1, "LocationModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRestricted() = true, mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v1, "LocationModeEnabler"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "LocationModeEnabler"

    const-string v2, "Restricted user, not setting location mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 157
    iget-boolean v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mActive:Z

    if-eqz v1, :cond_1

    .line 158
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/location/LocationModeEnabler;->onModeChanged(IZ)V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/settings/location/LocationModeEnabler;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v1, "NEW_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationModeEnabler;->updateVerizonProvider(Landroid/content/Context;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/location/LocationModeEnabler;->refreshLocationMode()V

    .line 172
    const-string v1, "USC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/android/settings/location/LocationModeEnabler;->isRestricted()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/location/LocationModeEnabler;->onModeChanged(IZ)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 4
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    iput-object p1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 118
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 121
    .local v0, isChecked:Z
    :cond_1
    const-string v1, "LocationModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch : mSwitch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
