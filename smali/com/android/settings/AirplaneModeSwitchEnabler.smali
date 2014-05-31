.class public Lcom/android/settings/AirplaneModeSwitchEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$1;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler$2;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 100
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 104
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 3
    .parameter "context"
    .parameter "check_"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$1;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler$2;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 111
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 115
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/AirplaneModeSwitchEnabler;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 217
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 218
    .local v3, serviceState:Landroid/telephony/ServiceState;
    const/4 v0, 0x0

    .line 220
    .local v0, airplaneModeEnabled:Z
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 223
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 225
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v6, :cond_0

    .line 227
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 228
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 229
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 237
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v5, :cond_1

    .line 238
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 239
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 265
    :cond_1
    :goto_1
    return-void

    .line 232
    :cond_2
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 233
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 242
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    move v0, v4

    .line 243
    :goto_2
    const-string v6, "AirplaneModeSwitchEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onAirplaneModeChanged : serviceState.getState() return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v6, "AirplaneModeSwitchEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onAirplaneModeChanged : airplaneModeEnabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_6

    move v2, v4

    .line 246
    .local v2, expectAirplaneModeOn:Z
    :goto_3
    if-ne v0, v2, :cond_1

    .line 247
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v6, :cond_4

    .line 249
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_7

    .line 250
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 251
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 259
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v5, :cond_1

    .line 260
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 261
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    .end local v2           #expectAirplaneModeOn:Z
    :cond_5
    move v0, v5

    .line 242
    goto :goto_2

    :cond_6
    move v2, v5

    .line 245
    goto :goto_3

    .line 254
    .restart local v2       #expectAirplaneModeOn:Z
    :cond_7
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 255
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_4
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5
    .parameter "enabling"

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 190
    :cond_3
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 193
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 195
    const-string v1, "AirplaneModeSwitchEnabler"

    const-string v2, "Intent to IMSService for sending DE-REG packet"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 206
    :goto_0
    return-void

    .line 201
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 271
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, p2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const-string v6, "ril.cdma.inecmmode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 278
    move v5, p2

    .line 279
    .local v5, value:Z
    const v1, 0x7f090cbd

    .line 280
    .local v1, resEnableMsg:I
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 281
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v7, "com.android.mms"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 282
    const v1, 0x7f090cc0

    .line 287
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 288
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 289
    const v1, 0x7f090cc1

    .line 303
    :cond_3
    :goto_2
    if-eqz v5, :cond_a

    move v2, v1

    .line 304
    .local v2, resMsg:I
    :goto_3
    if-eqz v5, :cond_b

    const v4, 0x7f090cbb

    .line 305
    .local v4, resTitle:I
    :goto_4
    const v3, 0x104000a

    .line 307
    .local v3, resOK:I
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v6, :cond_4

    .line 308
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 309
    const v2, 0x7f0906a6

    .line 310
    const v4, 0x7f0906a5

    .line 311
    const v3, 0x7f0906a7

    .line 315
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, mAlertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 317
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 318
    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$3;

    invoke-direct {v6, p0, v5}, Lcom/android/settings/AirplaneModeSwitchEnabler$3;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    const/high16 v6, 0x104

    new-instance v7, Lcom/android/settings/AirplaneModeSwitchEnabler$4;

    invoke-direct {v7, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$4;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 346
    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$5;

    invoke-direct {v6, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$5;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 360
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 284
    .end local v0           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local v2           #resMsg:I
    .end local v3           #resOK:I
    .end local v4           #resTitle:I
    :cond_5
    const v1, 0x7f090cc1

    goto :goto_1

    .line 291
    :cond_6
    const-string v6, "CHM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "CHC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 293
    :cond_7
    const v1, 0x7f090cbe

    goto :goto_2

    .line 295
    :cond_8
    const v1, 0x7f090cbf

    goto :goto_2

    .line 299
    :cond_9
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 300
    const v1, 0x7f090cc2

    goto :goto_2

    .line 303
    :cond_a
    const v2, 0x7f090cbc

    goto :goto_3

    .line 304
    .restart local v2       #resMsg:I
    :cond_b
    const v4, 0x7f09019d

    goto :goto_4
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 411
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, p2, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    const-string v5, "ril.cdma.inecmmode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 417
    move v4, p2

    .line 418
    .local v4, value:Z
    const v1, 0x7f090cbd

    .line 419
    .local v1, resEnableMsg:I
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 420
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 421
    const v1, 0x7f090cc0

    .line 426
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 428
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 429
    const v1, 0x7f090cc1

    .line 439
    :cond_3
    :goto_2
    if-eqz v4, :cond_8

    move v2, v1

    .line 440
    .local v2, resMsg:I
    :goto_3
    if-eqz v4, :cond_9

    const v3, 0x7f090cbb

    .line 441
    .local v3, resTitle:I
    :goto_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    .local v0, mAlertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 444
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$6;

    invoke-direct {v6, p0, v4}, Lcom/android/settings/AirplaneModeSwitchEnabler$6;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 453
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/settings/AirplaneModeSwitchEnabler$7;

    invoke-direct {v6, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$7;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 465
    new-instance v5, Lcom/android/settings/AirplaneModeSwitchEnabler$8;

    invoke-direct {v5, p0}, Lcom/android/settings/AirplaneModeSwitchEnabler$8;-><init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 480
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 423
    .end local v0           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local v2           #resMsg:I
    .end local v3           #resTitle:I
    :cond_4
    const v1, 0x7f090cc1

    goto :goto_1

    .line 431
    :cond_5
    const-string v5, "CHM"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 433
    :cond_6
    const v1, 0x7f090cbe

    goto :goto_2

    .line 435
    :cond_7
    const v1, 0x7f090cbf

    goto :goto_2

    .line 439
    :cond_8
    const v2, 0x7f090cbc

    goto :goto_3

    .line 440
    .restart local v2       #resMsg:I
    :cond_9
    const v3, 0x7f09019d

    goto :goto_4
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v1, :cond_0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 170
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 172
    :cond_3
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "AirplaneModeSwitchEnabler"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 126
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 127
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 138
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    :cond_3
    return-void

    .line 131
    .restart local v0       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckBox(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 2
    .parameter "check_"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-ne v0, p1, :cond_0

    .line 384
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 379
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 380
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 4
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    .line 387
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 406
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 391
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 392
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 395
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 397
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 399
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 403
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
