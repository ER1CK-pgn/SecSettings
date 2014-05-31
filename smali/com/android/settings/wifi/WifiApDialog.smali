.class public Lcom/android/settings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DBG:Z

.field private static final MAX_CLIENT:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private customView:Landroid/view/View;

.field private hideSsidDoNotShowAgain:Z

.field private isTimeoutValueChanged:Z

.field private mChannel:Landroid/widget/Spinner;

.field private mChannel5g:Landroid/widget/Spinner;

.field private mChannel5genabled:Z

.field private mContext:Landroid/content/Context;

.field public mDismissIfOpen:Z

.field private mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHideSsidDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mLast2gChannel:I

.field private mLast5gChannel:I

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMacaddrAcl:I

.field private mNumBasedOnCharger:I

.field private mNumBasedOnCountry:I

.field private mPassword:Landroid/widget/EditText;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityMsg:Landroid/widget/TextView;

.field private mSecurityTypeIndex:I

.field private mSelectedChannel:I

.field private mSelectedMaxClient:I

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsid:Landroid/widget/EditText;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSecurityTypeIndex:I

.field private mTempSsid:Ljava/lang/String;

.field private mUserSelectOpenSecurity:Z

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private maxClientSpinner:Landroid/widget/Spinner;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private timeoutSettingsSpinner:Landroid/widget/Spinner;

.field private wifiAp5gDoNotShowAgain:Z

.field private wifiAp5gItem:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCountry:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiApDialog;->DBG:Z

    .line 153
    const-string v0, "10"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/WifiApDialog;->MAX_CLIENT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    const v0, 0x7f10003d

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 100
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 101
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 105
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 120
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    .line 126
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    .line 127
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    .line 128
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 129
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    .line 135
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gDoNotShowAgain:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5genabled:Z

    .line 138
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "36"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    .line 139
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "149"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    .line 141
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    .line 142
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    .line 149
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 150
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 155
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 373
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$1;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 716
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$2;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 740
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$3;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 161
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 162
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 163
    if-eqz p3, :cond_0

    .line 164
    invoke-static {p3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 166
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 167
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 168
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    .line 175
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutIndexFromValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 178
    :cond_0
    return-void

    .line 170
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->getChgType()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiApDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsidDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings/wifi/WifiApDialog;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsidDoNotShowAgain:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiApDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiApDialog;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->customView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings/wifi/WifiApDialog;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiApDialog;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/WifiApDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    return p1
.end method

.method private getChgType()Z
    .locals 6

    .prologue
    .line 1130
    const-string v0, "/sys/class/sec/switch/chg_type"

    .line 1131
    const/4 v3, 0x0

    .line 1132
    const-string v1, ""

    .line 1134
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1135
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 1136
    :try_start_2
    const-string v1, "WifiApDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChgType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1141
    if-eqz v2, :cond_0

    .line 1142
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1148
    :cond_0
    :goto_0
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1149
    :cond_1
    const/4 v0, 0x1

    .line 1151
    :goto_1
    return v0

    .line 1143
    :catch_0
    move-exception v1

    .line 1144
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1137
    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 1138
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1141
    if-eqz v2, :cond_0

    .line 1142
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 1143
    :catch_2
    move-exception v1

    .line 1144
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1140
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 1141
    :goto_3
    if-eqz v2, :cond_2

    .line 1142
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1145
    :cond_2
    :goto_4
    throw v0

    .line 1143
    :catch_3
    move-exception v1

    .line 1144
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1151
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1140
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1137
    :catch_4
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "wifiConfig"

    .prologue
    const/4 v0, 0x1

    .line 217
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const/4 v0, 0x2

    goto :goto_0

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1170
    sparse-switch p1, :sswitch_data_0

    .line 1184
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1172
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1174
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1176
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1178
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1180
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1182
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1170
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    const/16 v0, 0x4b0

    .line 1188
    packed-switch p1, :pswitch_data_0

    .line 1202
    :goto_0
    :pswitch_0
    return v0

    .line 1190
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1192
    :pswitch_2
    const/16 v0, 0x12c

    goto :goto_0

    .line 1194
    :pswitch_3
    const/16 v0, 0x258

    goto :goto_0

    .line 1198
    :pswitch_4
    const/16 v0, 0x708

    goto :goto_0

    .line 1200
    :pswitch_5
    const/16 v0, 0xe10

    goto :goto_0

    .line 1188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 1164
    const-string v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1165
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "600"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private restartFocusedViewInput()V
    .locals 2

    .prologue
    .line 1045
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1046
    .local v0, focusedView:Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 1047
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 1049
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1050
    :cond_2
    if-eqz v0, :cond_0

    .line 1051
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->restartViewInput(Landroid/view/View;)V

    goto :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1059
    if-eqz p1, :cond_0

    .line 1060
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1061
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1065
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private setTimeout(I)V
    .locals 3
    .parameter

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const-string v1, "SAMSUNG_HOTSPOT"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1159
    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1161
    return-void
.end method

.method private showSecurityFields()V
    .locals 6

    .prologue
    const v5, 0x7f0b0523

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 959
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0522

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    .line 960
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v1, :cond_1

    .line 961
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 962
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 963
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 966
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 972
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 973
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 974
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 977
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 979
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0524

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 984
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 986
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 979
    .end local v0           #password:Ljava/lang/String;
    :cond_3
    const/16 v1, 0x80

    goto :goto_1
.end method

.method private validate()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 766
    const/4 v4, 0x0

    .line 767
    .local v4, trimedSsidLength:I
    const/4 v3, 0x0

    .line 768
    .local v3, trimedPasswordLength:I
    const/4 v2, 0x1

    .line 771
    .local v2, enabled:Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 774
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 775
    const/4 v2, 0x0

    .line 779
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v5, :cond_2

    .line 780
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 782
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_2

    .line 783
    :cond_1
    const/4 v2, 0x0

    .line 787
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v5, :cond_3

    .line 788
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 791
    :cond_3
    iget v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v5, v7, :cond_4

    iget v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v5, v8, :cond_5

    :cond_4
    if-eqz v3, :cond_7

    :cond_5
    iget v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v5, v7, :cond_6

    iget v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v5, v8, :cond_8

    :cond_6
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_8

    .line 793
    :cond_7
    const/4 v2, 0x0

    .line 796
    :cond_8
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 797
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_9

    .line 798
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 800
    :cond_9
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 869
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 870
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 866
    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 994
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 996
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 997
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 998
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 999
    :cond_3
    return-void
.end method

.method public getCheckShowPassword()Z
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0524

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 227
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 235
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 238
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 241
    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 242
    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 244
    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 247
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 248
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfigTxPower()I

    move-result v3

    if-ltz v3, :cond_0

    .line 249
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfigTxPower()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 252
    :cond_0
    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v3, :pswitch_data_0

    .line 275
    const/4 v0, 0x0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_1
    return-object v0

    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    move v3, v5

    .line 238
    goto :goto_0

    .line 254
    .restart local v2       #wifiManager:Landroid/net/wifi/WifiManager;
    :pswitch_0
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 258
    :pswitch_1
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 259
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 260
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 267
    .end local v1           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 268
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 269
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 270
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .restart local v1       #password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOpenWarningFlag()Z
    .locals 1

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    return v0
.end method

.method public getTimeoutValueChangedFlag()Z
    .locals 1

    .prologue
    .line 1006
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 683
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0520

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 692
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_0

    .line 713
    :cond_2
    :goto_0
    return-void

    .line 694
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 697
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 698
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 703
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 707
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 804
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 860
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 806
    .restart local p1
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x90

    :goto_1
    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 811
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 812
    .local v2, password:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 813
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 806
    .end local v2           #password:Ljava/lang/String;
    :cond_1
    const/16 v3, 0x80

    goto :goto_1

    .line 816
    .restart local p1
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b0526

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    .line 822
    .restart local p1
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 823
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f09049b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 825
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const-string v6, "SAMSUNG_HOTSPOT"

    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 826
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v6, "HIDE_SSID_DO_NOTSHOW_AGAIN"

    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_4

    move v3, v5

    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    .line 827
    const-string v3, "WifiApDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hideSsidDoNotShowAgain = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    if-nez v3, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->showHideSsidWarningDialog()V

    goto/16 :goto_0

    .line 834
    :pswitch_4
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    .line 842
    .local v0, is2gChecked:Z
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    move v6, v3

    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 843
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    :goto_4
    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 844
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v0, :cond_7

    :goto_5
    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_5
    move v6, v4

    .line 842
    goto :goto_3

    :cond_6
    move v4, v3

    .line 843
    goto :goto_4

    :cond_7
    move v5, v3

    .line 844
    goto :goto_5

    .line 847
    .end local v0           #is2gChecked:Z
    :pswitch_5
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    .line 855
    .local v1, is5gChecked:Z
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v1, :cond_9

    move v6, v4

    :goto_6
    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 856
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    if-eqz v1, :cond_8

    move v4, v3

    :cond_8
    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 857
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v1, :cond_a

    :goto_7
    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_9
    move v6, v3

    .line 855
    goto :goto_6

    :cond_a
    move v5, v3

    .line 857
    goto :goto_7

    .line 804
    :pswitch_data_0
    .packed-switch 0x7f0b051f
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0401f5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 429
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b0521

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 430
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 431
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b0520

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 437
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 438
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 441
    .local v3, context:Landroid/content/Context;
    iput-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 442
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/settings/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    .line 444
    new-instance v8, Lcom/android/settings/Utils$LengthFilter;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    .line 445
    .local v8, lengthFilter:Lcom/android/settings/Utils$LengthFilter;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b02cb

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b051e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    .line 448
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b04ce

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 449
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 452
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b051f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 453
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 454
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v9, :cond_0

    .line 455
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v10, v10, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 457
    :cond_0
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v9, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b0525

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 460
    .local v1, advanced:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 461
    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b0529

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    .line 464
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 477
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b0527

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 478
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b0528

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 479
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b052a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    .line 480
    const/4 v6, 0x0

    .line 483
    .local v6, getChinfo:I
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    .line 491
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    add-int/2addr v9, v10

    if-lez v9, :cond_3

    .line 492
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 493
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v9, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 495
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v9, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    add-int/2addr v9, v10

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    .line 498
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    if-ge v7, v9, :cond_1

    .line 499
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    aget-object v10, v10, v7

    aput-object v10, v9, v7

    .line 498
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 501
    :cond_1
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    if-lez v9, :cond_2

    .line 502
    iget v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    :goto_1
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    add-int/2addr v9, v10

    if-ge v7, v9, :cond_2

    .line 503
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iget v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    sub-int v11, v7, v11

    aget-object v10, v10, v11

    aput-object v10, v9, v7

    .line 502
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 506
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v10, 0x1090008

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    invoke-direct {v0, v9, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 507
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v9, 0x1090009

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 508
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 509
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 511
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    const/16 v10, 0xe

    if-ge v9, v10, :cond_9

    .line 512
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 513
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 514
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 515
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 516
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 535
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v7           #i:I
    :cond_3
    :goto_2
    const/4 v9, -0x1

    const v10, 0x7f0904d2

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 536
    const/4 v9, -0x2

    const v10, 0x7f0904d3

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 539
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v9, :cond_5

    .line 540
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v10, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 542
    const v9, 0x7f0904a7

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    .line 547
    :goto_3
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v9, v9, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v9, :cond_c

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v10, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 556
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_d

    .line 558
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 563
    :goto_5
    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 565
    :cond_4
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v10, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 567
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 577
    :cond_5
    :goto_6
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 578
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/text/InputFilter;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 579
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 581
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b0524

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v9, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 584
    .local v4, cr:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    .line 585
    .local v5, defaultValue:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Wifi_EnableShowPasswordAsDefault"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "USC"

    sget-object v10, Lcom/android/settings/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 587
    :cond_6
    const/4 v5, 0x1

    .line 589
    :cond_7
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b0524

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v10, "wifi_ap_show_passwd"

    invoke-static {v4, v10, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 593
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 595
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b052c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    .line 597
    sget v2, Lcom/android/settings/wifi/WifiApDialog;->MAX_CLIENT:I

    .line 636
    .local v2, changeableMaxvalue:I
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v9, :cond_8

    .line 637
    if-eqz v2, :cond_10

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-ge v2, v9, :cond_10

    .line 638
    add-int/lit8 v9, v2, -0x1

    iput v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    .line 642
    :cond_8
    :goto_8
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 643
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 649
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v10, 0x7f0b052e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    .line 651
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 652
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 658
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 660
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 661
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 662
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 663
    return-void

    .line 518
    .end local v2           #changeableMaxvalue:I
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #defaultValue:I
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v7       #i:I
    :cond_9
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 519
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 520
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 521
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 522
    const/4 v7, 0x0

    :goto_9
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    array-length v9, v9

    if-ge v7, v9, :cond_3

    .line 523
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v9, v9, v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 524
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/Spinner;

    invoke-virtual {v9, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 522
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 544
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v7           #i:I
    :cond_b
    const v9, 0x7f09055b

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    goto/16 :goto_3

    .line 551
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 561
    :cond_d
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 569
    :cond_e
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v10, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 589
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v5       #defaultValue:I
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 640
    .restart local v2       #changeableMaxvalue:I
    :cond_10
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    goto/16 :goto_8
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v6, 0x7f090561

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 875
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 945
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/wifi/WifiApDialog$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApDialog$4;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 952
    :cond_0
    return-void

    .line 877
    :sswitch_0
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 878
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 881
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 883
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v1, :cond_1

    .line 884
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 887
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 896
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 897
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    goto :goto_0

    .line 901
    .end local v0           #context:Landroid/content/Context;
    :sswitch_1
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 902
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 903
    const-string v1, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    if-ne p3, v5, :cond_2

    .line 905
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 907
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 909
    .restart local v0       #context:Landroid/content/Context;
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v1, :cond_3

    .line 910
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 913
    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 922
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 923
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    goto :goto_0

    .line 927
    .end local v0           #context:Landroid/content/Context;
    :sswitch_2
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    .line 928
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    goto :goto_0

    .line 931
    :sswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 932
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 933
    :cond_4
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    goto/16 :goto_0

    .line 937
    :sswitch_4
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    goto/16 :goto_0

    .line 940
    :sswitch_5
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    .line 941
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    .line 942
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutValueFromIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setTimeout(I)V

    goto/16 :goto_0

    .line 875
    :sswitch_data_0
    .sparse-switch
        0x7f0b0520 -> :sswitch_0
        0x7f0b0521 -> :sswitch_1
        0x7f0b0529 -> :sswitch_2
        0x7f0b052a -> :sswitch_3
        0x7f0b052c -> :sswitch_4
        0x7f0b052e -> :sswitch_5
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 956
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 863
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .parameter "hasFocus"

    .prologue
    const v6, 0x7f0b0524

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1011
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1013
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0520

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 1014
    .local v1, mSecurity:Landroid/widget/Spinner;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1015
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1016
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1017
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1018
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 1025
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 1026
    return-void

    .line 1020
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1021
    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1022
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1023
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setTimeoutValueChangedFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1002
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    .line 1003
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const v2, 0x7f0b0526

    .line 667
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 668
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0525

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 673
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 679
    :cond_0
    return-void

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHideSsidWarningDialog()V
    .locals 4

    .prologue
    .line 1081
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1082
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401f8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->customView:Landroid/view/View;

    .line 1083
    const v1, 0x7f0904a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1084
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1085
    const v1, 0x7f0907d2

    new-instance v2, Lcom/android/settings/wifi/WifiApDialog$5;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApDialog$5;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1098
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApDialog$6;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1105
    return-void
.end method

.method public showSoftInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1068
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1069
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1070
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1071
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1072
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1077
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    return-void

    .line 1073
    .restart local v0       #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
