.class public Lcom/android/settings/nfc/SBeamEnabler;
.super Ljava/lang/Object;
.source "SBeamEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;
    }
.end annotation


# static fields
.field private static mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# instance fields
.field private mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mDeviceSettingsPolicy:Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;

.field private mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReqNfcTurnOn:Z

.field private mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

.field private mSbeamSwitch:Landroid/widget/Switch;

.field private mbOn:Z

.field private mbOnLastState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 3
    .parameter "context"
    .parameter "sbeam"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 62
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 64
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 66
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 68
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 70
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 72
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 84
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 424
    new-instance v1, Lcom/android/settings/nfc/SBeamEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/SBeamEnabler$1;-><init>(Lcom/android/settings/nfc/SBeamEnabler;)V

    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 98
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 100
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->initEnabler()V

    .line 101
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 105
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    sput-object v1, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 106
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mDeviceSettingsPolicy:Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;)V
    .locals 3
    .parameter "context"
    .parameter "nfcSwitch"
    .parameter "helpCtrl"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 62
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 64
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 66
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 68
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 70
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 72
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 84
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 424
    new-instance v1, Lcom/android/settings/nfc/SBeamEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/SBeamEnabler$1;-><init>(Lcom/android/settings/nfc/SBeamEnabler;)V

    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 114
    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 116
    iput-object p3, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 118
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->initEnabler()V

    .line 119
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 123
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    sput-object v1, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 124
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mDeviceSettingsPolicy:Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/SBeamEnabler;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/SBeamEnabler;->changedSbeamState(Landroid/content/Intent;)V

    return-void
.end method

.method private changedSbeamState(Landroid/content/Intent;)V
    .locals 4
    .parameter "i"

    .prologue
    .line 349
    const-string v1, "turn_on"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 350
    .local v0, bOn:Z
    const-string v1, "[SBeam]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBeamEnabler.changedSbeamState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    .line 352
    return-void
.end method

.method private disableButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 362
    :cond_1
    return-void
.end method

.method private initEnabler()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->initPreferenceForSbeam(Landroid/content/Context;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 204
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.initEnabler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 208
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.action.SBEAM_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.action.SBEAM_OFF_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public static initPreferenceForSbeam(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 470
    const-string v5, "[SBeam]"

    const-string v6, "SBeamEnabler.initPreferenceForSbeam"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v5, "pref_sbeam"

    const/4 v6, 0x5

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 473
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 474
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "SBeam_support"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 478
    const-string v5, "SBeam_support"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 479
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 485
    :cond_0
    const-string v5, "SBeam_on_off"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 486
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sbeam_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 487
    .local v1, modeOn:I
    const-string v5, "[SBeam]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SBeamEnabler.initPreferenceForSbeam : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v5, "SBeam_on_off"

    if-ne v1, v3, :cond_3

    :goto_0
    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 491
    .end local v1           #modeOn:I
    :cond_1
    const-string v3, "sbeam_last_status"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 492
    const-string v3, "sbeam_last_status"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 495
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 497
    return-void

    .restart local v1       #modeOn:I
    :cond_3
    move v3, v4

    .line 488
    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 545
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAllowSBeamOnOperatorAirplaneMode(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 568
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CMCC"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    :cond_0
    invoke-static {p0}, Lcom/android/settings/nfc/SBeamEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    const-string v1, "[SBeam]"

    const-string v2, "The S-beam should not be turned on in Operator AirPlane mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v1, 0x0

    .line 578
    :goto_0
    return v1

    .line 577
    :cond_1
    const-string v1, "[SBeam]"

    const-string v2, "SBeamEnabler.isAllowSBeamOnAirplaneMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isAllowWifiByDevicePolicy(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 549
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 552
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v1

    .line 555
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 558
    const-string v1, "[SBeam]"

    const-string v2, "SBeamEnabler.isAllowWifiByDevicePolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSBeamOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 539
    const-string v1, "pref_sbeam"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 541
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "SBeam_on_off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static procAbeamChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 504
    const-string v1, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    const-string v1, "android.nfc.extra.ABEAM_STATE"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 509
    .local v0, bAbeamOn:Z
    const-string v1, "[SBeam]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBeamEnabler.procAbeamChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-nez v0, :cond_0

    .line 515
    invoke-static {p0, v4, v4}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method private procHelpCtrl(Z)V
    .locals 3
    .parameter "bOn"

    .prologue
    .line 414
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.procHelpCtrl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 417
    :cond_0
    if-eqz p1, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    invoke-interface {v0}, Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;->dismiss()V

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    invoke-interface {v0}, Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;->show()V

    goto :goto_0
.end method

.method public static saveSbeamOn(Landroid/content/Context;ZZ)V
    .locals 6
    .parameter "context"
    .parameter "bOn"
    .parameter "bSavedLastState"

    .prologue
    const/4 v2, 0x0

    .line 519
    const-string v3, "[SBeam]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SBeamEnabler.saveSbeamOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    sget-object v3, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSBeamAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 524
    :cond_0
    const/4 p1, 0x0

    .line 527
    :cond_1
    const-string v3, "pref_sbeam"

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 529
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 530
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SBeam_on_off"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 531
    if-eqz p2, :cond_2

    .line 532
    const-string v3, "sbeam_last_status"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 533
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sbeam_mode"

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 536
    return-void
.end method

.method private sendSBeamOff()V
    .locals 3

    .prologue
    .line 460
    const-string v1, "[SBeam]"

    const-string v2, "SBeamEnabler.sendSBeamOff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.SBEAM_OFF_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, i:Landroid/content/Intent;
    const-string v1, "turn_on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 463
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 464
    return-void
.end method

.method private setABeamSwitchStatus(ZZZ)V
    .locals 2
    .parameter "bEnable"
    .parameter "bCheck"
    .parameter "bSummary"

    .prologue
    .line 597
    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    const/4 p1, 0x0

    .line 599
    const/4 p2, 0x0

    .line 600
    const/4 p3, 0x0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 617
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 607
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 611
    :cond_2
    if-eqz p3, :cond_3

    .line 612
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f0902df

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 614
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0902e0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0902e1

    goto :goto_1
.end method

.method private setState(ZZ)V
    .locals 4
    .parameter "bEnable"
    .parameter "bOn"

    .prologue
    const/4 v3, 0x0

    .line 366
    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isSBeamAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isWifiDirectAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    :cond_0
    const/4 p1, 0x0

    .line 372
    const/4 p2, 0x0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mDeviceSettingsPolicy:Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;->isNFCStateChangeAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 392
    :cond_2
    :goto_0
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.setState : Enable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") On("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, v3}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    .line 396
    iput-boolean p2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 398
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 400
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.setState : isChecked ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_4

    .line 407
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 409
    invoke-direct {p0, p2}, Lcom/android/settings/nfc/SBeamEnabler;->procHelpCtrl(Z)V

    .line 411
    :cond_4
    return-void

    .line 379
    :pswitch_0
    const/4 p1, 0x0

    .line 380
    const/4 p2, 0x0

    .line 381
    goto/16 :goto_0

    .line 384
    :pswitch_1
    const/4 p1, 0x0

    .line 385
    const/4 p2, 0x1

    .line 386
    goto/16 :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static showAirplaneMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 582
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler. showAirplaneMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const v0, 0x7f090321

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 584
    return-void
.end method

.method public static showNotAllowWifi(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 563
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.showNotAllowWifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const v0, 0x7f0902f1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 565
    return-void
.end method

.method private turnOn(Z)Z
    .locals 7
    .parameter "bOn"

    .prologue
    const v6, 0x7f0902f0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 214
    const-string v1, "[SBeam]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBeamEnabler.turnOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->validateNfcAdapter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v4

    .line 220
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nfc/SBeamEnabler;->isAllowWifiByDevicePolicy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->sendSBeamOff()V

    .line 222
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nfc/SBeamEnabler;->showNotAllowWifi(Landroid/content/Context;)V

    goto :goto_0

    .line 226
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nfc/SBeamEnabler;->isAllowSBeamOnOperatorAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 227
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->sendSBeamOff()V

    .line 228
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nfc/SBeamEnabler;->showAirplaneMode(Landroid/content/Context;)V

    goto :goto_0

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v4}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    .line 233
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/SBeamEnabler;->procHelpCtrl(Z)V

    .line 235
    iput-boolean p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 236
    iput-boolean p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 237
    if-eqz p1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 239
    .local v0, nState:I
    const-string v1, "[SBeam]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBeamEnabler.turnOn : Current("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x5

    if-ne v1, v0, :cond_4

    .line 241
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 242
    iput-boolean v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 243
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_0

    .line 245
    :cond_4
    if-eq v5, v0, :cond_5

    const/4 v1, 0x2

    if-eq v1, v0, :cond_5

    .line 246
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 247
    iput-boolean v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 248
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    goto/16 :goto_0

    .line 252
    :cond_5
    if-ne v5, v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 256
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-direct {p0, v4, v4, v4}, Lcom/android/settings/nfc/SBeamEnabler;->setABeamSwitchStatus(ZZZ)V

    goto/16 :goto_0
.end method

.method private validateNfcAdapter()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 442
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    .line 446
    const-string v0, "[SBeam]"

    const-string v2, "SBeamEnabler.validateNfcAdapter : context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 447
    goto :goto_0

    .line 450
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 451
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_0

    .line 452
    const-string v0, "[SBeam]"

    const-string v2, "SBeamEnabler.validateNfcAdapter : fail to get"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 453
    goto :goto_0
.end method


# virtual methods
.method public changedNfcState(ILandroid/content/Intent;)V
    .locals 5
    .parameter "newState"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 269
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.changedNfcState : REQ ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] CUR ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isSBeamAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mDeviceSettingsPolicy:Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;->isNFCStateChangeAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    :cond_0
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    .line 346
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    if-ne v4, p1, :cond_5

    .line 280
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_3

    .line 282
    iput-boolean v3, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 285
    :cond_3
    if-eqz p2, :cond_4

    .line 286
    const-string v0, "android.nfc.extra.PREF_ADAPTER_STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 288
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.changedNfcState : POWER OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    goto :goto_0

    .line 293
    :cond_5
    const/4 v0, 0x3

    if-ne v0, p1, :cond_9

    .line 294
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->validateNfcAdapter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 301
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.changedNfcState : Enabled NDEF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-direct {p0, v4, v0}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    .line 317
    :cond_6
    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    goto :goto_0

    .line 304
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_8

    .line 305
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 306
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    .line 308
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 310
    invoke-direct {p0, v4, v4, v4}, Lcom/android/settings/nfc/SBeamEnabler;->setABeamSwitchStatus(ZZZ)V

    goto :goto_1

    .line 314
    :cond_8
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    goto :goto_1

    .line 318
    :cond_9
    const/4 v0, 0x4

    if-ne v0, p1, :cond_a

    .line 319
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_TURNING_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->disableButton()V

    goto/16 :goto_0

    .line 325
    :cond_a
    const/4 v0, 0x2

    if-ne v0, p1, :cond_b

    .line 326
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_TURNING_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->disableButton()V

    goto/16 :goto_0

    .line 332
    :cond_b
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 333
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_CARD_MODE_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->validateNfcAdapter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_c

    .line 341
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto/16 :goto_0

    .line 343
    :cond_c
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    goto/16 :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "btnView"
    .parameter "bOn"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 180
    invoke-direct {p0, p2}, Lcom/android/settings/nfc/SBeamEnabler;->turnOn(Z)Z

    .line 181
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 183
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    const/4 v1, 0x0

    .line 175
    .end local p2
    :goto_0
    return v1

    .line 170
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 171
    .local v0, bOn:Z
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 172
    const/4 v1, 0x1

    goto :goto_0

    .line 175
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/SBeamEnabler;->turnOn(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public procOnPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    return-void
.end method

.method public procOnResume()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 135
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isAllowWifiByDevicePolicy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->sendSBeamOff()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->showNotAllowWifi(Landroid/content/Context;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/nfc/SBeamEnabler;->changedNfcState(ILandroid/content/Intent;)V

    .line 152
    :cond_3
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    .line 186
    const-string v0, "[SBeam]"

    const-string v1, "setSwitch !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 191
    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 193
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/nfc/SBeamEnabler;->changedNfcState(ILandroid/content/Intent;)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
