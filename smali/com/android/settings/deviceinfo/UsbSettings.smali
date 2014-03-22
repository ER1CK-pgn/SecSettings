.class public Lcom/android/settings/deviceinfo/UsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# instance fields
.field private isTryMtpUsb30:Z

.field private mMtp:Landroid/preference/CheckBoxPreference;

.field private mMtpUsb3:Landroid/preference/CheckBoxPreference;

.field private mMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

.field private mNotSupprtMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

.field private mPtp:Landroid/preference/CheckBoxPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbAccessoryMode:Z

.field private mUsbChargingOnly:Landroid/preference/CheckBoxPreference;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private final maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    .line 61
    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mNotSupprtMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    .line 63
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$3;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->isTryMtpUsb30:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->isTryMtpUsb30:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 104
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 107
    :cond_0
    const v2, 0x7f0700d3

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 108
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 110
    const-string v2, "usb_mtp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    .line 111
    const-string v2, "usb_ptp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    .line 112
    const-string v2, "usb_mtp_usb3"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/CheckBoxPreference;

    .line 113
    const-string v2, "usb_charging"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/CheckBoxPreference;

    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 116
    .local v1, um:Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 118
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 120
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    :cond_2
    const-string v2, "UsbSettings"

    const-string v3, "createPreferenceHierarchy remove Charging only"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    return-object v0
.end method

.method private registerBroadCastRec()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v0, lIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    return-void
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 5
    .parameter "function"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    const-string v1, "mtp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 243
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 244
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 259
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 260
    .local v0, um:Landroid/os/UserManager;
    const-string v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    const-string v1, "UsbSettings"

    const-string v2, "USB is locked down"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 264
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 278
    :goto_1
    return-void

    .line 246
    .end local v0           #um:Landroid/os/UserManager;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 248
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 250
    :cond_1
    const-string v1, "ptp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 252
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 253
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 265
    .restart local v0       #um:Landroid/os/UserManager;
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v1, :cond_4

    .line 267
    const-string v1, "UsbSettings"

    const-string v2, "USB Normal Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 270
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 272
    :cond_4
    const-string v1, "UsbSettings"

    const-string v2, "USB Accessory Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 274
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getMessageOfDialog()I
    .locals 3

    .prologue
    .line 367
    const v0, 0x7f090670

    .line 369
    .local v0, stringID:I
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    const v0, 0x7f090671

    .line 374
    :cond_0
    :goto_0
    return v0

    .line 371
    :cond_1
    const-string v1, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    :cond_2
    const v0, 0x7f090672

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->isTryMtpUsb30:Z

    .line 140
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    .line 99
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 100
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 145
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 285
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v3

    .line 288
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->isTryMtpUsb30:Z

    .line 291
    instance-of v1, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 292
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 293
    .local v0, checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 294
    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 298
    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 300
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 306
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 307
    const-string v1, "mtp"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 310
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 313
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 316
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ptp"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 317
    const-string v1, "ptp"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->showMtpUsb3Dialog()V

    goto :goto_0

    .line 321
    :cond_7
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbChargingOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const-string v1, "UsbSettings"

    const-string v2, "onPreferenceTreeClick set ASKON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 326
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 334
    :cond_8
    const-string v1, "UsbSettings"

    const-string v2, "onPreferenceTreeClick : ignore ASKON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 158
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->registerBroadCastRec()V

    .line 166
    return-void
.end method

.method public showMtpUsb3Dialog()V
    .locals 3

    .prologue
    .line 341
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090674

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getMessageOfDialog()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09066f

    new-instance v2, Lcom/android/settings/deviceinfo/UsbSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/UsbSettings$6;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090195

    new-instance v2, Lcom/android/settings/deviceinfo/UsbSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/UsbSettings$5;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/UsbSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/UsbSettings$4;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    .line 364
    return-void
.end method

.method public showNotSupportMtpUsb3Dialog()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090674

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090673

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09079f

    new-instance v2, Lcom/android/settings/deviceinfo/UsbSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/UsbSettings$2;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mNotSupprtMtpUsb3SettingDialogFragment:Landroid/app/AlertDialog;

    .line 90
    return-void
.end method
