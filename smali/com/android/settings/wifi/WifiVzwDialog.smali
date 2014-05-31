.class Lcom/android/settings/wifi/WifiVzwDialog;
.super Landroid/app/AlertDialog;
.source "WifiVzwDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;
    }
.end annotation


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

.field private mAutoGenFirstTime:Z

.field private mConnectedAPEdit:I

.field private mDns1View:Landroid/widget/EditText;

.field private mDns2View:Landroid/widget/EditText;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field final mEdit:Z

.field private mGatewayView:Landroid/widget/EditText;

.field private mIpAddressView:Landroid/widget/EditText;

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

.field private pToast:Landroid/widget/Toast;

.field passwordWatcher:Landroid/text/TextWatcher;

.field private sToast:Landroid/widget/Toast;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 156
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    .line 157
    const-string v0, " "

    sput-object v0, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    .line 159
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

    .line 210
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 108
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 119
    const-string v1, "unspecified"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    .line 170
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 171
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 172
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 173
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    .line 174
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 175
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 177
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempSsid:Ljava/lang/String;

    .line 178
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempPassworld:Ljava/lang/String;

    .line 188
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 963
    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$1;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 990
    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$2;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 211
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    .line 212
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    .line 213
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->manageNetwork:Z

    .line 214
    iput-object p2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 215
    iput-object p3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 216
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 217
    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    .line 218
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

    .line 219
    return-void

    .line 217
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

    .line 223
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 108
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 119
    const-string v1, "unspecified"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    .line 170
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 171
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 172
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 173
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    .line 174
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 175
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 177
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempSsid:Ljava/lang/String;

    .line 178
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempPassworld:Ljava/lang/String;

    .line 188
    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 963
    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$1;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 990
    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$2;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 224
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    .line 225
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    .line 226
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->manageNetwork:Z

    .line 227
    iput-object p2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 228
    iput-object p3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 229
    iput v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 230
    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    .line 231
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

    .line 232
    return-void

    .line 230
    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->sToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->pToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->pToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040205

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 538
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b0145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 539
    const v1, 0x7f0b0247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 541
    return-void
.end method

.method private generateBlankFields(Ljava/net/InetAddress;)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x18

    .line 817
    const-string v0, "WifiVzwDialog"

    const-string v2, "generateBlankFields"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 821
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09041a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    :try_start_0
    invoke-static {p1, v1}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 839
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 840
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090414

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 849
    :cond_1
    return-void

    .line 826
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 827
    if-ltz v0, :cond_3

    const/16 v2, 0x20

    if-le v0, v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    .line 832
    goto :goto_0

    .line 842
    :catch_0
    move-exception v0

    goto :goto_1

    .line 841
    :catch_1
    move-exception v0

    goto :goto_1

    .line 830
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 782
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 783
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 786
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v0, v3, :cond_1

    .line 787
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v0

    .line 788
    if-eqz v0, :cond_1

    move v0, v1

    .line 814
    :goto_1
    return v0

    .line 783
    :cond_0
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 792
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

    .line 795
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 796
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 797
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 798
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 802
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 803
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 807
    :goto_3
    if-nez v0, :cond_4

    .line 808
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 809
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_2
    move v0, v2

    .line 814
    goto :goto_1

    .line 792
    :cond_3
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 804
    :catch_0
    move-exception v0

    move v0, v1

    .line 805
    :goto_4
    const v3, 0x7f090155

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v1

    .line 811
    goto :goto_1

    .line 804
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

    .line 1569
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1570
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1571
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 1572
    :cond_0
    new-array v0, v9, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1596
    :goto_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, v4, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1598
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1599
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1600
    return-void

    .line 1575
    :cond_1
    const-string v0, "USRPKEY_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1576
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1577
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v2, "USRCERT_"

    invoke-virtual {v0, v2, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 1578
    if-eqz v6, :cond_4

    move v0, v1

    .line 1579
    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 1580
    :goto_2
    array-length v7, v6

    if-ge v2, v7, :cond_3

    .line 1581
    aget-object v7, v3, v0

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1582
    aget-object v7, v3, v0

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1579
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1588
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1591
    :goto_3
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1592
    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1593
    array-length v3, v0

    invoke-static {v0, v1, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 1594
    goto :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_3
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0574

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1367
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0571

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1360
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0573

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1371
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1374
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0577

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1376
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0578

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0570

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1355
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1356
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 1607
    if-eqz p2, :cond_0

    .line 1609
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1610
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1611
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1612
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1617
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1610
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0572

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1364
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b0574

    const v4, 0x7f0b056e

    const v3, 0x7f0b0570

    const/4 v2, 0x0

    .line 1288
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b056d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1289
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0573

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1292
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0571

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1293
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0577

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0578

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1296
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1297
    packed-switch p1, :pswitch_data_0

    .line 1352
    :goto_0
    return-void

    .line 1300
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPhase2Invisible()V

    .line 1301
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setCaCertInvisible()V

    .line 1302
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    .line 1303
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    goto :goto_0

    .line 1306
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0572

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPhase2Invisible()V

    .line 1308
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    .line 1309
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPasswordInvisible()V

    goto :goto_0

    .line 1313
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1315
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1319
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    goto :goto_0

    .line 1323
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1325
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1328
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    goto :goto_0

    .line 1333
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPhase2Invisible()V

    .line 1334
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setCaCertInvisible()V

    .line 1335
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    .line 1336
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setIdentityInvisible()V

    .line 1337
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    .line 1338
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPasswordInvisible()V

    goto/16 :goto_0

    .line 1341
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1343
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_2

    .line 1344
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1345
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1347
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    .line 1349
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    goto/16 :goto_0

    .line 1297
    nop

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
    const v3, 0x7f0b0567

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1441
    const/4 v0, 0x0

    .line 1442
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0565

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1443
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v5, :cond_e

    .line 1444
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1446
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 1447
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1448
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0568

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    .line 1450
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1451
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0569

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    .line 1452
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1453
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b056a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1455
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1456
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b056b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    .line 1457
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1458
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b056c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    .line 1459
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1461
    :cond_0
    if-eqz v1, :cond_5

    .line 1462
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1463
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1464
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1465
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 1466
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1467
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
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

    .line 1471
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1472
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1476
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1478
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1479
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1480
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1481
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1485
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1486
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1487
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1488
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1497
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

    .line 1502
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    .line 1503
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1504
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    .line 1505
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1506
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    .line 1507
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1508
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    .line 1509
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1510
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    .line 1511
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1512
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 1513
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1517
    :cond_a
    return-void

    .line 1483
    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1490
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1494
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_e
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showKeyMgmtFields()V
    .locals 8

    .prologue
    const v7, 0x7f0b0582

    const v6, 0x7f0b0583

    const/16 v5, 0x8

    const v4, 0x7f0b0584

    const/4 v3, 0x0

    .line 1379
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_4

    .line 1380
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1387
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1388
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 1392
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1394
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 1439
    :cond_1
    :goto_1
    return-void

    .line 1384
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1397
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1400
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

    .line 1401
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

    .line 1404
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1410
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

    .line 1411
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1412
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 1414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 1415
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1416
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v0, :cond_7

    .line 1417
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 1422
    :cond_7
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 1424
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1425
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1426
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 1428
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-nez v0, :cond_1

    .line 1429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 1430
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1431
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v0, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1406
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1436
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showProxyFields()V
    .locals 8

    .prologue
    const v7, 0x7f0b0561

    const v6, 0x7f0b0560

    const/16 v5, 0x8

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1519
    const/4 v0, 0x0

    .line 1520
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b055d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1521
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_7

    .line 1522
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1524
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1525
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1526
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1527
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0562

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    .line 1529
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1530
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0563

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    .line 1531
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1532
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0564

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1533
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1535
    :cond_0
    if-eqz v1, :cond_1

    .line 1536
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 1537
    if-eqz v0, :cond_1

    .line 1538
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1539
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1540
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1549
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1554
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 1555
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1556
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1557
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1558
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1559
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1560
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1561
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1565
    :cond_5
    return-void

    .line 1544
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1545
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 10

    .prologue
    const/16 v4, 0x8

    const/4 v7, 0x6

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1084
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    .line 1085
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1087
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-nez v0, :cond_3

    .line 1088
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0551

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1091
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 1092
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1093
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1094
    if-eqz v0, :cond_1

    .line 1095
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1097
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1264
    :cond_2
    :goto_0
    return-void

    .line 1101
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 1102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1103
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1104
    if-eqz v0, :cond_4

    .line 1105
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1109
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0551

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 1111
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b04ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    .line 1112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0524

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 1115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0524

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1116
    if-eqz v0, :cond_5

    .line 1117
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1118
    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1119
    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1127
    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    .line 1128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0556

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0577

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0578

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1121
    :cond_6
    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1133
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0556

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    const-string v0, "security.mdpp"

    const-string v1, "None"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    const-string v1, "Enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "Enforcing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_8
    move v1, v3

    .line 1141
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_12

    .line 1142
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0557

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1143
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    const-string v0, "PEAP"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    const-string v0, "TLS"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    const-string v0, "TTLS"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    const-string v0, "PWD"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    const-string v0, "SIM"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    const-string v0, "AKA"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    if-nez v1, :cond_9

    .line 1154
    const-string v0, "FAST"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    :cond_9
    if-nez v1, :cond_a

    .line 1156
    const-string v0, "LEAP"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    :cond_a
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x1090008

    invoke-direct {v0, v4, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1158
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1159
    iget-object v4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b056f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    .line 1162
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0558

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1163
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0559

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1164
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b055a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1165
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b055b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    .line 1166
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b055c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1167
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v4, "CACERT_"

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiVzwDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v4, "USRPKEY_"

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiVzwDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_11

    .line 1171
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1172
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    .line 1174
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v5, v5

    if-eq v0, v5, :cond_1b

    .line 1181
    if-eqz v1, :cond_1a

    .line 1182
    if-le v4, v7, :cond_1a

    add-int/lit8 v0, v4, -0x1

    .line 1183
    :goto_3
    if-eqz v1, :cond_b

    .line 1184
    const/4 v1, 0x7

    if-le v4, v1, :cond_b

    add-int/lit8 v0, v0, -0x1

    .line 1186
    :cond_b
    :goto_4
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v1

    .line 1187
    iget-object v5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1188
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    .line 1190
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v0

    .line 1191
    if-eqz v0, :cond_c

    .line 1192
    iget-object v5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v7, "fast_provisioning="

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1194
    :cond_c
    sparse-switch v4, :sswitch_data_0

    .line 1213
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1216
    :goto_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1248
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

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

    .line 1252
    const-string v0, "WifiPolicy"

    const-string v1, "Enterprise Wifi settings not editable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_e

    .line 1254
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1255
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_f

    .line 1256
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1257
    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_10

    .line 1258
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1259
    :cond_10
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 1260
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1197
    :sswitch_0
    packed-switch v1, :pswitch_data_0

    .line 1208
    :pswitch_0
    const-string v0, "WifiVzwDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid phase 2 method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1199
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 1202
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 1205
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 1223
    :cond_11
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1225
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    .line 1228
    :cond_12
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1229
    const-string v1, "PEAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1230
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    .line 1231
    :cond_13
    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1232
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    .line 1233
    :cond_14
    const-string v1, "TTLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1234
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    .line 1235
    :cond_15
    const-string v1, "PWD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1236
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    .line 1237
    :cond_16
    const-string v1, "SIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1238
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    .line 1239
    :cond_17
    const-string v1, "AKA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1240
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    .line 1241
    :cond_18
    const-string v1, "FAST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1242
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    .line 1243
    :cond_19
    const-string v1, "LEAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1244
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_1a
    move v0, v4

    goto/16 :goto_3

    :cond_1b
    move v0, v4

    goto/16 :goto_4

    :cond_1c
    move v1, v2

    goto/16 :goto_2

    .line 1194
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    .line 1197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 9
    .parameter

    .prologue
    const v3, 0x7f090410

    const v1, 0x7f09040f

    const v2, 0x7f090412

    const v4, 0x7f090411

    const/4 v0, 0x0

    .line 851
    iget-object v5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    if-nez v5, :cond_1

    .line 915
    :cond_0
    :goto_0
    return v0

    .line 852
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 853
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v1

    goto :goto_0

    .line 856
    :cond_2
    :try_start_0
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 857
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    if-eqz v6, :cond_3

    .line 858
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    .line 859
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiVzwDialog;->generateBlankFields(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 866
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 867
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    if-eqz v6, :cond_6

    .line 868
    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09041a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 875
    if-ltz v1, :cond_5

    const/16 v6, 0x20

    if-le v1, v6, :cond_7

    :cond_5
    move v0, v2

    .line 876
    goto :goto_0

    .line 861
    :catch_0
    move-exception v0

    move v0, v1

    .line 862
    goto :goto_0

    :cond_6
    move v0, v2

    .line 871
    goto :goto_0

    .line 878
    :cond_7
    :try_start_1
    new-instance v6, Landroid/net/LinkAddress;

    invoke-direct {v6, v5, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v6}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 882
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 883
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v3

    goto :goto_0

    .line 879
    :catch_1
    move-exception v0

    move v0, v2

    .line 880
    goto :goto_0

    .line 886
    :cond_8
    :try_start_2
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 890
    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v1}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 891
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 892
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 893
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v4

    .line 894
    goto/16 :goto_0

    .line 887
    :catch_2
    move-exception v0

    move v0, v3

    .line 888
    goto/16 :goto_0

    .line 897
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 899
    :try_start_3
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 903
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 907
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 909
    :try_start_4
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    .line 913
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto/16 :goto_0

    .line 900
    :catch_3
    move-exception v0

    move v0, v4

    .line 901
    goto/16 :goto_0

    .line 905
    :cond_a
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_1

    .line 910
    :catch_4
    move-exception v0

    move v0, v4

    .line 911
    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$3;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1062
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1055
    return-void
.end method

.method public enableSubmitIfAppropriate()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v9, 0x8

    const/4 v10, -0x1

    .line 544
    sget-boolean v7, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "WifiVzwDialog"

    const-string v8, "enableSubmitIfAppropriate"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    const/4 v7, -0x3

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 546
    .local v5, submit:Landroid/widget/Button;
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 547
    .local v0, connect:Landroid/widget/Button;
    if-nez v5, :cond_2

    if-nez v0, :cond_2

    .line 548
    const-string v7, "WifiVzwDialog"

    const-string v8, "submit button is not set"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_1
    :goto_0
    return-void

    .line 552
    :cond_2
    const/4 v6, 0x0

    .line 553
    .local v6, trimedSsidLength:I
    const/4 v1, 0x1

    .line 554
    .local v1, enabled:Z
    const/4 v3, 0x0

    .line 555
    .local v3, passwordInvalid:Z
    const/4 v4, 0x0

    .line 556
    .local v4, ssidInvalid:Z
    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v7, :cond_16

    .line 557
    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 558
    .local v2, passLen:I
    iget v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-ne v7, v11, :cond_13

    if-ge v2, v9, :cond_13

    .line 560
    :cond_4
    sget-boolean v7, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "WifiVzwDialog"

    const-string v8, "password invalid"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_5
    const/4 v3, 0x1

    .line 571
    .end local v2           #passLen:I
    :cond_6
    :goto_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v7, :cond_8

    .line 572
    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-nez v7, :cond_7

    .line 573
    const/4 v4, 0x1

    .line 574
    const/4 v1, 0x0

    .line 576
    :cond_7
    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 578
    :cond_8
    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_9

    .line 579
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 581
    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 582
    const/4 v4, 0x0

    .line 589
    :cond_9
    :goto_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_b

    .line 590
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-nez v7, :cond_a

    iget v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v8, v8, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v7, v8, :cond_a

    .line 591
    const/4 v1, 0x1

    .line 592
    const/4 v3, 0x0

    .line 593
    if-eqz v4, :cond_a

    .line 594
    const/4 v3, 0x1

    .line 597
    :cond_a
    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v7, v10, :cond_b

    .line 598
    iget v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v8, v8, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v7, v8, :cond_18

    if-nez v4, :cond_18

    .line 599
    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const v8, 0x7f0903b1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(I)V

    .line 603
    :goto_3
    iget v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-lt v7, v9, :cond_b

    .line 605
    const/4 v3, 0x0

    .line 609
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->ipAndProxyFieldsAreValid()Z

    move-result v7

    if-nez v7, :cond_c

    .line 610
    const/4 v1, 0x0

    .line 612
    :cond_c
    sget-boolean v7, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v7, :cond_d

    const-string v7, "WifiVzwDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "password invalid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_d
    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v7, v10, :cond_f

    :cond_e
    if-eqz v3, :cond_f

    .line 614
    const/4 v1, 0x0

    .line 616
    :cond_f
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v7, :cond_10

    if-nez v6, :cond_10

    .line 617
    const/4 v1, 0x0

    .line 619
    :cond_10
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v7, :cond_11

    if-eqz v3, :cond_11

    .line 620
    const/4 v1, 0x0

    .line 622
    :cond_11
    if-eqz v5, :cond_12

    .line 623
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 624
    :cond_12
    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 562
    .restart local v2       #passLen:I
    :cond_13
    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v7, v10, :cond_6

    iget v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-ne v7, v11, :cond_6

    if-eqz v2, :cond_14

    if-lez v2, :cond_6

    if-ge v2, v9, :cond_6

    .line 565
    :cond_14
    sget-boolean v7, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v7, :cond_15

    const-string v7, "WifiVzwDialog"

    const-string v8, "password invalid (saved ap)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_15
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 569
    .end local v2           #passLen:I
    :cond_16
    const-string v7, "WifiVzwDialog"

    const-string v8, "mPasswordView is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 584
    :cond_17
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 601
    :cond_18
    iget-object v7, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, -0x1

    const/16 v4, 0x22

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 629
    const-string v0, "WifiVzwDialog"

    const-string v1, "getConfig()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-nez v0, :cond_0

    .line 631
    const/4 v0, 0x0

    .line 779
    :goto_0
    return-object v0

    .line 633
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 634
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 638
    iput-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 648
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    packed-switch v0, :pswitch_data_0

    .line 766
    const/4 v0, 0x0

    goto :goto_0

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v0, v3, :cond_2

    .line 640
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 643
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v0, :cond_3

    .line 644
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 646
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 650
    :pswitch_0
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 768
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_6

    .line 769
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 770
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 772
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 773
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 776
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 777
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 778
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object v0, v1

    .line 779
    goto/16 :goto_0

    .line 653
    :pswitch_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 654
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 655
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 656
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 657
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    .line 658
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 659
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 661
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

    .line 663
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v0, v5

    goto/16 :goto_2

    .line 665
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

    .line 670
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-eqz v0, :cond_9

    .line 671
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 675
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 676
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 679
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 673
    :cond_9
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    .line 681
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

    .line 686
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-eqz v0, :cond_d

    .line 687
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 694
    :goto_4
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 695
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 696
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 698
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 699
    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 700
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 701
    sparse-switch v0, :sswitch_data_0

    .line 742
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 745
    :goto_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 746
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, ""

    .line 747
    :cond_b
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 749
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, ""

    .line 750
    :cond_c
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 751
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 752
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 757
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 758
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 688
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    if-eqz v0, :cond_e

    .line 689
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 691
    :cond_e
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 692
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 706
    :sswitch_0
    packed-switch v3, :pswitch_data_1

    .line 717
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

    goto/16 :goto_5

    .line 708
    :pswitch_4
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 711
    :pswitch_5
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 714
    :pswitch_6
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 722
    :sswitch_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 723
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v2, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    .line 725
    packed-switch v3, :pswitch_data_2

    .line 736
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

    goto/16 :goto_5

    .line 727
    :pswitch_7
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 730
    :pswitch_8
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 733
    :pswitch_9
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 762
    :cond_f
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 648
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 701
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch

    .line 706
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 725
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1634
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "on back pressed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1635
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 1636
    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    .line 1637
    return-void
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0b0584

    const v4, 0x7f0b0583

    const v3, 0x7f0b057e

    const/4 v2, 0x0

    .line 919
    invoke-virtual {p1, v2}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->playSoundEffect(I)V

    .line 920
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0b0524

    if-ne v0, v1, :cond_4

    .line 922
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 926
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 928
    :cond_0
    const-string v0, "WifiVzwDialog"

    const-string v1, "onClick: EDM is called when the user clicks the show password"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_1
    :goto_0
    return-void

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 933
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x90

    :goto_1
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 937
    if-ltz v1, :cond_1

    .line 938
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 933
    :cond_3
    const/16 v0, 0x80

    goto :goto_1

    .line 940
    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0b057d

    if-ne v0, v1, :cond_6

    .line 941
    if-eqz p2, :cond_5

    .line 942
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 944
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 946
    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 947
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 949
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-eqz v0, :cond_1

    .line 950
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 951
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 953
    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 954
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    .line 956
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    if-eqz v0, :cond_1

    .line 957
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    .line 958
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .parameter "savedInstanceState"

    .prologue
    .line 247
    const-string v22, "WifiVzwDialog"

    const-string v23, "onCreate()"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v22, Landroid/os/Handler;

    invoke-direct/range {v22 .. v22}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 250
    .local v9, context:Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 251
    .local v17, resources:Landroid/content/res/Resources;
    const-string v22, "enterprise_policy"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v22

    const v23, 0x7f040203

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setView(Landroid/view/View;)V

    .line 254
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setInverseBackgroundForced(Z)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b0520

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 259
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v22, 0x1090008

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a0032

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v4, v9, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 260
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v22, 0x1090009

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 263
    new-instance v22, Landroid/widget/ArrayAdapter;

    const v23, 0x1090008

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0052

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v9, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v22, v0

    const v23, 0x1090009

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 267
    new-instance v22, Landroid/widget/ArrayAdapter;

    const v23, 0x1090008

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0053

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v9, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v22, v0

    const v23, 0x1090009

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 271
    const v22, 0x7f0903b2

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b0566

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b055f

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b007e

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 278
    .local v14, infoMsg:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    .line 279
    const-string v22, "WifiVzwDialog"

    const-string v23, "onCreate: mAccessPoint == null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const v22, 0x7f090366

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b02cb

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b051e

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showIpConfigFields()V

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showProxyFields()V

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showKeyMgmtFields()V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b057c

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b057d

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 293
    const/16 v22, -0x1

    const v23, 0x7f0904ce

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 294
    const/16 v22, -0x3

    const v23, 0x7f0904d2

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/16 v23, 0x14

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 458
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    if-eqz v22, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v22, v0

    if-nez v22, :cond_22

    .line 459
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v22, v0

    if-eqz v22, :cond_21

    .line 460
    const/16 v22, -0x3

    const v23, 0x7f090388

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 468
    :goto_1
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 482
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 483
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 484
    sget v22, Lcom/android/settings/wifi/WifiVzwDialog;->Remembered:I

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 485
    const/16 v22, -0x1

    const v23, 0x7f090388

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 487
    :cond_1
    const/16 v22, 0x1

    sput v22, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 488
    sget v22, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    if-nez v22, :cond_25

    .line 489
    const/16 v22, -0x2

    const v23, 0x7f09038b

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 490
    const/16 v22, 0x1

    sput v22, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    .line 495
    :goto_3
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    .line 497
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 498
    sget v22, Lcom/android/settings/wifi/WifiVzwDialog;->Remembered:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 499
    const/16 v22, -0x1

    const v23, 0x7f0904ce

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b051d

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 502
    .local v12, group:Landroid/view/ViewGroup;
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 503
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setInverseBackgroundForced(Z)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v22, v0

    if-nez v22, :cond_26

    .line 505
    const v22, 0x7f0904d8

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 512
    .end local v12           #group:Landroid/view/ViewGroup;
    :cond_3
    :goto_4
    const/16 v22, -0x3

    const v23, 0x7f090388

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 513
    const/16 v22, -0x2

    const v23, 0x7f090389

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 515
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 516
    const/16 v22, -0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v22

    if-eqz v22, :cond_5

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->enableSubmitIfAppropriate()V

    .line 520
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/16 v23, 0x10

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 521
    return-void

    .line 298
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b051d

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 300
    .restart local v12       #group:Landroid/view/ViewGroup;
    const-string v22, "WifiVzwDialog"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onCreate: details "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    .line 302
    .local v20, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v20, :cond_7

    .line 303
    const v22, 0x7f09039f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v12, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 305
    :cond_7
    const v22, 0x7f09039d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v12, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v15

    .line 307
    .local v15, level:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v15, v0, :cond_9

    .line 308
    const v22, 0x7f0a0043

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 309
    .local v19, signal:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v15, v0, :cond_8

    .line 310
    const-string v22, "WifiVzwDialog"

    const-string v23, "Force level of wifi signal"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v15, v22, -0x1

    .line 313
    :cond_8
    const v22, 0x7f09039e

    aget-object v23, v19, v15

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v12, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 315
    .end local v19           #signal:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    .line 316
    .local v13, info:Landroid/net/wifi/WifiInfo;
    if-eqz v13, :cond_a

    .line 317
    const v22, 0x7f0903a0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "Mbps"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v12, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 319
    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    .line 320
    .local v5, address:I
    if-eqz v5, :cond_a

    .line 321
    const v22, 0x7f0903a1

    invoke-static {v5}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v12, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 325
    .end local v5           #address:I
    :cond_a
    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 327
    .local v8, config_details:Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_c

    .line 328
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 329
    const v22, 0x7f090328

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v12, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 331
    :cond_b
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    .line 332
    const v22, 0x7f090329

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v12, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 337
    .end local v8           #config_details:Landroid/net/wifi/WifiConfiguration;
    :cond_c
    const/16 v18, 0x0

    .line 338
    .local v18, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    .line 339
    const-string v22, "WifiVzwDialog"

    const-string v23, "network id is valid"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    .line 341
    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 342
    const v22, 0x7f090405

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 350
    .local v7, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 351
    const-string v22, "WifiVzwDialog"

    const-string v23, "ip assignment static"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setSelection(I)V

    .line 353
    const/16 v18, 0x1

    .line 358
    :goto_6
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 359
    const-string v22, "WifiVzwDialog"

    const-string v23, "proxy static"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setSelection(I)V

    .line 361
    const/16 v18, 0x1

    .line 373
    .end local v7           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 375
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 383
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 384
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 385
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showSecurityFields()V

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showIpConfigFields()V

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showProxyFields()V

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showKeyMgmtFields()V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b057c

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b057d

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 394
    if-eqz v18, :cond_10

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b057d

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b057e

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 399
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v22, v0

    if-eqz v22, :cond_17

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b02cb

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b051e

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b0520

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setSelection(I)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b0520

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 406
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 407
    const-string v22, "WifiVzwDialog"

    const-string v23, "vzwViewFlag sets to false - onCreate, mEdit is true"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/16 v22, -0x1

    const v23, 0x7f0904ce

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 409
    const/16 v22, -0x3

    const v23, 0x7f0904d2

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 410
    const-string v22, "WifiVzwDialog"

    const-string v23, "EDIT true connect and submit btn set "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v22, v0

    sput-object v22, Lcom/android/settings/wifi/WifiVzwDialog;->previousssid:Ljava/lang/String;

    .line 412
    const/16 v22, 0x1

    sput v22, Lcom/android/settings/wifi/WifiVzwDialog;->bEdit:I

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v22

    if-nez v22, :cond_0

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    .line 346
    :cond_11
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 355
    .restart local v7       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 362
    :cond_13
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$ProxySettings;->PAC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b0581

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 365
    .local v21, textView:Landroid/widget/TextView;
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const v23, 0x7f090157

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    const/16 v18, 0x1

    .line 369
    goto/16 :goto_7

    .line 370
    .end local v21           #textView:Landroid/widget/TextView;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    .line 377
    .end local v7           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_15
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v15, v0, :cond_16

    .line 378
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 380
    :cond_16
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 422
    :cond_17
    const/4 v6, 0x0

    .line 424
    .local v6, bCCMode:Z
    const-string v22, "security.mdpp"

    const-string v23, "None"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 425
    .local v16, mdppProperty:Ljava/lang/String;
    const-string v22, "WifiVzwDialog"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mdpp"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v22, "Enabled"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    const-string v22, "Enforcing"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v22

    if-eqz v22, :cond_1a

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 428
    .local v11, enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v11, :cond_1a

    .line 429
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    .line 430
    .local v10, eapMethod:I
    const/16 v22, 0x6

    move/from16 v0, v22

    if-eq v10, v0, :cond_19

    const/16 v22, 0x7

    move/from16 v0, v22

    if-ne v10, v0, :cond_1a

    .line 431
    :cond_19
    const/4 v6, 0x1

    .line 436
    .end local v10           #eapMethod:I
    .end local v11           #enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_1a
    if-nez v20, :cond_20

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v15, v0, :cond_20

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v22, v0

    if-nez v22, :cond_1f

    .line 438
    const v22, 0x7f0904d8

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    :cond_1b
    :goto_9
    if-nez v6, :cond_1c

    .line 445
    const/16 v22, -0x1

    const v23, 0x7f0904ce

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 446
    :cond_1c
    const-string v22, "WifiVzwDialog"

    const-string v23, "EDIT false state null set connect button "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->manageNetwork:Z

    move/from16 v22, v0

    if-nez v22, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    :cond_1d
    if-eqz v6, :cond_0

    .line 453
    :cond_1e
    const/16 v22, -0x1

    const v23, 0x7f0904cf

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 440
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1b

    .line 441
    const v22, 0x7f09038a

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 448
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b0565

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 462
    .end local v6           #bCCMode:Z
    .end local v12           #group:Landroid/view/ViewGroup;
    .end local v13           #info:Landroid/net/wifi/WifiInfo;
    .end local v15           #level:I
    .end local v16           #mdppProperty:Ljava/lang/String;
    .end local v18           #showAdvancedFields:Z
    .end local v20           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_21
    const/16 v22, -0x3

    const v23, 0x7f090387

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 463
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 464
    const-string v22, "WifiVzwDialog"

    const-string v23, "vzwViewFlag sets to true"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/16 v22, -0x2

    const v23, 0x7f090388

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 466
    const/16 v22, 0x0

    sput v22, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_1

    .line 470
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    if-eqz v22, :cond_24

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    .line 472
    .restart local v20       #state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v20, :cond_24

    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_23

    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_23

    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_24

    .line 475
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b051d

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 476
    .restart local v12       #group:Landroid/view/ViewGroup;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 479
    .end local v12           #group:Landroid/view/ViewGroup;
    .end local v20           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_24
    const/16 v22, -0x2

    const v23, 0x7f0904d3

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 492
    :cond_25
    const/16 v22, -0x2

    const v23, 0x7f090389

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 493
    const/16 v22, 0x1

    sput v22, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_3

    .line 508
    .restart local v12       #group:Landroid/view/ViewGroup;
    :cond_26
    const v22, 0x7f09038a

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 1065
    iput p3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    .line 1066
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showSecurityFields()V

    .line 1069
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showKeyMgmtFields()V

    .line 1078
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->enableSubmitIfAppropriate()V

    .line 1079
    return-void

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1072
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showSecurityFields()V

    goto :goto_0

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1074
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showProxyFields()V

    goto :goto_0

    .line 1076
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 1081
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1053
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v3, -0x1

    const/high16 v2, 0x4160

    .line 1619
    const-string v0, "WifiVzwDialog"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 1621
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1622
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 1623
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1625
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1626
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1628
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1629
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1631
    :cond_2
    return-void
.end method
