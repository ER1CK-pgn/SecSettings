.class Lcom/android/settings/wifi/WifiVzwDialog;
.super Landroid/app/AlertDialog;
.source "WifiVzwDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static ConnectedCorrectPassword:Ljava/lang/String;

.field public static ConnectedPassword:Ljava/lang/String;

.field private static final DBG:Z

.field public static Remembered:I

.field public static bEdit:I

.field public static changedssid:Ljava/lang/String;

.field public static previousssid:Ljava/lang/String;


# instance fields
.field private PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final details:Z

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field public mAccessPointSecurity:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAutoGenFirstTime:Z

.field private mConnectedAPEdit:I

.field mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field final mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mIsCheckedCckm:Z

.field private mIsCheckedFt:Z

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field public mPasswordView:Landroid/widget/EditText;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field public mSsidView:Landroid/widget/EditText;

.field mTempPassworld:Ljava/lang/String;

.field mTempSsid:Ljava/lang/String;

.field private mTextViewChangedHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field final manageNetwork:Z

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 175
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    .line 177
    const-string v0, " "

    sput-object v0, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    .line 179
    const-string v0, " "

    sput-object v0, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 243
    const v1, 0x7f100035

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 122
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 132
    const-string v1, "unspecified"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    .line 192
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 193
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 194
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    .line 198
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 199
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 202
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempSsid:Ljava/lang/String;

    .line 203
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempPassworld:Ljava/lang/String;

    .line 204
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 218
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 968
    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$2;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 1002
    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$3;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 244
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    .line 245
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    .line 246
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->manageNetwork:Z

    .line 247
    iput-object p2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 248
    iput-object p3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 249
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 251
    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    .line 252
    const-string v0, "WifiVzwDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiVzwDialog: edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void

    .line 251
    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 258
    const v1, 0x7f100035

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 122
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 132
    const-string v1, "unspecified"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    .line 192
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 193
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 194
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 196
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    .line 198
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 199
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 202
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempSsid:Ljava/lang/String;

    .line 203
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempPassworld:Ljava/lang/String;

    .line 204
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 218
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 968
    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$2;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 1002
    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$3;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 259
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    .line 260
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    .line 261
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->manageNetwork:Z

    .line 262
    iput-object p2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 263
    iput-object p3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 264
    iput v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 265
    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    .line 266
    const-string v0, "WifiVzwDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiVzwDialog: edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )  details ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 265
    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401c6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 576
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b0132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 577
    const v1, 0x7f0b020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 579
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 804
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 805
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 809
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v0, v3, :cond_1

    .line 810
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v0

    .line 811
    if-eqz v0, :cond_1

    move v0, v1

    .line 839
    :goto_1
    return v0

    .line 805
    :cond_0
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 820
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 821
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 822
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 823
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 827
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 828
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 832
    :goto_3
    if-nez v0, :cond_4

    .line 833
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 834
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_2
    move v0, v2

    .line 839
    goto :goto_1

    .line 816
    :cond_3
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 829
    :catch_0
    move-exception v0

    move v0, v1

    .line 830
    :goto_4
    const v3, 0x7f090131

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v1

    .line 836
    goto :goto_1

    .line 829
    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x3f2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1529
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1531
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1532
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 1533
    :cond_0
    new-array v0, v9, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1558
    :goto_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, v4, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1560
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1561
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1562
    return-void

    .line 1536
    :cond_1
    const-string v0, "USRPKEY_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1537
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1538
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v2, "USRCERT_"

    invoke-virtual {v0, v2, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 1539
    if-eqz v6, :cond_4

    move v0, v1

    .line 1540
    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 1541
    :goto_2
    array-length v7, v6

    if-ge v2, v7, :cond_3

    .line 1542
    aget-object v7, v3, v0

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1543
    aget-object v7, v3, v0

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1541
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1540
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1549
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1552
    :goto_3
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1553
    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1554
    array-length v3, v0

    invoke-static {v0, v1, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 1555
    goto :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_3
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1335
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1336
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0507

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1325
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1326
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0509

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1340
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1344
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1347
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0506

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1320
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1321
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 1571
    if-eqz p2, :cond_0

    .line 1573
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1574
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1575
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1576
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1581
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1574
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0508

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1331
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b050a

    const v4, 0x7f0b0504

    const v3, 0x7f0b0506

    const/4 v2, 0x0

    .line 1248
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0503

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1249
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0509

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1253
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0507

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1254
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b050e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1258
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1260
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    .line 1261
    packed-switch p1, :pswitch_data_0

    .line 1316
    :goto_0
    return-void

    .line 1264
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPhase2Invisible()V

    .line 1265
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setCaCertInvisible()V

    .line 1266
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    .line 1267
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    goto :goto_0

    .line 1270
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0508

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPhase2Invisible()V

    .line 1272
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    .line 1273
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPasswordInvisible()V

    goto :goto_0

    .line 1277
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1279
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1281
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1282
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1283
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    goto :goto_0

    .line 1287
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_1

    .line 1288
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1289
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1292
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1293
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    goto :goto_0

    .line 1297
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPhase2Invisible()V

    .line 1298
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setCaCertInvisible()V

    .line 1299
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    .line 1300
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setIdentityInvisible()V

    .line 1301
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    .line 1302
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPasswordInvisible()V

    goto/16 :goto_0

    .line 1305
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_2

    .line 1308
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1309
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1311
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1312
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setCaCertInvisible()V

    .line 1313
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    goto/16 :goto_0

    .line 1261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 6

    .prologue
    const v3, 0x7f0b04fd

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1409
    const/4 v0, 0x0

    .line 1411
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1413
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v5, :cond_e

    .line 1414
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1417
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 1418
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1419
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04fe

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/TextView;

    .line 1421
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1422
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04ff

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/TextView;

    .line 1423
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1424
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0500

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1426
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1427
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0501

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/TextView;

    .line 1428
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1429
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0502

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/TextView;

    .line 1430
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1432
    :cond_0
    if-eqz v1, :cond_5

    .line 1433
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1434
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1435
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1436
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 1437
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1442
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1443
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1444
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1449
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1450
    const-string v0, ""

    .line 1451
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1452
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1453
    const-string v2, "::"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1454
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1459
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1460
    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1461
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1475
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    .line 1476
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1477
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 1478
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1479
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1480
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1481
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 1482
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1483
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 1484
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1485
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 1486
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1490
    :cond_a
    return-void

    .line 1456
    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1463
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1467
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_e
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showKeyMgmtFields()V
    .locals 8

    .prologue
    const v7, 0x7f0b0517

    const v6, 0x7f0b0518

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x7f0b0519

    .line 1350
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_4

    .line 1351
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1363
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1365
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1366
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1406
    :cond_1
    :goto_1
    return-void

    .line 1355
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1368
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1371
    :cond_4
    const-string v0, "WifiVzwDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessPoint.keyMgmts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1375
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1381
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1382
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1383
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 1386
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1391
    :cond_7
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 1393
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1397
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-nez v0, :cond_1

    .line 1398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 1399
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 1377
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1403
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showProxyFields()V
    .locals 7

    .prologue
    const v6, 0x7f0b04f7

    const v5, 0x7f0b04f6

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1493
    const/4 v0, 0x0

    .line 1495
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1497
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1498
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1501
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1502
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1503
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1504
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04f8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    .line 1506
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1507
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04f9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    .line 1508
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1509
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b04fa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1510
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1512
    :cond_0
    if-eqz v1, :cond_1

    .line 1513
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 1514
    if-eqz v0, :cond_1

    .line 1515
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1516
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1517
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1524
    :cond_1
    :goto_1
    return-void

    .line 1521
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1522
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v2, 0x8

    const/4 v7, 0x0

    .line 1072
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v9, :cond_0

    .line 1073
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1076
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-nez v0, :cond_3

    .line 1077
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1080
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 1081
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1082
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1083
    if-eqz v0, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1223
    :cond_2
    :goto_0
    return-void

    .line 1090
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 1091
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1092
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1093
    if-eqz v0, :cond_4

    .line 1094
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1098
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 1101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b045e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    .line 1102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1106
    if-eqz v0, :cond_5

    .line 1107
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1108
    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1109
    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1119
    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    .line 1120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1111
    :cond_6
    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1123
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_d

    .line 1126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    const-string v1, "PEAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    const-string v1, "TLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    const-string v1, "TTLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    const-string v1, "PWD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    const-string v1, "SIM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    const-string v1, "AKA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    const-string v1, "FAST"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    const-string v1, "LEAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1143
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0505

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    .line 1148
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1149
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1150
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    .line 1152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v8, :cond_c

    .line 1159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1160
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 1161
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    .line 1162
    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1163
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    .line 1165
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v3

    .line 1166
    if-eqz v3, :cond_8

    .line 1167
    iget-object v4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v5, "fast_provisioning="

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1169
    :cond_8
    packed-switch v1, :pswitch_data_0

    .line 1187
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1190
    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1191
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1192
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1193
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v8, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1211
    const-string v0, "WifiPolicy"

    const-string v1, "Enterprise Wifi settings not editable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    .line 1213
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1214
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_a

    .line 1215
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1216
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_b

    .line 1217
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1218
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 1219
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1171
    :pswitch_0
    packed-switch v2, :pswitch_data_1

    .line 1182
    :pswitch_1
    const-string v1, "WifiVzwDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid phase 2 method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1173
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 1176
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 1179
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 1197
    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1198
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1199
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_3

    .line 1202
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_3

    .line 1169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1171
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 7
    .parameter

    .prologue
    const v2, 0x7f0903b3

    const v3, 0x7f0903b2

    const v0, 0x7f0903b0

    const/4 v1, 0x0

    .line 843
    iget-object v4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    move v0, v1

    .line 919
    :cond_0
    :goto_0
    return v0

    .line 845
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 846
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 850
    :try_start_0
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    .line 855
    const/4 v0, -0x1

    .line 857
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 858
    if-ltz v0, :cond_2

    const/16 v5, 0x20

    if-le v0, v5, :cond_3

    :cond_2
    move v0, v2

    .line 859
    goto :goto_0

    .line 861
    :cond_3
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v4, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v5}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 872
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 873
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 876
    :try_start_2
    invoke-static {v4, v0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 877
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 878
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x1

    aput-byte v4, v0, v2

    .line 879
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    .line 893
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 896
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    if-eqz v2, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 898
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0903b5

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    .line 909
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 910
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 912
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 916
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    :cond_4
    move v0, v1

    .line 919
    goto/16 :goto_0

    .line 862
    :catch_0
    move-exception v5

    .line 864
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    if-eqz v5, :cond_5

    .line 865
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0903bb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 868
    goto/16 :goto_0

    .line 886
    :cond_6
    :try_start_4
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 890
    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v0}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_2

    .line 887
    :catch_1
    move-exception v0

    .line 888
    const v0, 0x7f0903b1

    goto/16 :goto_0

    .line 901
    :cond_7
    :try_start_5
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    .line 905
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 902
    :catch_2
    move-exception v0

    move v0, v3

    .line 903
    goto/16 :goto_0

    .line 913
    :catch_3
    move-exception v0

    move v0, v3

    .line 914
    goto/16 :goto_0

    .line 851
    :catch_4
    move-exception v1

    goto/16 :goto_0

    .line 881
    :catch_5
    move-exception v0

    goto/16 :goto_2

    .line 880
    :catch_6
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$4;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1047
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1039
    return-void
.end method

.method public enableSubmitIfAppropriate()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x2

    const/4 v9, -0x1

    .line 583
    sget-boolean v6, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiVzwDialog"

    const-string v7, "enableSubmitIfAppropriate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    const/4 v6, -0x3

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 586
    .local v4, submit:Landroid/widget/Button;
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 587
    .local v0, connect:Landroid/widget/Button;
    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 588
    const-string v6, "WifiVzwDialog"

    const-string v7, "submit button is not set"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_1
    :goto_0
    return-void

    .line 593
    :cond_2
    const/4 v5, 0x0

    .line 594
    .local v5, trimedSsidLength:I
    const/4 v1, 0x1

    .line 595
    .local v1, enabled:Z
    const/4 v3, 0x0

    .line 597
    .local v3, passwordInvalid:Z
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v6, :cond_15

    .line 598
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 599
    .local v2, passLen:I
    iget v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-ne v6, v8, :cond_12

    if-ge v2, v10, :cond_12

    .line 601
    :cond_4
    sget-boolean v6, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiVzwDialog"

    const-string v7, "password invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_5
    const/4 v3, 0x1

    .line 613
    .end local v2           #passLen:I
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v6, :cond_8

    .line 614
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 615
    const/4 v1, 0x0

    .line 617
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 621
    :cond_8
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_a

    .line 622
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    if-nez v6, :cond_9

    iget v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v6, v7, :cond_9

    .line 623
    const/4 v1, 0x1

    .line 624
    const/4 v3, 0x0

    .line 626
    :cond_9
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v6, v9, :cond_a

    .line 627
    iget v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v6, v7, :cond_16

    .line 628
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const v7, 0x7f090357

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 635
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->ipAndProxyFieldsAreValid()Z

    move-result v6

    if-nez v6, :cond_b

    .line 636
    const/4 v1, 0x0

    .line 639
    :cond_b
    sget-boolean v6, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v6, :cond_c

    const-string v6, "WifiVzwDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "password invalid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_c
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v6, v9, :cond_e

    :cond_d
    if-eqz v3, :cond_e

    .line 641
    const/4 v1, 0x0

    .line 644
    :cond_e
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v6, :cond_f

    if-nez v5, :cond_f

    .line 645
    const/4 v1, 0x0

    .line 647
    :cond_f
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v6, :cond_10

    if-eqz v3, :cond_10

    .line 648
    const/4 v1, 0x0

    .line 650
    :cond_10
    if-eqz v4, :cond_11

    .line 651
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 652
    :cond_11
    if-eqz v0, :cond_1

    .line 653
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 603
    .restart local v2       #passLen:I
    :cond_12
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v6, v9, :cond_6

    iget v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-ne v6, v8, :cond_6

    if-eqz v2, :cond_13

    if-lez v2, :cond_6

    if-ge v2, v10, :cond_6

    .line 606
    :cond_13
    sget-boolean v6, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v6, :cond_14

    const-string v6, "WifiVzwDialog"

    const-string v7, "password invalid (saved ap)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 610
    .end local v2           #passLen:I
    :cond_15
    const-string v6, "WifiVzwDialog"

    const-string v7, "mPasswordView is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 630
    :cond_16
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v2, -0x1

    const/16 v4, 0x22

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 658
    const-string v0, "WifiVzwDialog"

    const-string v1, "getConfig()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-nez v0, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 800
    :goto_0
    return-object v0

    .line 663
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 665
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 669
    iput-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 679
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    packed-switch v0, :pswitch_data_0

    .line 784
    const/4 v0, 0x0

    goto :goto_0

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v0, v2, :cond_2

    .line 671
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 674
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v0, :cond_3

    .line 675
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 677
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 681
    :pswitch_0
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 787
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_6

    .line 788
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 789
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 791
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 792
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 796
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 797
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 798
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object v0, v1

    .line 800
    goto/16 :goto_0

    .line 685
    :pswitch_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 686
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 687
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 689
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    .line 690
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 691
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 693
    const/16 v3, 0xa

    if-eq v0, v3, :cond_7

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_7

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_8

    :cond_7
    const-string v0, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 695
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v0, v5

    goto/16 :goto_2

    .line 697
    :cond_8
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto/16 :goto_2

    .line 703
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-eqz v0, :cond_9

    .line 704
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 708
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 709
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 712
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 706
    :cond_9
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    .line 714
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 720
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-eqz v0, :cond_d

    .line 721
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 728
    :goto_4
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 729
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 730
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 731
    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 732
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 733
    sparse-switch v0, :sswitch_data_0

    .line 759
    :goto_5
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 762
    :goto_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 763
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, ""

    .line 764
    :cond_b
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 766
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, ""

    .line 767
    :cond_c
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 768
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 769
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 775
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 776
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 722
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    if-eqz v0, :cond_e

    .line 723
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 725
    :cond_e
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 726
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 738
    :sswitch_0
    packed-switch v3, :pswitch_data_1

    .line 749
    const-string v0, "WifiVzwDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown phase2 method"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 740
    :pswitch_4
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    .line 743
    :pswitch_5
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    .line 746
    :pswitch_6
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    .line 754
    :sswitch_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 755
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v2, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    .line 756
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 780
    :cond_f
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 679
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 733
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch

    .line 738
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1601
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "on back pressed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1602
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 1603
    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    .line 1604
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b0519

    const v4, 0x7f0b0518

    const v3, 0x7f0b0514

    const/4 v2, 0x0

    .line 924
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b04b9

    if-ne v0, v1, :cond_4

    .line 926
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 927
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 930
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 932
    :cond_0
    const-string v0, "WifiVzwDialog"

    const-string v1, "onClick: EDM is called when the user clicks the show password"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_1
    :goto_0
    return-void

    .line 936
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 937
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x90

    :goto_1
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 941
    if-ltz v1, :cond_1

    .line 942
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 937
    :cond_3
    const/16 v0, 0x80

    goto :goto_1

    .line 944
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0513

    if-ne v0, v1, :cond_6

    .line 945
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 946
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 948
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 950
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 951
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 953
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-eqz v0, :cond_1

    .line 954
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 955
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 957
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 958
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 960
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    if-eqz v0, :cond_1

    .line 961
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 962
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 285
    const-string v18, "WifiVzwDialog"

    const-string v19, "onCreate()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v18, Landroid/os/Handler;

    invoke-direct/range {v18 .. v18}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 288
    .local v8, context:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 289
    .local v13, resources:Landroid/content/res/Resources;
    const-string v18, "enterprise_policy"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f0401c4

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setView(Landroid/view/View;)V

    .line 292
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setInverseBackgroundForced(Z)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b5

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 298
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v18, 0x1090008

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a002b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v8, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 299
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v18, 0x1090009

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 303
    new-instance v18, Landroid/widget/ArrayAdapter;

    const v19, 0x1090008

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a004a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v8, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v18, v0

    const v19, 0x1090009

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 308
    new-instance v18, Landroid/widget/ArrayAdapter;

    const v19, 0x1090008

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a004b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v8, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v18, v0

    const v19, 0x1090009

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 313
    const v18, 0x7f090358

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04fc

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04f5

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0078

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 322
    .local v11, infoMsg:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 323
    const-string v18, "WifiVzwDialog"

    const-string v19, "onCreate: mAccessPoint == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const v18, 0x7f09030e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0287

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b3

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showIpConfigFields()V

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showProxyFields()V

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showKeyMgmtFields()V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0512

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0513

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    const/16 v18, -0x1

    const v19, 0x7f090466

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 340
    const/16 v18, -0x3

    const v19, 0x7f090468

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x14

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 483
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v18, v0

    if-nez v18, :cond_19

    .line 484
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18

    .line 485
    const/16 v18, -0x3

    const v19, 0x7f09032e

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 494
    :goto_1
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 509
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 510
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 511
    sget v18, Lcom/android/settings/wifi/WifiVzwDialog;->Remembered:I

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 512
    const/16 v18, -0x1

    const v19, 0x7f09032e

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 515
    :cond_1
    const/16 v18, 0x1

    sput v18, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 516
    sget v18, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    if-nez v18, :cond_1c

    .line 517
    const/16 v18, -0x2

    const v19, 0x7f090331

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 518
    const/16 v18, 0x1

    sput v18, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    .line 523
    :goto_3
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 526
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 527
    sget v18, Lcom/android/settings/wifi/WifiVzwDialog;->Remembered:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 528
    const/16 v18, -0x1

    const v19, 0x7f090466

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 531
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setInverseBackgroundForced(Z)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v18, v0

    if-nez v18, :cond_1d

    .line 533
    const v18, 0x7f09046e

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    :cond_3
    :goto_4
    const/16 v18, -0x3

    const v19, 0x7f09032e

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 541
    const/16 v18, -0x2

    const v19, 0x7f09032f

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 543
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 545
    const/16 v18, -0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v18

    if-eqz v18, :cond_5

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->enableSubmitIfAppropriate()V

    .line 550
    :cond_5
    new-instance v18, Lcom/android/settings/wifi/WifiVzwDialog$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog$1;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 557
    return-void

    .line 345
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v18, v0

    if-nez v18, :cond_10

    .line 346
    const v18, 0x7f09046f

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 351
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b2

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 352
    .local v9, group:Landroid/view/ViewGroup;
    const-string v18, "WifiVzwDialog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onCreate: details "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v16

    .line 354
    .local v16, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v16, :cond_7

    .line 355
    const v18, 0x7f090345

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 357
    :cond_7
    const v18, 0x7f0a002a

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 358
    .local v17, type:[Ljava/lang/String;
    const v18, 0x7f090343

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v12

    .line 361
    .local v12, level:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_9

    .line 362
    const v18, 0x7f0a003b

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 363
    .local v15, signal:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v12, v0, :cond_8

    .line 364
    const-string v18, "WifiVzwDialog"

    const-string v19, "Force level of wifi signal"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    array-length v0, v15

    move/from16 v18, v0

    add-int/lit8 v12, v18, -0x1

    .line 367
    :cond_8
    const v18, 0x7f090344

    aget-object v19, v15, v12

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 370
    .end local v15           #signal:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 372
    .local v10, info:Landroid/net/wifi/WifiInfo;
    if-eqz v10, :cond_a

    .line 373
    const v18, 0x7f090346

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Mbps"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 375
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    .line 376
    .local v5, address:I
    if-eqz v5, :cond_a

    .line 377
    const v18, 0x7f090347

    invoke-static {v5}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 382
    .end local v5           #address:I
    :cond_a
    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 384
    .local v7, config_details:Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_c

    .line 385
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 386
    const v18, 0x7f0902d2

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 388
    :cond_b
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 389
    const v18, 0x7f0902d3

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 395
    .end local v7           #config_details:Landroid/net/wifi/WifiConfiguration;
    :cond_c
    const/4 v14, 0x0

    .line 396
    .local v14, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    .line 397
    const-string v18, "WifiVzwDialog"

    const-string v19, "network id is valid"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 399
    .local v6, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v18, v0

    sget-object v19, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 400
    const-string v18, "WifiVzwDialog"

    const-string v19, "ip assignment static"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 402
    const/4 v14, 0x1

    .line 408
    :goto_6
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v18, v0

    sget-object v19, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 409
    const-string v18, "WifiVzwDialog"

    const-string v19, "proxy static"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 411
    const/4 v14, 0x1

    .line 417
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    .line 418
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 423
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 424
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showSecurityFields()V

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showIpConfigFields()V

    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showProxyFields()V

    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showKeyMgmtFields()V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0512

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0513

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    if-eqz v14, :cond_f

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0513

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0514

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 439
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b0287

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b3

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b5

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b5

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 446
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 447
    const-string v18, "WifiVzwDialog"

    const-string v19, "vzwViewFlag sets to false - onCreate, mEdit is true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/16 v18, -0x1

    const v19, 0x7f090466

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 449
    const/16 v18, -0x3

    const v19, 0x7f090468

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 450
    const-string v18, "WifiVzwDialog"

    const-string v19, "EDIT true connect and submit btn set "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    sput-object v18, Lcom/android/settings/wifi/WifiVzwDialog;->previousssid:Ljava/lang/String;

    .line 452
    const/16 v18, 0x1

    sput v18, Lcom/android/settings/wifi/WifiVzwDialog;->bEdit:I

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v18

    if-nez v18, :cond_0

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    .line 348
    .end local v9           #group:Landroid/view/ViewGroup;
    .end local v10           #info:Landroid/net/wifi/WifiInfo;
    .end local v12           #level:I
    .end local v14           #showAdvancedFields:Z
    .end local v16           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v17           #type:[Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 404
    .restart local v6       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v9       #group:Landroid/view/ViewGroup;
    .restart local v10       #info:Landroid/net/wifi/WifiInfo;
    .restart local v12       #level:I
    .restart local v14       #showAdvancedFields:Z
    .restart local v16       #state:Landroid/net/NetworkInfo$DetailedState;
    .restart local v17       #type:[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 413
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    .line 420
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_13
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 462
    :cond_14
    if-nez v16, :cond_17

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_17

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v18, v0

    if-nez v18, :cond_16

    .line 464
    const v18, 0x7f09046e

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    :cond_15
    :goto_9
    const/16 v18, -0x1

    const v19, 0x7f090466

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 471
    const-string v18, "WifiVzwDialog"

    const-string v19, "EDIT false state null set connect button "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->manageNetwork:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 477
    const/16 v18, -0x1

    const v19, 0x7f090467

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 466
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    .line 467
    const v18, 0x7f090330

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 473
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04fb

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 487
    .end local v9           #group:Landroid/view/ViewGroup;
    .end local v10           #info:Landroid/net/wifi/WifiInfo;
    .end local v12           #level:I
    .end local v14           #showAdvancedFields:Z
    .end local v16           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v17           #type:[Ljava/lang/String;
    :cond_18
    const/16 v18, -0x3

    const v19, 0x7f09032d

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 488
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 489
    const-string v18, "WifiVzwDialog"

    const-string v19, "vzwViewFlag sets to true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/16 v18, -0x2

    const v19, 0x7f09032e

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 491
    const/16 v18, 0x0

    sput v18, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_1

    .line 496
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v16

    .line 498
    .restart local v16       #state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v16, :cond_1b

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1a

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1a

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 501
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0b04b2

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 502
    .restart local v9       #group:Landroid/view/ViewGroup;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 505
    .end local v9           #group:Landroid/view/ViewGroup;
    .end local v16           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_1b
    const/16 v18, -0x2

    const v19, 0x7f090469

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 520
    :cond_1c
    const/16 v18, -0x2

    const v19, 0x7f09032f

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 521
    const/16 v18, 0x1

    sput v18, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_3

    .line 536
    :cond_1d
    const v18, 0x7f090330

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 1051
    iput p3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    .line 1052
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showSecurityFields()V

    .line 1055
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showKeyMgmtFields()V

    .line 1064
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->enableSubmitIfAppropriate()V

    .line 1065
    return-void

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1058
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showSecurityFields()V

    goto :goto_0

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1060
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showProxyFields()V

    goto :goto_0

    .line 1062
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 1068
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1036
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v3, -0x1

    const/high16 v2, 0x4160

    .line 1584
    const-string v0, "WifiVzwDialog"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 1587
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1588
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 1589
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1591
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1592
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1594
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1595
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1597
    :cond_2
    return-void
.end method
