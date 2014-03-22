.class public final Lcom/android/settings/powersavingmode/PowerSavingEnabler;
.super Ljava/lang/Object;
.source "PowerSavingEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mChangedAutoEnable:Z

.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsInMainMenu:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSupportBrowser:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 50
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mIsInMainMenu:Z

    .line 61
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 63
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 124
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    const-string v1, "com.android.browser"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSupportBrowser:Z

    .line 126
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->refresh_SwitchPreference()V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 50
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mIsInMainMenu:Z

    .line 61
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 63
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 112
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    const-string v1, "com.android.browser"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSupportBrowser:Z

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Z)V
    .locals 0
    .parameter "context"
    .parameter "switch_"
    .parameter "in_main_menu"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 116
    iput-boolean p3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mIsInMainMenu:Z

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 271
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0912b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090d3c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/powersavingmode/PowerSavingEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler$2;-><init>(Lcom/android/settings/powersavingmode/PowerSavingEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 284
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 285
    return-void
.end method


# virtual methods
.method public changeAutoEnable()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mChangedAutoEnable:Z

    .line 218
    return-void
.end method

.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 289
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_switch"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 290
    .local v4, powersavingState:I
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_cpu_clock"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 291
    .local v1, cpu:I
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_display"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 292
    .local v2, display:I
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_background_colour"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 293
    .local v0, back:I
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_haptic_feedback"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 296
    .local v3, haptic:I
    const-string v6, "PowerSavingEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cpu : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", display : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", back : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", haptic : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    move v5, v7

    .line 301
    .local v5, retVal:Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    const-string v9, "vibrator"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 302
    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    move v5, v7

    .line 304
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSupportBrowser:Z

    if-eqz v6, :cond_1

    .line 305
    if-eqz v5, :cond_4

    if-nez v0, :cond_4

    move v5, v7

    .line 308
    :cond_1
    :goto_2
    return v5

    .end local v5           #retVal:Z
    :cond_2
    move v5, v8

    .line 299
    goto :goto_0

    .restart local v5       #retVal:Z
    :cond_3
    move v5, v8

    .line 302
    goto :goto_1

    :cond_4
    move v5, v8

    .line 305
    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 312
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 320
    .local v0, powersavingState:I
    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mIsInMainMenu:Z

    if-eqz v1, :cond_1

    .line 322
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->showAllOptionDisabledDialog()V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 325
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    const-string v1, "PowerSavingEnabler"

    const-string v2, "switch is on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :cond_2
    if-nez p2, :cond_0

    if-ne v0, v4, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 332
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    const-string v1, "PowerSavingEnabler"

    const-string v2, "switch is off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 341
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 343
    .local v1, powersavingState:I
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 351
    .local v0, isChecked:Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 352
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 353
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    const-string v2, "PowerSavingEnabler"

    const-string v3, "switch is on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    :goto_0
    return v4

    .line 357
    :cond_1
    if-nez v0, :cond_0

    if-ne v1, v4, :cond_0

    .line 358
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 359
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    const-string v2, "PowerSavingEnabler"

    const-string v3, "switch is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PowerSavingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v1, "PowerSavingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSM_SWITCH = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_switch"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mCheck:I

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 197
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mChangedAutoEnable:Z

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    return-void

    .line 199
    :cond_2
    const-string v1, "changed"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public refresh_SwitchPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 222
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 224
    .local v0, powersavingState:I
    if-ne v0, v3, :cond_1

    .line 225
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 236
    :cond_0
    :goto_0
    const-string v1, "PowerSavingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powersavingState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 133
    iput-boolean v4, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mChangedAutoEnable:Z

    .line 136
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, powersavingState:I
    const-string v1, "PowerSavingEnabler"

    const-string v2, "resume()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_0

    const-string v1, "PowerSavingEnabler"

    const-string v2, "mSwitch == null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    const-string v1, "PowerSavingEnabler"

    const-string v2, "mSwitchPref == null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mCheck:I

    .line 141
    if-ne v0, v3, :cond_6

    .line 142
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 150
    :cond_3
    const-string v1, "PowerSavingEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_5

    .line 185
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    :cond_5
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.POWERSAVING_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    return-void

    .line 152
    :cond_6
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_7

    .line 153
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 155
    :cond_7
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    .line 156
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 240
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 244
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 245
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 249
    .local v0, powersavingState:I
    if-ne v0, v3, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 251
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 262
    :goto_1
    const-string v1, "PowerSavingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powersavingState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method
