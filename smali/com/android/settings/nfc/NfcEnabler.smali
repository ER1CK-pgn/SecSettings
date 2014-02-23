.class public Lcom/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;
    }
.end annotation


# instance fields
.field private final mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

.field private final mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private final mNfcPayment:Landroid/preference/PreferenceScreen;

.field private mNfcSwitch:Landroid/widget/Switch;

.field private final mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mPolicyEnabled:Z

.field private final mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private final mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private final mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private uimDetectAction:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 3
    .parameter "context"
    .parameter "nfcSwitch"
    .parameter "sBeam"
    .parameter "nfcPayment"
    .parameter "nfcDefaultTransaction"

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 134
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1035
    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$8;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$8;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->uimDetectAction:Ljava/lang/Runnable;

    .line 253
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 254
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 255
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    .line 256
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 257
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 258
    iput-object p4, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    .line 259
    iput-object p5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    .line 261
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 262
    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 264
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 265
    if-nez p3, :cond_1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 267
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 268
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 275
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    .line 278
    return-void

    .line 265
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_1
    new-instance v1, Lcom/android/settings/nfc/SBeamEnabler;

    invoke-direct {v1, p1, p3}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;)V
    .locals 3
    .parameter "context"
    .parameter "nfcSwitch"
    .parameter "androidBeam"
    .parameter "readerSwitch"
    .parameter "nfcPayment"
    .parameter "nfcDefaultTransaction"
    .parameter "helpCtrl"

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 134
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1035
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler$8;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcEnabler$8;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->uimDetectAction:Ljava/lang/Runnable;

    .line 221
    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 222
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    .line 223
    iput-object p7, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 224
    iput-object p4, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 225
    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 226
    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 227
    iput-object p5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    .line 228
    iput-object p6, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    .line 230
    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 231
    iput-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 233
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 234
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 236
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 237
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 245
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/nfc/NfcEnabler;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSBeamSwitch(ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/nfc/NfcEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->forceGrayOut(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcReaderStateChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/NfcEnabler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/NfcEnabler;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->uimDetectAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/nfc/NfcEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->getLockStateFromDevice()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/nfc/NfcEnabler;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private forceGrayOut(I)V
    .locals 7
    .parameter "nfcState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 980
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 982
    const/4 v0, 0x0

    .line 983
    .local v0, is3lmRestricted:Z
    const/4 v1, 0x0

    .line 985
    .local v1, isCenLocked:Z
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcEnabler;->getLockStateFromDevice()I

    move-result v2

    .line 986
    .local v2, val:I
    if-nez v2, :cond_8

    move v1, v3

    .line 988
    :goto_0
    const-string v5, "persist.security.nfc.lockout"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 989
    const/4 v0, 0x1

    .line 992
    :cond_0
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_2

    .line 993
    if-nez v0, :cond_1

    if-eqz v1, :cond_9

    .line 994
    :cond_1
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 998
    :goto_1
    if-eqz v0, :cond_2

    .line 999
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1003
    :cond_2
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_4

    .line 1004
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_a

    .line 1005
    :cond_3
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v5

    invoke-direct {p0, v4, v5, v4}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 1011
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_6

    .line 1012
    if-nez v0, :cond_5

    if-eqz v1, :cond_b

    .line 1013
    :cond_5
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSBeamSwitch(ZZ)V

    .line 1020
    :cond_6
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1021
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_7

    .line 1022
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcEnabler;->getUIMLockStatus()I

    .line 1023
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler;->uimDetectAction:Ljava/lang/Runnable;

    const-wide/16 v5, 0x7530

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1025
    const-string v3, "NfcEnabler"

    const-string v4, "get UIMLock status T.O. timer start "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    .end local v0           #is3lmRestricted:Z
    .end local v1           #isCenLocked:Z
    .end local v2           #val:I
    :cond_7
    return-void

    .restart local v0       #is3lmRestricted:Z
    .restart local v1       #isCenLocked:Z
    .restart local v2       #val:I
    :cond_8
    move v1, v4

    .line 986
    goto :goto_0

    .line 996
    :cond_9
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 1007
    :cond_a
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    goto :goto_2

    .line 1015
    :cond_b
    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSBeamSwitch(ZZ)V

    goto :goto_3
.end method

.method private getLockStateFromDevice()I
    .locals 7

    .prologue
    .line 947
    const/4 v3, -0x1

    .line 948
    .local v3, ret:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 949
    const/4 v4, 0x1

    .line 975
    :goto_0
    return v4

    .line 952
    :cond_0
    const-string v4, "NfcEnabler"

    const-string v5, "[S]getLockStateFromDevice"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v1, 0x0

    .line 955
    .local v1, fileInputStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v4, "/dev/felica_cen"

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 956
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .local v2, fileInputStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v3

    .line 965
    if-eqz v2, :cond_1

    .line 966
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .line 973
    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string v4, "NfcEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[E]getLockStateFromDevice ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 975
    goto :goto_0

    .line 968
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v2       #fileInputStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 969
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 971
    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_1

    .line 957
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 958
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v3, -0x1

    .line 959
    :try_start_3
    const-string v4, "NfcEnabler"

    const-string v5, "[Ex]FileNotFoundException"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 965
    if-eqz v1, :cond_2

    .line 966
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 968
    :catch_2
    move-exception v0

    .line 969
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 960
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 961
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    const/4 v3, -0x1

    .line 962
    :try_start_5
    const-string v4, "NfcEnabler"

    const-string v5, "[Ex]IOException"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 965
    if-eqz v1, :cond_2

    .line 966
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 968
    :catch_4
    move-exception v0

    .line 969
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 964
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 965
    :goto_4
    if-eqz v1, :cond_3

    .line 966
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 970
    :cond_3
    :goto_5
    throw v4

    .line 968
    :catch_5
    move-exception v0

    .line 969
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 964
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v2       #fileInputStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 960
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v2       #fileInputStream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 957
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v2       #fileInputStream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static getPackageLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 835
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "none"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 836
    :cond_0
    const-string v4, ""

    .line 852
    :goto_0
    return-object v4

    .line 839
    :cond_1
    const/4 v4, 0x0

    .line 841
    .local v4, retVal:Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 842
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 843
    .local v2, pI:Landroid/content/pm/PackageInfo;
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 844
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 849
    const-string v5, "NfcEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageLabel returning - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 845
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pI:Landroid/content/pm/PackageInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 846
    .local v0, NNE:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 847
    const-string v4, "PackageNameNotFound"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    const-string v5, "NfcEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageLabel returning - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #NNE:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    const-string v6, "NfcEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPackageLabel returning - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v5
.end method

.method private handleNfcReaderStateChanged(I)V
    .locals 3
    .parameter "newState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 715
    packed-switch p1, :pswitch_data_0

    .line 732
    :goto_0
    :pswitch_0
    return-void

    .line 717
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 718
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 721
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 722
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 725
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 726
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 715
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleNfcStateChanged(I)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 636
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_0

    .line 637
    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNfcStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 712
    :cond_1
    :goto_0
    return-void

    .line 641
    :pswitch_0
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 642
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 643
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    invoke-direct {p0, v3, v0, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 646
    :cond_2
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    .line 647
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcPaymentPref(ZZ)V

    .line 648
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcDefaultTransactionPref(ZZ)V

    .line 651
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 652
    const-string v0, "GATE"

    const-string v1, "<GATE-M>NFC_OFF</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/settings/nfc/NfcEnabler;->procHelpCtrl(Z)V

    goto :goto_0

    .line 659
    :pswitch_1
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 660
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 661
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 662
    invoke-direct {p0, v4, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 666
    :goto_1
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    .line 667
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcPaymentPref(ZZ)V

    .line 668
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcDefaultTransactionPref(ZZ)V

    .line 671
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 672
    const-string v0, "GATE"

    const-string v1, "<GATE-M>NFC_ON</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/settings/nfc/NfcEnabler;->procHelpCtrl(Z)V

    goto :goto_0

    .line 664
    :cond_5
    invoke-direct {p0, v4, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    goto :goto_1

    .line 679
    :pswitch_2
    invoke-direct {p0, v3, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 680
    invoke-direct {p0, v3, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 681
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_6

    .line 682
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    invoke-direct {p0, v3, v0, v1}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 684
    :cond_6
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    .line 685
    invoke-direct {p0, v3, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcPaymentPref(ZZ)V

    .line 686
    invoke-direct {p0, v3, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcDefaultTransactionPref(ZZ)V

    .line 687
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    invoke-interface {v0}, Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;->dismiss()V

    goto/16 :goto_0

    .line 691
    :pswitch_3
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 692
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 693
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_7

    .line 694
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    invoke-direct {p0, v3, v0, v1}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 696
    :cond_7
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    .line 697
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcPaymentPref(ZZ)V

    .line 698
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcDefaultTransactionPref(ZZ)V

    .line 699
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    invoke-interface {v0}, Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;->dismiss()V

    goto/16 :goto_0

    .line 703
    :pswitch_4
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 704
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 705
    invoke-direct {p0, v3, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 706
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    goto/16 :goto_0

    .line 639
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private procHelpCtrl(Z)V
    .locals 3
    .parameter "bOn"

    .prologue
    .line 922
    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procHelpCtrl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    if-nez v0, :cond_0

    .line 927
    :goto_0
    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    invoke-interface {v0, p1}, Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;->show(Z)V

    goto :goto_0
.end method

.method private setAndroidBeamSwitch(ZZZ)V
    .locals 4
    .parameter "bEnable"
    .parameter "bCheck"
    .parameter "bSummary"

    .prologue
    const v0, 0x7f0902a8

    .line 878
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 879
    const/4 p1, 0x0

    .line 880
    const/4 p2, 0x0

    .line 881
    const/4 p3, 0x0

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-nez v1, :cond_1

    .line 901
    :goto_0
    return-void

    .line 886
    :cond_1
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_2

    .line 887
    const-string v1, "NfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndroidBeamSwitch : Enable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]=>["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] summary["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 891
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    xor-int/2addr v1, p2

    if-eqz v1, :cond_3

    .line 892
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 895
    :cond_3
    if-eqz p3, :cond_4

    .line 896
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 898
    :cond_4
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_5
    const v0, 0x7f0902aa

    goto :goto_1
.end method

.method private setNfcDefaultTransactionPref(ZZ)V
    .locals 3
    .parameter "bEnable"
    .parameter "bCheck"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 777
    const-string v0, "NfcEnabler"

    const-string v1, "mNfcTransaction is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :goto_0
    return-void

    .line 780
    :cond_0
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_1

    .line 781
    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNfcDefaultTransaction : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 783
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 785
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcDefaultTransaction:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setNfcPaymentPref(ZZ)V
    .locals 7
    .parameter "bEnable"
    .parameter "bCheck"

    .prologue
    const v6, 0x7f0902bc

    const/4 v5, 0x1

    .line 790
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_0

    .line 791
    const-string v2, "NfcEnabler"

    const-string v3, "mNfcPayment is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_0
    return-void

    .line 794
    :cond_0
    sget-boolean v2, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v2, :cond_1

    .line 795
    const-string v2, "NfcEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNfcPayment : Enable["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_1
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 797
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 801
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getCurrentSeRouteInfo()I

    move-result v1

    .line 802
    .local v1, routeType:I
    const-string v2, "NfcEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNfcPaymentPref SecureElement is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    if-eq v1, v5, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 804
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0902be

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 806
    :cond_3
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_wallet_default"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, defaultWalletPkg:Ljava/lang/String;
    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 809
    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 810
    :cond_4
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 811
    :cond_5
    const-string v2, "LastWalletUsed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 812
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcEnabler;->makeLastWalletSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 815
    :cond_6
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/settings/nfc/NfcEnabler;->getPackageLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 819
    :cond_7
    if-eqz v0, :cond_8

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 820
    :cond_8
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 822
    :cond_9
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcEnabler;->makeLastWalletSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 828
    .end local v0           #defaultWalletPkg:Ljava/lang/String;
    .end local v1           #routeType:I
    :cond_a
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 829
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcPayment:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0902bd

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0
.end method

.method private setNfcSBeamSwitch(ZZ)V
    .locals 3
    .parameter "bEnable"
    .parameter "bCheck"

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSBeamSwitch : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=>["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 936
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method

.method private setNfcSwitch(ZZ)V
    .locals 3
    .parameter "bEnable"
    .parameter "bCheck"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 743
    const/4 p1, 0x0

    .line 744
    const/4 p2, 0x0

    .line 748
    :cond_2
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_3

    .line 749
    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNfcSwitch : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=>["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 752
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method private setNfcSwitchPref(ZZ)V
    .locals 3
    .parameter "bEnable"
    .parameter "bCheck"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_2

    .line 764
    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNfcSwitchPref : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=>["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 767
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method

.method private setReaderSwitch(ZZ)V
    .locals 3
    .parameter "state"
    .parameter "check"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_2

    .line 913
    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReaderSwitch : Enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=>["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 916
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getUIMLockStatus()I
    .locals 3

    .prologue
    .line 1067
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1070
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 1071
    const/4 v1, -0x1

    .line 1074
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getFeliCaUimLockStatus(I)I

    move-result v1

    goto :goto_0
.end method

.method public makeLastWalletSummary()Ljava/lang/String;
    .locals 5

    .prologue
    .line 856
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_last_wallet_default"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    .local v1, lastWalletPkg:Ljava/lang/String;
    const-string v0, ""

    .line 859
    .local v0, lastWallet:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "none"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 860
    :cond_0
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 865
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 863
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/settings/nfc/NfcEnabler;->getPackageLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 574
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isAllEnabled()Z

    move-result v1

    if-ne p2, v1, :cond_1

    .line 576
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_0

    .line 577
    const-string v1, "NfcEnabler"

    const-string v2, "NFC switch state changed, but is not triggered by user action"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_2

    .line 581
    const-string v1, "NfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_2
    if-eqz p2, :cond_3

    .line 583
    invoke-direct {p0, v4, v5}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 584
    invoke-direct {p0, v4, v5}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 585
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 586
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 588
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_0

    .line 591
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 592
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 593
    .local v0, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f091450

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 594
    const v1, 0x7f091452

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 595
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$5;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 601
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$6;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 607
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler$7;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcEnabler$7;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 612
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 614
    .end local v0           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    :cond_4
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 615
    invoke-direct {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 616
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 448
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 449
    .local v0, desiredState:Z
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_0

    .line 450
    const-string v5, "NfcEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange : desired state > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 452
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v5

    if-ne v5, v0, :cond_2

    .line 453
    const-string v3, "NfcEnabler"

    const-string v5, "Nfc switch is already in desired state"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 570
    :cond_1
    :goto_0
    return v3

    .line 457
    :cond_2
    if-eqz v0, :cond_4

    .line 458
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 459
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 460
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 461
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 467
    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 468
    goto :goto_0

    .line 464
    :cond_4
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_1

    .line 471
    :cond_5
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 472
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_6

    .line 473
    const-string v3, "NfcEnabler"

    const-string v5, "RW/P2P switch is already in desired state"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 474
    goto :goto_0

    .line 477
    :cond_6
    if-eqz v0, :cond_8

    .line 478
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 479
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 480
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_7
    :goto_2
    move v3, v4

    .line 486
    goto :goto_0

    .line 483
    :cond_8
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_2

    .line 488
    :cond_9
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 489
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v5

    if-ne v5, v0, :cond_a

    .line 490
    const-string v3, "NfcEnabler"

    const-string v5, "Android Beam switch is already in desired state"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 491
    goto :goto_0

    .line 494
    :cond_a
    if-eqz v0, :cond_c

    .line 495
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 496
    invoke-direct {p0, v4, v4, v4}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 498
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 499
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_b

    .line 500
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSBeamSwitch(ZZ)V

    :cond_b
    :goto_3
    move v3, v4

    .line 555
    goto/16 :goto_0

    .line 505
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 506
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 507
    .local v2, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f091451

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 508
    const v3, 0x7f091453

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 509
    const v3, 0x104000a

    new-instance v5, Lcom/android/settings/nfc/NfcEnabler$2;

    invoke-direct {v5, p0}, Lcom/android/settings/nfc/NfcEnabler$2;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 523
    const/high16 v3, 0x104

    new-instance v5, Lcom/android/settings/nfc/NfcEnabler$3;

    invoke-direct {v5, p0}, Lcom/android/settings/nfc/NfcEnabler$3;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 536
    new-instance v3, Lcom/android/settings/nfc/NfcEnabler$4;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/NfcEnabler$4;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 541
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 543
    .end local v2           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    :cond_d
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 544
    invoke-direct {p0, v4, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 546
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 547
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_b

    .line 548
    invoke-direct {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSBeamSwitch(ZZ)V

    goto :goto_3

    .line 557
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 558
    iget-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 559
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_f

    .line 560
    const-string v3, "NfcEnabler"

    const-string v5, "NFC_Lock_switch call FeliCaLock:S"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 562
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.samsung.felicalock"

    const-string v5, "com.samsung.felicalock.FelicaLockActivity"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .end local v1           #i:Landroid/content/Intent;
    :cond_f
    move v3, v4

    .line 565
    goto/16 :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 413
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_4

    .line 419
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 422
    :cond_4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_5

    .line 423
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 426
    :cond_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_6

    .line 427
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 430
    :cond_6
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_7

    .line 431
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 434
    :cond_7
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_8

    .line 435
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 438
    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string v0, "NfcEnabler"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitch(ZZ)V

    .line 347
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcSwitchPref(ZZ)V

    .line 348
    invoke-direct {p0, v3, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 349
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setReaderSwitch(ZZ)V

    .line 350
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcPaymentPref(ZZ)V

    .line 351
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setNfcDefaultTransactionPref(ZZ)V

    .line 352
    iput-boolean v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    goto :goto_0

    .line 355
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPolicyEnabled:Z

    .line 362
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 364
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_4

    .line 372
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 375
    :cond_4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 379
    :cond_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_6

    .line 380
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 383
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 384
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_7

    .line 385
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcLockSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 390
    :cond_7
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 391
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 394
    invoke-direct {p0, v3, v3, v3}, Lcom/android/settings/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V

    .line 398
    :cond_8
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->forceGrayOut(I)V

    goto/16 :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 622
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_0

    .line 623
    const-string v0, "NfcEnabler"

    const-string v1, "setSwitch !"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_1

    .line 633
    :goto_0
    return-void

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 627
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    .line 629
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
