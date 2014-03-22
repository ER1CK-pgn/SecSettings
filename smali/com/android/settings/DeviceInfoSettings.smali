.class public Lcom/android/settings/DeviceInfoSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;


# static fields
.field private static mBoundRunnable:Ljava/lang/Runnable;

.field private static mIsSMServiceBound:Z

.field private static mSecurityManager:Lcom/sec/android/service/sm/service/ISecurityManager;

.field private static securitySWVersion:Ljava/lang/String;


# instance fields
.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field private mDeviceNameFragment:Lcom/android/settings/DeviceNameSettings;

.field mHits:[J

.field private srvConn:Landroid/content/ServiceConnection;

.field variantName:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1074
    sput-object v1, Lcom/android/settings/DeviceInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/service/ISecurityManager;

    .line 1075
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    .line 1076
    sput-object v1, Lcom/android/settings/DeviceInfoSettings;->mBoundRunnable:Ljava/lang/Runnable;

    .line 1077
    const-string v0, ""

    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->securitySWVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 137
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    .line 143
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ATL"

    aput-object v2, v1, v4

    const-string v2, "Spain"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "VDI"

    aput-object v2, v1, v4

    const-string v2, "Ireland"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "VDE"

    aput-object v2, v1, v4

    const-string v2, "Ireland(Prepaid)"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "CNX"

    aput-object v2, v1, v4

    const-string v2, "Romania"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VD2"

    aput-object v3, v2, v4

    const-string v3, "Germany"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VDR"

    aput-object v3, v2, v4

    const-string v3, "Germany(Prepaid)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VDC"

    aput-object v3, v2, v4

    const-string v3, "Czech Republic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VOD"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VOP"

    aput-object v3, v2, v4

    const-string v3, "UK(Prepaid)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TCL"

    aput-object v3, v2, v4

    const-string v3, "Portugal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VDH"

    aput-object v3, v2, v4

    const-string v3, "Hungary"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "The Netherlands"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VDP"

    aput-object v3, v2, v4

    const-string v3, "The Netherlands(Prepaid)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VGR"

    aput-object v3, v2, v4

    const-string v3, "Greece"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "OMN"

    aput-object v3, v2, v4

    const-string v3, "ITALY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->variantName:[[Ljava/lang/String;

    .line 1180
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceInfoSettings$2;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->srvConn:Landroid/content/ServiceConnection;

    .line 161
    return-void
.end method

.method private _startBoundIfPossible()V
    .locals 1

    .prologue
    .line 1174
    sget-object v0, Lcom/android/settings/DeviceInfoSettings;->mBoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/DeviceInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/service/ISecurityManager;

    if-eqz v0, :cond_0

    .line 1175
    sget-object v0, Lcom/android/settings/DeviceInfoSettings;->mBoundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1176
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->mBoundRunnable:Ljava/lang/Runnable;

    .line 1178
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    return v0
.end method

.method static synthetic access$100()Lcom/sec/android/service/sm/service/ISecurityManager;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/settings/DeviceInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/service/ISecurityManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/service/sm/service/ISecurityManager;)Lcom/sec/android/service/sm/service/ISecurityManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    sput-object p0, Lcom/android/settings/DeviceInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/service/ISecurityManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->showSecuritySWVersion()V

    return-void
.end method

.method private applySoftwareUpdatePolicy(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1058
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "enterprise_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 1062
    const/4 v0, 0x1

    .line 1064
    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isOTAUpgradeAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/app/enterprise/RestrictionPolicy;->isFirmwareRecoveryAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 1068
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1069
    if-eqz v1, :cond_2

    .line 1070
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1071
    :cond_2
    return-void
.end method

.method private doBindService()V
    .locals 4

    .prologue
    .line 1125
    sget-boolean v0, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    if-nez v0, :cond_0

    .line 1126
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SECURITY_MANAGER_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->srvConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    .line 1129
    :cond_0
    return-void
.end method

.method private doUnbindService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1132
    sget-boolean v0, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->srvConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1134
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->srvConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1135
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    .line 1138
    :cond_0
    return-void
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    .line 849
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 857
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 858
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    const-string v0, "DeviceInfoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Regex did not match on /proc/version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v0, "Unavailable"

    .line 866
    :goto_0
    return-object v0

    .line 861
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 862
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex match on /proc/version only returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " groups"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const-string v0, "Unavailable"

    goto :goto_0

    .line 866
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatKernelVersionVZW(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 789
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 802
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    .line 805
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex did not match on /proc/version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 815
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 816
    array-length v2, v1

    if-ne v2, v6, :cond_1

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 819
    :cond_1
    const-string v2, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    :goto_0
    return-object v0

    .line 807
    :cond_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ge v1, v7, :cond_0

    .line 808
    const-string v1, "LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex match on /proc/version only returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " groups"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const-string v0, "Unavailable"

    goto :goto_0

    .line 824
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCMCCBuildNumberSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1014
    const-string v0, "ro.build.date"

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    :try_start_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " "

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 1023
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1024
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1028
    :cond_0
    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 1029
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    :goto_1
    return-object v0

    .line 1031
    :cond_1
    const/4 v0, 0x1

    aget-object v0, v3, v0

    const-string v2, "Jan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    const-string v2, "01"

    aput-object v2, v3, v0

    .line 1045
    :goto_2
    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_d

    .line 1046
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x5

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1032
    :cond_2
    const/4 v0, 0x1

    aget-object v0, v3, v0

    const-string v2, "Feb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    const-string v2, "02"

    aput-object v2, v3, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1033
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, v3, v0

    const-string v2, "Mar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    const-string v2, "03"

    aput-object v2, v3, v0

    goto :goto_2

    .line 1034
    :cond_4
    const/4 v0, 0x1

    aget-object v0, v3, v0

    const-string v2, "Apr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    const-string v2, "04"

    aput-object v2, v3, v0

    goto :goto_2

    .line 1035
    :cond_5
    const/4 v0, 0x1

    aget-object v0, v3, v0

    const-string v2, "May"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    const-string v2, "05"

    aput-object v2, v3, v0

    goto/16 :goto_2

    .line 1036
    :cond_6
    const/4 v0, 0x1

    aget-object v0, v3, v0

    const-string v2, "Jun"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    const-string v2, "06"

    aput-object v2, v3, v0

    goto/16 :goto_2

    .line 1037
    :cond_7
    const/4 v0, 0x1

    aget-object v0, v3, v0

    const-string v2, "Jul"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    const-string v2, "07"

    aput-object v2, v3, v0

    goto/16 :goto_2

    .line 1038
    :cond_8
    const/4 v0, 0x1

    aget-object v0, v3, v0

    const-string v2, "Aug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    const-string v2, "08"

    aput-object v2, v3, v0

    goto/16 :goto_2

    .line 1039
    :cond_9
    const/4 v0, 0x1

    aget-object v0, v3, v0

    const-string v2, "Sep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    const-string v2, "09"

    aput-object v2, v3, v0

    goto/16 :goto_2

    .line 1040
    :cond_a
    const/4 v0, 0x1

    aget-object v0, v3, v0

    const-string v2, "Oct"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    const-string v2, "10"

    aput-object v2, v3, v0

    goto/16 :goto_2

    .line 1041
    :cond_b
    const/4 v0, 0x1

    aget-object v0, v3, v0

    const-string v2, "Nov"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    const-string v2, "11"

    aput-object v2, v3, v0

    goto/16 :goto_2

    .line 1042
    :cond_c
    const/4 v0, 0x1

    const-string v2, "12"

    aput-object v2, v3, v0

    goto/16 :goto_2

    .line 1049
    :cond_d
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x5

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 832
    :try_start_0
    const-string v0, "/proc/version"

    invoke-static {v0}, Lcom/android/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 839
    :goto_0
    return-object v0

    .line 834
    :catch_0
    move-exception v0

    .line 835
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    const-string v0, "Unavailable"

    goto :goto_0
.end method

.method public static getFormattedKernelVersionVZW()Ljava/lang/String;
    .locals 3

    .prologue
    .line 771
    :try_start_0
    const-string v0, "/proc/version"

    invoke-static {v0}, Lcom/android/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DeviceInfoSettings;->formatKernelVersionVZW(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 777
    :goto_0
    return-object v0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    const-string v0, "Unavailable"

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 879
    :try_start_0
    const-string v0, "/sys/board_properties/soc/msv"

    invoke-static {v0}, Lcom/android/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 882
    const-string v0, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :goto_0
    return-object v0

    .line 886
    :catch_0
    move-exception v0

    .line 889
    :cond_0
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 884
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private initCCMode()V
    .locals 4

    .prologue
    .line 1141
    sget-boolean v0, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    if-nez v0, :cond_0

    .line 1142
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SECURITY_MANAGER_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->srvConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    .line 1145
    :cond_0
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceInfoSettings$1;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->initSecuritySWVersion(Ljava/lang/Runnable;)V

    .line 1166
    return-void
.end method

.method private initSecuritySWVersion(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 1169
    sput-object p1, Lcom/android/settings/DeviceInfoSettings;->mBoundRunnable:Ljava/lang/Runnable;

    .line 1170
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->_startBoundIfPossible()V

    .line 1171
    return-void
.end method

.method private isPackageLoaded(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 996
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 998
    if-eqz v1, :cond_0

    .line 999
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1000
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is Installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    const/4 v0, 0x1

    .line 1006
    :cond_0
    :goto_0
    return v0

    .line 1003
    :catch_0
    move-exception v1

    .line 1004
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not Installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 763
    .local v0, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 765
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private readSalesCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 979
    const-string v0, ""

    .line 981
    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 988
    :cond_0
    :goto_0
    return-object v0

    .line 985
    :catch_0
    move-exception v1

    .line 986
    const-string v1, "DeviceInfoSettings"

    const-string v2, "readSalesCode failed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readSoftwareUpdateType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 897
    const-string v0, "system_update_settings"

    .line 898
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 899
    const-string v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AIO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 901
    :cond_0
    const-string v0, "com.sec.android.fotaclient"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 902
    const-string v0, "software_update_settings_no_subtree"

    .line 932
    :cond_1
    :goto_0
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FOTA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-object v0

    .line 904
    :cond_2
    const-string v0, "system_update_settings_na_gsm"

    goto :goto_0

    .line 909
    :cond_3
    const-string v2, "TMB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 911
    const-string v0, "com.sec.android.fotaclient"

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 912
    const-string v0, "software_update_settings_no_subtree"

    goto :goto_0

    .line 914
    :cond_4
    const-string v0, "system_update_settings_na_gsm"

    goto :goto_0

    .line 919
    :cond_5
    const-string v2, "USC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "CRI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "LRA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 920
    :cond_6
    const-string v0, "software_update_settings_no_subtree"

    goto :goto_0

    .line 921
    :cond_7
    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 922
    const-string v0, "system_update_settings_vzw"

    goto :goto_0

    .line 923
    :cond_8
    const-string v2, "SPR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "BST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 925
    const-string v2, "com.sec.android.fotaclient"

    invoke-direct {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 926
    const-string v0, "TFN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "CSP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 927
    :cond_9
    const-string v0, "software_update_settings_no_subtree"

    goto/16 :goto_0

    .line 924
    :cond_a
    const-string v0, "system_update_settings_spr"

    goto/16 :goto_0

    .line 929
    :cond_b
    const-string v0, "software_update_settings"

    goto/16 :goto_0
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .parameter "preference"
    .parameter "resId"

    .prologue
    .line 729
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 731
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 735
    .end local v0           #pref:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 717
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    const-string v0, "DeviceInfoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' missing and no \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeSoftwareUpdatePreference(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 941
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    const-string v0, "software_update_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 944
    const-string v0, "system_update_settings_na_gsm"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 945
    const-string v0, "software_update_settings_no_subtree"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 947
    :cond_0
    const-string v0, "software_update_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 948
    const-string v0, "software_update_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 950
    :cond_1
    const-string v0, "system_update_settings_na_gsm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 951
    const-string v0, "system_update_settings_na_gsm"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 953
    :cond_2
    const-string v0, "software_update_settings_no_subtree"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 954
    const-string v0, "software_update_settings_no_subtree"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 956
    :cond_3
    const-string v0, "system_update_settings_vzw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 957
    const-string v0, "system_update_settings_vzw"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 959
    :cond_4
    const-string v0, "system_update_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 960
    const-string v0, "system_update_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 962
    :cond_5
    const-string v0, "system_update_settings_spr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 963
    const-string v0, "system_update_settings_spr"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 972
    :goto_0
    return-void

    .line 965
    :cond_6
    const-string v0, "no_software_update_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 966
    const-string v0, "DeviceInfoSettings"

    const-string v1, "No update menu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 969
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "system_update_settings"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 739
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 747
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :goto_0
    return-void

    .line 749
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showSecuritySWVersion()V
    .locals 11

    .prologue
    const v10, 0x7f090612

    const v9, 0x7f090610

    const v8, 0x7f09060f

    .line 1080
    const-string v2, ""

    .line 1081
    const-string v1, ""

    .line 1084
    const-string v3, "MDF "

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ro.security.mdpp.ver"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Release "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ro.security.mdpp.release"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1087
    const-string v0, ""

    .line 1088
    const-string v6, "security.mdpp"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1090
    const-string v7, "Enabled"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1099
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1102
    const-string v0, ""

    const-string v3, "ro.security.vpnpp.ver"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1103
    const-string v3, "VPN "

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ro.security.vpnpp.ver"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Release "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ro.security.vpnpp.release"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1106
    const-string v0, ""

    .line 1107
    const-string v6, "security.vpnpp"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1109
    const-string v7, "Enabled"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1118
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1121
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->securitySWVersion:Ljava/lang/String;

    .line 1122
    const-string v0, "security_sw_version"

    sget-object v1, Lcom/android/settings/DeviceInfoSettings;->securitySWVersion:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    return-void

    .line 1092
    :cond_2
    const-string v7, "Enforcing"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1094
    :cond_3
    const-string v7, "Ready"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1095
    const-string v0, ""

    goto/16 :goto_0

    .line 1096
    :cond_4
    const-string v7, "Disabled"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1111
    :cond_5
    const-string v7, "Enforcing"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1113
    :cond_6
    const-string v7, "Ready"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1114
    const-string v0, ""

    goto/16 :goto_1

    .line 1115
    :cond_7
    const-string v7, "Disabled"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 34
    .parameter "icicle"

    .prologue
    .line 165
    invoke-super/range {p0 .. p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const v31, 0x7f070036

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 171
    const-string v31, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Ljava/lang/String;)V

    .line 174
    const-string v31, "Enabled"

    const-string v32, "ro.security.mdpp.ux"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_17

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->doBindService()V

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->showSecuritySWVersion()V

    .line 177
    const-string v31, "security_sw_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 183
    :goto_0
    const-string v31, "firmware_version"

    sget-object v32, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v31, "firmware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 185
    const-string v31, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 186
    const-string v31, "label_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->readSalesCode()Ljava/lang/String;

    move-result-object v25

    .line 189
    .local v25, sales_code:Ljava/lang/String;
    const-string v31, "ro.product.model"

    const-string v32, "Unknown"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 192
    .local v22, model:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Setting_ChangeApprovedModemVersion"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_18

    const-string v31, "none"

    const-string v32, "ril.approved_modemver"

    const-string v33, "none"

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_18

    .line 194
    const-string v31, "baseband_version"

    const-string v32, "ril.approved_modemver"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_1
    const-string v31, "SPR"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_0

    const-string v31, "VMU"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_0

    const-string v31, "BST"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_0

    const-string v31, "XAS"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1d

    .line 202
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Setting_ChangeApprovedModemVersion"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1b

    const-string v31, "none"

    const-string v32, "ril.approved_modemver"

    const-string v33, "none"

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1b

    .line 204
    const-string v31, "software_version"

    const-string v32, "ril.approved_modemver"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_2
    const-string v31, "VZW"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1

    .line 215
    const-string v31, "icon_glossary"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 217
    :cond_1
    const-string v31, "VZW"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 220
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    const-string v32, "com.samsung.helphub"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    .line 221
    .local v19, info:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 222
    const-string v31, "icon_glossary"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v19           #info:Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_3
    const-string v31, "ro.product.name"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "mproject"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_3

    .line 230
    const-string v31, "label_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 233
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Common_EnableRegionalDevice"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_21

    .line 234
    move-object/from16 v29, v25

    .line 235
    .local v29, str:Ljava/lang/String;
    const-string v31, "DEF"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1e

    .line 236
    const-string v31, "installed_variant_version"

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f090608

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v29           #str:Ljava/lang/String;
    :goto_4
    const-string v31, "device_model"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v31, "fcc_equipment_id"

    const-string v32, "ro.ril.fccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v31, "device_model"

    sget-object v32, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v31, "CHM"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_4

    const-string v31, "CMCC"

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_22

    .line 258
    :cond_4
    const-string v31, "build_number"

    sget-object v32, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getCMCCBuildNumberSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_5
    const-string v31, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 263
    const-string v31, "VZW"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_23

    .line 264
    const-string v31, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->getFormattedKernelVersionVZW()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    :goto_6
    const/16 v26, 0x0

    .line 269
    .local v26, seStatus:Ljava/lang/String;
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v31

    if-eqz v31, :cond_25

    .line 270
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v31

    if-eqz v31, :cond_24

    .line 271
    invoke-static {}, Lcom/android/server/pm/Revision;->get_sepolicy_build_date()Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, buildDate:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090bc0

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 273
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 274
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Lcom/android/server/pm/Revision;->get_sepolicy_version()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 275
    if-eqz v6, :cond_5

    .line 276
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 277
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 285
    .end local v6           #buildDate:Ljava/lang/String;
    :cond_5
    :goto_7
    const-string v31, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    const-string v32, "selinux_status"

    const-string v33, "ro.build.selinux"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    const-string v32, "safetylegal"

    const-string v33, "ro.url.safetylegal"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    const-string v32, "fcc_equipment_id"

    const-string v33, "ro.ril.fccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v31, "DCM"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 299
    const-string v31, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 303
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 304
    const-string v31, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 309
    :cond_7
    const-string v31, "XSG"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_8

    const-string v31, "XSD"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_8

    const-string v31, "XST"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_8

    const-string v31, "XSZ"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_8

    const-string v31, "XSM"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_8

    const-string v31, "XSS"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_8

    const-string v31, "XSI"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_28

    .line 311
    :cond_8
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "country_cert_info_enable"

    invoke-static/range {v31 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_27

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "country_cert_info_traid"

    invoke-static/range {v31 .. v32}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 313
    .local v11, certTRAID:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "country_cert_info_ta"

    invoke-static/range {v31 .. v32}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 314
    .local v10, certTA:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "country_cert_info_name"

    invoke-static/range {v31 .. v32}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 315
    .local v8, certCountryName:Ljava/lang/String;
    if-eqz v11, :cond_26

    if-eqz v10, :cond_26

    if-eqz v8, :cond_26

    .line 316
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "TRA ID : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\nTA : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, certName:Ljava/lang/String;
    const-string v31, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 318
    const-string v31, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    .end local v8           #certCountryName:Ljava/lang/String;
    .end local v9           #certName:Ljava/lang/String;
    .end local v10           #certTA:Ljava/lang/String;
    .end local v11           #certTRAID:Ljava/lang/String;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 338
    .local v5, act:Landroid/app/Activity;
    const-string v31, "container"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceGroup;

    .line 339
    .local v23, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v31, "terms"

    const/16 v32, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v5, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 341
    const-string v31, "license"

    const/16 v32, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v5, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 343
    const-string v31, "copyright"

    const/16 v32, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v5, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 345
    const-string v31, "team"

    const/16 v32, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v5, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 353
    new-instance v16, Ljava/io/File;

    const-string v31, "/system/lib/drm/libdivxplugin.so"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v16, divxplugin_path:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v31

    if-nez v31, :cond_9

    .line 356
    const-string v31, "divx_license_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 357
    .local v15, divxLicenseSetting:Landroid/preference/Preference;
    if-eqz v15, :cond_9

    .line 358
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 363
    .end local v15           #divxLicenseSetting:Landroid/preference/Preference;
    :cond_9
    const-string v31, "VMU"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_a

    const-string v31, "SPR"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_a

    const-string v31, "BST"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_a

    const-string v31, "XAR"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_a

    const-string v31, "XAS"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_a

    .line 365
    const-string v31, "privacy_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 369
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "samsung_eula_agree"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_29

    const/4 v12, 0x1

    .line 370
    .local v12, confirmed:Z
    :goto_9
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v31

    if-eqz v31, :cond_b

    .line 372
    const/4 v12, 0x1

    .line 375
    :cond_b
    const-string v31, "SPR"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_c

    const-string v31, "XAS"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_c

    const-string v31, "VMU"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_c

    const-string v31, "BST"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 376
    :cond_c
    const/4 v12, 0x1

    .line 378
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v31

    const-string v32, "com.sec.android.app.SecSetupWizard.SamsungLegal"

    invoke-static/range {v31 .. v32}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_e

    if-nez v12, :cond_f

    .line 379
    :cond_e
    const-string v31, "samsung_legal"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    :cond_f
    const-string v31, "ro.product.name"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 383
    .local v7, buildcarrier:Ljava/lang/String;
    const-string v31, "iconvmu"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_10

    .line 384
    const-string v31, "telespree_activation"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 387
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    .line 388
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v31

    if-nez v31, :cond_2a

    .line 389
    const-string v31, "system_update_settings"

    const/16 v32, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v5, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 398
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v30

    .line 399
    .local v30, updateType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removeSoftwareUpdatePreference(Ljava/lang/String;)V

    .line 401
    const-string v31, "contributors"

    const/16 v32, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v5, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 405
    const-string v31, "additional_system_update_settings"

    const v32, 0x7f0c0005

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 408
    const-string v31, "regulatory_info"

    const v32, 0x7f0c0007

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 411
    const-string v31, "com.samsung.ccr"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_11

    .line 413
    const-string v31, "DeviceInfoSettings"

    const-string v32, "remove diagnostics_and_usage"

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v31, "diagnostics_and_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 417
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Setting_EnableHwVersionDisplay"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2d

    .line 419
    const-string v31, "ril.hw_ver"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, HW_version_SysProp:Ljava/lang/String;
    if-eqz v4, :cond_2c

    .line 421
    const-string v31, "SPH-D710"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0xa

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_2b

    .line 422
    const-string v31, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    const/16 v32, 0x2

    const/16 v33, 0xa

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 435
    .end local v4           #HW_version_SysProp:Ljava/lang/String;
    :goto_b
    const-string v31, "SPR"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_12

    const-string v31, "VMU"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_12

    const-string v31, "BST"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_12

    const-string v31, "XAS"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2f

    .line 437
    :cond_12
    const-string v31, "ril.hw_ver"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 438
    .restart local v4       #HW_version_SysProp:Ljava/lang/String;
    const-string v31, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 439
    if-eqz v4, :cond_2e

    .line 440
    const-string v31, "hardware_version_spr"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 441
    const-string v31, "DeviceInfoSettings"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CSCFEATURE_SETTINGS_ENABLEHWVERSIONDISPLAY:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v4           #HW_version_SysProp:Ljava/lang/String;
    :goto_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Setting_DisableMenuSoftwareUpdate"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 451
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 456
    :cond_13
    const-string v31, "help"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 492
    const-string v31, "CTC"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_14

    .line 493
    const-string v31, "ctc_epush"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 497
    :cond_14
    const-string v31, "plmn_update_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 501
    const-string v31, "sprint_4g_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 502
    .local v24, removable:Landroid/preference/Preference;
    if-eqz v24, :cond_15

    .line 503
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 507
    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v31

    if-eqz v31, :cond_30

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_30

    .line 509
    const-string v31, "key_label_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    .line 510
    .local v21, labelPref:Landroid/preference/Preference;
    const-string v31, "com.android.settings.deviceinfo.LabelSettings"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 517
    .end local v21           #labelPref:Landroid/preference/Preference;
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "device_name"

    invoke-static/range {v31 .. v32}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 518
    .local v14, deviceName:Ljava/lang/String;
    const-string v31, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v14}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v31, "ro.csb_val"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 523
    .local v20, keyIndex:Ljava/lang/String;
    const-string v31, "DeviceInfoSettings"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CSB debug keyindex= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v31, "unknown"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_16

    const-string v31, "ABSENT"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_16

    const-string v31, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_31

    .line 526
    :cond_16
    const-string v31, "csb_value"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 550
    :goto_e
    const-string v31, "preload_update"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 551
    return-void

    .line 179
    .end local v5           #act:Landroid/app/Activity;
    .end local v7           #buildcarrier:Ljava/lang/String;
    .end local v12           #confirmed:Z
    .end local v14           #deviceName:Ljava/lang/String;
    .end local v16           #divxplugin_path:Ljava/io/File;
    .end local v20           #keyIndex:Ljava/lang/String;
    .end local v22           #model:Ljava/lang/String;
    .end local v23           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v24           #removable:Landroid/preference/Preference;
    .end local v25           #sales_code:Ljava/lang/String;
    .end local v26           #seStatus:Ljava/lang/String;
    .end local v30           #updateType:Ljava/lang/String;
    :cond_17
    const-string v31, "security_sw_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    .restart local v22       #model:Ljava/lang/String;
    .restart local v25       #sales_code:Ljava/lang/String;
    :cond_18
    const-string v31, "E160L"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_19

    const-string v31, "E120L"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1a

    .line 196
    :cond_19
    const-string v31, "baseband_version"

    const-string v32, "ril.sw_ver"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 198
    :cond_1a
    const-string v31, "baseband_version"

    const-string v32, "gsm.version.baseband"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    :cond_1b
    const-string v31, "E160L"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1c

    .line 206
    const-string v31, "software_version"

    const-string v32, "ril.sw_ver"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 208
    :cond_1c
    const-string v31, "software_version"

    const-string v32, "gsm.version.baseband"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 211
    :cond_1d
    const-string v31, "software_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 224
    :catch_0
    move-exception v17

    .line 226
    .local v17, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 238
    .end local v17           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v29       #str:Ljava/lang/String;
    :cond_1e
    const/16 v18, 0x0

    .line 239
    .local v18, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->variantName:[[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v28, v0

    .line 240
    .local v28, size:I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090786

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 241
    .local v13, countryName:Ljava/lang/String;
    :goto_f
    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_20

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->variantName:[[Ljava/lang/String;

    move-object/from16 v31, v0

    aget-object v31, v31, v18

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1f

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->variantName:[[Ljava/lang/String;

    move-object/from16 v31, v0

    aget-object v31, v31, v18

    const/16 v32, 0x1

    aget-object v13, v31, v32

    .line 245
    :cond_1f
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 247
    :cond_20
    const-string v31, "installed_variant_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v13}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 250
    .end local v13           #countryName:Ljava/lang/String;
    .end local v18           #i:I
    .end local v28           #size:I
    .end local v29           #str:Ljava/lang/String;
    :cond_21
    const-string v31, "installed_variant_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 260
    :cond_22
    const-string v31, "build_number"

    sget-object v32, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 266
    :cond_23
    const-string v31, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 280
    .restart local v26       #seStatus:Ljava/lang/String;
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090bbf

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_7

    .line 283
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090bbe

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_7

    .line 320
    .restart local v8       #certCountryName:Ljava/lang/String;
    .restart local v10       #certTA:Ljava/lang/String;
    .restart local v11       #certTRAID:Ljava/lang/String;
    :cond_26
    :try_start_2
    const-string v31, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    .line 325
    .end local v8           #certCountryName:Ljava/lang/String;
    .end local v10           #certTA:Ljava/lang/String;
    .end local v11           #certTRAID:Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 326
    .local v17, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    .line 323
    .end local v17           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_27
    :try_start_3
    const-string v31, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_8

    .line 329
    :cond_28
    const-string v31, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 369
    .restart local v5       #act:Landroid/app/Activity;
    .restart local v16       #divxplugin_path:Ljava/io/File;
    .restart local v23       #parentPreference:Landroid/preference/PreferenceGroup;
    :cond_29
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 394
    .restart local v7       #buildcarrier:Ljava/lang/String;
    .restart local v12       #confirmed:Z
    :cond_2a
    const-string v31, "system_update_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 425
    .restart local v4       #HW_version_SysProp:Ljava/lang/String;
    .restart local v30       #updateType:Ljava/lang/String;
    :cond_2b
    const-string v31, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 426
    const-string v31, "DeviceInfoSettings"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CSCFEATURE_SETTINGS_ENABLEHWVERSIONDISPLAY:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 429
    :cond_2c
    const-string v31, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    const v32, 0x7f09009b

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 432
    .end local v4           #HW_version_SysProp:Ljava/lang/String;
    :cond_2d
    const-string v31, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 443
    .restart local v4       #HW_version_SysProp:Ljava/lang/String;
    :cond_2e
    const-string v31, "hardware_version_spr"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    const v32, 0x7f09009b

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 446
    .end local v4           #HW_version_SysProp:Ljava/lang/String;
    :cond_2f
    const-string v31, "hardware_version_spr"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 513
    .restart local v24       #removable:Landroid/preference/Preference;
    :cond_30
    const-string v31, "key_label_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 529
    .restart local v14       #deviceName:Ljava/lang/String;
    .restart local v20       #keyIndex:Ljava/lang/String;
    :cond_31
    const-string v31, "1"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_32

    .line 530
    const-string v27, "Type: Samsung"

    .line 545
    .local v27, secbootStatus:Ljava/lang/String;
    :goto_10
    const-string v31, "csb_value"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 532
    .end local v27           #secbootStatus:Ljava/lang/String;
    :cond_32
    const-string v31, "2"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_33

    .line 533
    const-string v27, "Type: Knox A"

    .restart local v27       #secbootStatus:Ljava/lang/String;
    goto :goto_10

    .line 535
    .end local v27           #secbootStatus:Ljava/lang/String;
    :cond_33
    const-string v31, "3"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_34

    .line 536
    const-string v27, "Type: Knox B"

    .restart local v27       #secbootStatus:Ljava/lang/String;
    goto :goto_10

    .line 538
    .end local v27           #secbootStatus:Ljava/lang/String;
    :cond_34
    const-string v31, "4"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_35

    .line 539
    const-string v27, "Type: Knox C"

    .restart local v27       #secbootStatus:Ljava/lang/String;
    goto :goto_10

    .line 542
    .end local v27           #secbootStatus:Ljava/lang/String;
    :cond_35
    const-string v27, "Type: Invalid"

    .restart local v27       #secbootStatus:Ljava/lang/String;
    goto :goto_10
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 590
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->doUnbindService()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 596
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "SecurityManagerService : IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 580
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 582
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/android/settings/DeviceNameSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/android/settings/DeviceNameSettings;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 585
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 570
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 575
    return-void
.end method

.method public onPositiveClick()V
    .locals 2

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    const-string v1, "device_name"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 708
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 600
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 601
    const-string v1, "firmware_version"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v7, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 604
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    aget-wide v0, v0, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 605
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    const-string v1, "android"

    const-class v2, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_1
    return v0

    .line 609
    :catch_0
    move-exception v1

    .line 610
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 613
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build_number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 615
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    goto :goto_1

    .line 617
    :cond_2
    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v0, :cond_7

    .line 618
    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-ne v0, v7, :cond_3

    .line 619
    invoke-super {p0, p2}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    .line 620
    goto :goto_1

    .line 623
    :cond_3
    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 624
    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v0, :cond_5

    .line 625
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    invoke-virtual {v0, v1, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 628
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_4

    .line 629
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 631
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09009c

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 633
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 634
    :cond_5
    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_6

    .line 637
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 639
    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f11

    iget v3, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 642
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 644
    :cond_7
    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_8

    .line 646
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 648
    :cond_8
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09009d

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 650
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 652
    :cond_9
    const-string v1, "system_update_settings_na_gsm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 653
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SOFTWARE_UPDATE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 655
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v7

    .line 656
    goto/16 :goto_1

    .line 657
    :cond_a
    const-string v1, "preload_update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 658
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 659
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_b

    .line 660
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 661
    const-string v1, "com.android.settings.PreloadAppUpdate"

    const v3, 0x7f0916b8

    const-string v4, ""

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v0, v7

    .line 662
    goto/16 :goto_1

    :cond_b
    move v0, v7

    .line 664
    goto/16 :goto_1

    .line 665
    :cond_c
    const-string v1, "software_update_settings_no_subtree"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 666
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v7

    .line 669
    goto/16 :goto_1

    .line 670
    :cond_d
    const-string v0, "device_name"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_e

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->showDialog()V

    goto/16 :goto_0

    .line 673
    :cond_e
    const-string v0, "label_name"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_f

    .line 675
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 676
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.LabelName"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 681
    :cond_f
    const-string v0, "icon_glossary"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_10

    .line 682
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 683
    const-string v1, "helphub:category"

    const-string v2, "ICONGL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 685
    :cond_10
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "security_sw_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const-string v0, "DeviceInfoSettings"

    const-string v1, "SecurityManagerService : On Click, Security SW Version"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09060e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->securitySWVersion:Ljava/lang/String;

    .line 688
    const-string v0, "security_sw_version"

    sget-object v1, Lcom/android/settings/DeviceInfoSettings;->securitySWVersion:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->initCCMode()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 555
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 556
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "development"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "show"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 559
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 561
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, updateType:Ljava/lang/String;
    const-string v1, "system_update_settings_vzw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    invoke-direct {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->applySoftwareUpdatePolicy(Ljava/lang/String;)V

    .line 565
    :cond_0
    return-void

    .line 556
    .end local v0           #updateType:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x7

    goto :goto_0
.end method

.method showDialog()V
    .locals 3

    .prologue
    .line 696
    const v0, 0x7f090070

    invoke-static {v0}, Lcom/android/settings/DeviceNameSettings;->newInstance(I)Lcom/android/settings/DeviceNameSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/android/settings/DeviceNameSettings;

    .line 697
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/android/settings/DeviceNameSettings;

    invoke-virtual {v0, p0}, Lcom/android/settings/DeviceNameSettings;->setConfirmationDialogFragmentListener(Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;)V

    .line 698
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/android/settings/DeviceNameSettings;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 699
    return-void
.end method
