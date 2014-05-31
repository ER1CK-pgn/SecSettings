.class public Lcom/android/settings/nearby/NearbyEnabler;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleAllowUpload;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleServerName;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleServerStart;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;
    }
.end annotation


# static fields
.field private static final ACCESS_ACCEPT_ALL:Ljava/lang/String; = "0"

.field private static final ACCESS_ONLY_ALLOWED_DEVICES:Ljava/lang/String; = "1"

.field private static final DOWNLAOD_TO_MEMORY:Ljava/lang/String; = "1"

.field private static final DOWNLOAD_TO_PHONE:Ljava/lang/String; = "0"

.field private static final KEY_ALLSHARE_ACCEPTED_DEVICE:Ljava/lang/String; = "allshare_accept_device"

.field private static final KEY_ALLSHARE_DEVICE_NAME:Ljava/lang/String; = "allshare_device_name"

.field private static final KEY_ALLSHARE_DOWNLOAD_OPTION:Ljava/lang/String; = "allshare_download_from"

.field private static final KEY_ALLSHARE_DOWNLOAD_TO:Ljava/lang/String; = "allshare_download_to"

.field private static final KEY_ALLSHARE_ONOFF:Ljava/lang/String; = "nearby_settings"

.field private static final KEY_ALLSHARE_REJECTED_DEVICE:Ljava/lang/String; = "allshare_reject_device"

.field private static final KEY_ALLSHARE_SHARED_CONTENTS:Ljava/lang/String; = "allshare_shared_contents"

.field private static final KEY_SEPARATOR:Ljava/lang/String; = "*--*"

.field private static final LENGTH_DEVICE_NAME_MAX:I = 0x37

.field private static final LENGTH_DEVICE_NAME_MAX_HOMESYNC:I = 0x35

.field private static final PATH_DOWNLOAD_FOLDER_NAME:Ljava/lang/String; = "/Nearby"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "pref_allshare"

.field public static final SHARE_AUDIO_FLAG:I = 0xff

.field public static final SHARE_IMAGE_FLAG:I = 0xff0000

.field private static final SHARE_VALUE_MUSIC:Ljava/lang/String; = "2"

.field private static final SHARE_VALUE_PHOTOS:Ljava/lang/String; = "1"

.field private static final SHARE_VALUE_VIDEOS:Ljava/lang/String; = "0"

.field public static final SHARE_VIDEO_FLAG:I = 0xff00

.field private static final TAGClass:Ljava/lang/String; = "NearbyEnabler"

.field private static final TEXT_DEVICE_TYPE_CAMERA:Ljava/lang/String; = "[Camera]"

.field private static final TEXT_DEVICE_TYPE_HOMESYNC:Ljava/lang/String; = "[HomeSync]"

.field private static final TEXT_DEVICE_TYPE_MOBILE:Ljava/lang/String; = "[Mobile]"

.field private static final TEXT_DEVICE_TYPE_TABLET:Ljava/lang/String; = "[Tablet]"

.field private static final TEXT_SHOW_ACCESS_CONTROL:Ljava/lang/String; = "*#@&*#"

.field private static final TYPE_NEARBY:Ljava/lang/String; = "TYPE_NEARBY"

.field private static final TYPE_SETTINGS:Ljava/lang/String; = "TYPE_SETTINGS"

.field private static final UPLOAD_ALWAYS_ASK:Ljava/lang/String; = "1"

.field private static mPreferenceChangeThread:Landroid/os/HandlerThread;

.field private static mPreferenceChangeWorker:Landroid/os/Handler;


# instance fields
.field private enablerType:Ljava/lang/String;

.field private isBound:Z

.field private isBroadcastRegistered:Z

.field private isResumeState:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

.field private final mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

.field private final mNearbyDeviceName:Landroid/preference/PreferenceScreen;

.field private final mNearbyDownloadOption:Landroid/preference/ListPreference;

.field private final mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

.field private final mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

.field private mNearbySwitch:Landroid/widget/Switch;

.field private mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mPreferenceChangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 210
    sput-object v0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 212
    sput-object v0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 142
    const-string v0, "TYPE_SETTINGS"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 532
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    .line 534
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    .line 778
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    .line 809
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$4;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    const-string v0, "NearbyEnabler"

    const-string v1, "NearbyEnabler"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    .line 147
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 148
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    .line 149
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    .line 150
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    .line 151
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    .line 153
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    .line 154
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    .line 156
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initEnabler()V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 4
    .parameter "context"
    .parameter "nearbyScreen"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 174
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 142
    const-string v0, "TYPE_SETTINGS"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 532
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    .line 534
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    .line 778
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    .line 809
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$4;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    const-string v0, "NearbyEnabler"

    const-string v1, "NearbyEnabler"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 178
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    .line 179
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    .line 180
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    .line 181
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    .line 183
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    .line 184
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    .line 186
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initEnabler()V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .parameter "context"
    .parameter "nearbySwitch"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 142
    const-string v0, "TYPE_SETTINGS"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 532
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    .line 534
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    .line 778
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    .line 809
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$4;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    const-string v0, "NearbyEnabler"

    const-string v1, "NearbyEnabler"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    .line 162
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 163
    iput-object p2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    .line 164
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    .line 165
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    .line 166
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    .line 168
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    .line 169
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    .line 171
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initEnabler()V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/PreferenceScreen;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Lcom/android/settings/nearby/DownloadListPreference;Landroid/preference/ListPreference;)V
    .locals 4
    .parameter "context"
    .parameter "nearbySwitch"
    .parameter "deviceName"
    .parameter "sharedContents"
    .parameter "acceptList"
    .parameter "rejectList"
    .parameter "downloadTo"
    .parameter "downloadFrom"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 142
    const-string v0, "TYPE_SETTINGS"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 532
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    .line 534
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    .line 778
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    .line 809
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$4;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    const-string v0, "NearbyEnabler"

    const-string v1, "NearbyEnabler"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    .line 195
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 196
    iput-object p2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    .line 197
    iput-object p3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    .line 198
    iput-object p4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    .line 199
    iput-object p5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    .line 201
    iput-object p7, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    .line 202
    iput-object p8, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    .line 204
    const-string v0, "TYPE_NEARBY"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initEnabler()V

    .line 207
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setDefaultValues()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/nearby/NearbyEnabler;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbyEnabler;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/nearby/NearbyEnabler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/nearby/NearbyEnabler;Ljava/util/HashSet;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbyEnabler;->getListString(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/nearby/IMediaServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/IMediaServer;)Lcom/android/settings/nearby/IMediaServer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/nearby/NearbyEnabler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    return-void
.end method

.method private checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "deviceName"

    .prologue
    .line 714
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    invoke-static {v5, v6, p1}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    move-object v4, p1

    .line 719
    .local v4, modifiedName:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 720
    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, changedName:Ljava/lang/String;
    move-object p1, v0

    .line 722
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove all \'/\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    .end local v0           #changedName:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 731
    .local v3, maxLength:I
    const/16 v3, 0x37

    .line 734
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v3, :cond_1

    .line 735
    const/4 v5, 0x0

    const/16 v6, 0x36

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 736
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "substring for MAX length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_1
    :try_start_0
    const-string v1, "[Mobile]"

    .line 743
    .local v1, deviceType:Ljava/lang/String;
    const-string v5, "NONE"

    const-string v6, "NONE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 745
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    const-string v7, "Featured device: NONE"

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v1, "[NONE]"

    .line 761
    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 775
    .end local v1           #deviceType:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 756
    .restart local v1       #deviceType:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v6, 0x258

    if-lt v5, v6, :cond_2

    .line 757
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    const-string v7, "TABLET Device"

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v1, "[Tablet]"

    goto :goto_0

    .line 764
    :cond_4
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 765
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 767
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f0910d3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 770
    .end local v1           #deviceType:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 771
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getDownloadOption()Ljava/lang/String;
    .locals 5

    .prologue
    .line 639
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v3, "pref_allshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 642
    .local v0, sharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "allshare_download_from"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 648
    :cond_0
    return-object v1
.end method

.method private getDownloadPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDownloadTo()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, flag:Ljava/lang/String;
    const/4 v1, 0x0

    .line 596
    .local v1, path:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Nearby"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 598
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 623
    :cond_0
    :goto_0
    return-object v1

    .line 599
    :cond_1
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 600
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 602
    .local v2, storageManager:Landroid/os/storage/StorageManager;
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v1

    .line 604
    const-string v3, "mounted"

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Nearby"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 606
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 608
    :cond_2
    const-string v3, "NearbyEnabler"

    const-string v4, "getDownloadPath"

    const-string v5, "No External Volume: Change to Internal"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Nearby"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 611
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 612
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v3, :cond_0

    .line 613
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    const-string v4, "0"

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/nearby/NearbyEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    .end local v2           #storageManager:Landroid/os/storage/StorageManager;
    :cond_3
    const-string v3, "NearbyEnabler"

    const-string v4, "getDownloadPath"

    const-string v5, "HandleSetUploadPath has incorrect value - Init to Default"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Nearby"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private getDownloadTo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 627
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v3, "pref_allshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 629
    .local v0, sharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "allshare_download_to"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v2, :cond_0

    .line 632
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/nearby/DownloadListPreference;->setValue(Ljava/lang/String;)V

    .line 635
    :cond_0
    return-object v1
.end method

.method private getExernalSdPath()Ljava/lang/String;
    .locals 11

    .prologue
    .line 572
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 574
    .local v4, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 576
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v5

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 577
    .local v6, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    const-string v8, "sd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 578
    const-string v7, "NearbyEnabler"

    const-string v8, "getExernalSdPath"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ExternalSD path:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 587
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #storageManager:Landroid/os/storage/StorageManager;
    .end local v5           #storageVolumes:[Landroid/os/storage/StorageVolume;
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v7

    .line 576
    .restart local v0       #arr$:[Landroid/os/storage/StorageVolume;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #storageManager:Landroid/os/storage/StorageManager;
    .restart local v5       #storageVolumes:[Landroid/os/storage/StorageVolume;
    .restart local v6       #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #storageManager:Landroid/os/storage/StorageManager;
    .end local v5           #storageVolumes:[Landroid/os/storage/StorageVolume;
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v1

    .line 584
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "NearbyEnabler"

    const-string v8, "getExernalSdPath"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 587
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private getListString(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 1098
    :cond_0
    const/4 v0, 0x0

    .line 1108
    :goto_0
    return-object v0

    .line 1100
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1102
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1104
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1106
    const-string v0, "*--*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1108
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSharedContent()I
    .locals 9

    .prologue
    .line 652
    const/4 v1, 0x0

    .line 655
    .local v1, flag:I
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v6}, Lcom/android/settings/nearby/IMediaServer;->getSharedMediaType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 660
    :goto_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v7, "pref_allshare"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 663
    .local v4, sharedPreference:Landroid/content/SharedPreferences;
    const-string v6, "allshare_shared_contents"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 666
    .local v3, sharedContents:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 667
    const-string v6, "NearbyEnabler"

    const-string v7, "getSharedContent"

    const-string v8, "Init SharedContent Value"

    invoke-static {v6, v7, v8}, Lcom/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 669
    .local v5, temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 670
    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 671
    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 672
    move-object v3, v5

    .line 675
    .end local v5           #temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v6, :cond_1

    .line 676
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 679
    :cond_1
    if-eqz v3, :cond_2

    .line 681
    const-string v6, "0"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 682
    const v6, 0xff00

    or-int/2addr v1, v6

    .line 688
    :goto_1
    const-string v6, "1"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 689
    const/high16 v6, 0xff

    or-int/2addr v1, v6

    .line 695
    :goto_2
    const-string v6, "2"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 696
    or-int/lit16 v1, v1, 0xff

    .line 703
    :cond_2
    :goto_3
    return v1

    .line 656
    .end local v3           #sharedContents:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #sharedPreference:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 657
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 684
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #sharedContents:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #sharedPreference:Landroid/content/SharedPreferences;
    :cond_3
    const v2, -0xff01

    .line 685
    .local v2, mask:I
    and-int/2addr v1, v2

    goto :goto_1

    .line 691
    .end local v2           #mask:I
    :cond_4
    const v2, -0xff0001

    .line 692
    .restart local v2       #mask:I
    and-int/2addr v1, v2

    goto :goto_2

    .line 698
    .end local v2           #mask:I
    :cond_5
    const/16 v2, -0x100

    .line 699
    .restart local v2       #mask:I
    and-int/2addr v1, v2

    goto :goto_3
.end method

.method private initChangePreferenceHandler()V
    .locals 5

    .prologue
    .line 487
    const-string v1, "NearbyEnabler"

    const-string v2, "initChangePreferenceHandler"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "nearby_settings"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleServerStart;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleServerStart;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_shared_contents"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_device_name"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleServerName;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleServerName;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_from"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleAllowUpload;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleAllowUpload;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_to"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_accept_device"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_reject_device"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbyEnabler"

    const-string v2, "initChangePreferenceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initEnabler()V
    .locals 5

    .prologue
    .line 218
    :try_start_0
    sget-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 219
    const-string v1, "NearbyEnabler"

    const-string v2, "initEnabler"

    const-string v3, "create new HandlerThread!!"

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Preference Change Worker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 222
    :cond_0
    sget-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    const-string v1, "NearbyEnabler"

    const-string v2, "initEnabler"

    const-string v3, "start HandlerThread!!"

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 226
    :cond_1
    sget-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 227
    const-string v1, "NearbyEnabler"

    const-string v2, "initEnabler"

    const-string v3, "create new Handler!!"

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initChangePreferenceHandler()V

    .line 237
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbyEnabler"

    const-string v2, "InitEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on Thread :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isServerStarted()Z
    .locals 2

    .prologue
    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 861
    :goto_0
    return v1

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 861
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 5

    .prologue
    .line 781
    const-string v1, "NearbyEnabler"

    const-string v2, ""

    const-string v3, "setBroadcastReceiver()"

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    if-nez v1, :cond_0

    .line 784
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.settings.allshare.SERVER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 787
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 790
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbyEnabler"

    const-string v2, "registerBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestRestartServerPopup()V
    .locals 5

    .prologue
    .line 890
    const-string v0, "NearbyEnabler"

    const-string v1, "requestRestartServerPopup"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0910d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0910df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0910c9

    new-instance v2, Lcom/android/settings/nearby/NearbyEnabler$9;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbyEnabler$9;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0910ca

    new-instance v2, Lcom/android/settings/nearby/NearbyEnabler$8;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbyEnabler$8;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/nearby/NearbyEnabler$7;

    invoke-direct {v1, p0}, Lcom/android/settings/nearby/NearbyEnabler$7;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    const-string v1, "NearbyEnabler"

    const-string v2, "requestRestartServerPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestWifiSettingPopup()V
    .locals 5

    .prologue
    .line 865
    const-string v1, "NearbyEnabler"

    const-string v2, "requestWifiSettingPopup"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0910d3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0910cb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0910c9

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$6;

    invoke-direct {v3, p0}, Lcom/android/settings/nearby/NearbyEnabler$6;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/nearby/NearbyEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbyEnabler$5;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_0
    return-void

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbyEnabler"

    const-string v2, "requestWifiSettingPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setCheckedState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 260
    const-string v0, "NearbyEnabler"

    const-string v1, "setCheckedState"

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 268
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 275
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method private setDefaultValues()V
    .locals 8

    .prologue
    .line 240
    const-string v5, "NearbyEnabler"

    const-string v6, "setDefaultValues"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDownloadPath()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, downloadPath:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDownloadOption()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, downloadOption:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, deviceName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getSharedContent()I

    move-result v4

    .line 248
    .local v4, flag:I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v4}, Lcom/android/settings/nearby/IMediaServer;->setSharedMediaType(I)V

    .line 249
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v0}, Lcom/android/settings/nearby/IMediaServer;->setMediaServerName(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v2}, Lcom/android/settings/nearby/IMediaServer;->setUploadPath(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v1}, Lcom/android/settings/nearby/IMediaServer;->setContentUploadAllowed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v3

    .line 253
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 254
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 255
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startDmsService()V
    .locals 6

    .prologue
    .line 514
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.nearby.MediaServer.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "ALL"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    if-nez v2, :cond_1

    .line 517
    const-string v2, "NearbyEnabler"

    const-string v3, "startDmsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 519
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 529
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 520
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v2, :cond_0

    .line 521
    const-string v2, "NearbyEnabler"

    const-string v3, "startDmsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 525
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 526
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NearbyEnabler"

    const-string v3, "startDmsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on bind service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 5

    .prologue
    .line 798
    const-string v1, "NearbyEnabler"

    const-string v2, "unregisterBroadcastReceiver"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    if-eqz v1, :cond_0

    .line 801
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 802
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbyEnabler"

    const-string v2, "unregisterBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAcceptEntry()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1113
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getAcceptEntry()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1119
    :goto_0
    return-object v2

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1117
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1118
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAcceptEntryValue()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1125
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getAcceptEntryValue()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1131
    :goto_0
    return-object v2

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1129
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1130
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 707
    const-string v0, "NearbyEnabler"

    const-string v1, "getDeviceName"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/nearby/NearbyEnabler;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRejectList()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1137
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getRejectList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1143
    :goto_0
    return-object v2

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1141
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1142
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRejectListValue()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1149
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getRejectListValue()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1155
    :goto_0
    return-object v2

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1153
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1154
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "button"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 378
    const-string v4, "NearbyEnabler"

    const-string v5, "onCheckedChanged"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 381
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->requestWifiSettingPopup()V

    .line 382
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v4, :cond_3

    .line 392
    const-string v4, "NearbyEnabler"

    const-string v5, "onCheckedChanged"

    const-string v6, "Start new DMS Serivce"

    invoke-static {v4, v5, v6}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->startDmsService()V

    .line 397
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-nez p2, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, e1:Landroid/os/RemoteException;
    const-string v3, "NearbyEnabler"

    const-string v4, "onCheckedChanged"

    const-string v5, "RemoteException: "

    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 418
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 399
    .end local v1           #e1:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v3

    if-eq v3, p2, :cond_4

    .line 400
    const-string v3, "NearbyEnabler"

    const-string v4, "onCheckedChanged"

    const-string v5, "Change State to:"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 403
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v4, "nearby_settings"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 405
    .local v2, handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    if-eqz v2, :cond_0

    .line 406
    sget-object v3, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings/nearby/NearbyEnabler$1;

    invoke-direct {v4, p0, v2, p2}, Lcom/android/settings/nearby/NearbyEnabler$1;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Landroid/preference/Preference$OnPreferenceChangeListener;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 419
    .end local v2           #handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    :catch_1
    move-exception v0

    .line 420
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "NearbyEnabler"

    const-string v4, "onCheckedChanged"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception on run: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 414
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_2
    const-string v3, "NearbyEnabler"

    const-string v4, "onCheckedChanged"

    const-string v5, "Change check state"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 428
    const-string v6, "NearbyEnabler"

    const-string v7, "onPreferenceChange"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, p2, Ljava/lang/Boolean;

    if-ne v6, v5, :cond_3

    .line 432
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 433
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->requestWifiSettingPopup()V

    .line 434
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 480
    :cond_0
    :goto_0
    return v4

    .line 437
    :cond_1
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 461
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 466
    .local v1, handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    if-eqz v1, :cond_0

    .line 467
    :try_start_0
    sget-object v6, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/nearby/NearbyEnabler$2;

    invoke-direct {v7, p0, v1, p1, p2}, Lcom/android/settings/nearby/NearbyEnabler$2;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Landroid/preference/Preference$OnPreferenceChangeListener;Landroid/preference/Preference;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 474
    goto :goto_0

    .line 441
    .end local v1           #handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    .end local v2           #key:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 442
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 443
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->requestRestartServerPopup()V

    goto :goto_1

    .line 447
    :cond_4
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 448
    const-string v6, "NearbyEnabler"

    const-string v7, "onPreferenceChange"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNearbyDownloadTo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v6}, Lcom/android/settings/nearby/DownloadListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v3, v6, v7

    check-cast v3, Ljava/lang/String;

    .line 451
    .local v3, summary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v6, v3}, Lcom/android/settings/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 454
    .end local v3           #summary:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 455
    const-string v6, "NearbyEnabler"

    const-string v7, "onPreferenceChange"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNearbyDownloadOption: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v3, v6, v7

    check-cast v3, Ljava/lang/String;

    .line 458
    .restart local v3       #summary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 476
    .end local v3           #summary:Ljava/lang/String;
    .restart local v1       #handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    .restart local v2       #key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "NearbyEnabler"

    const-string v6, "onPreferenceChange"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception run: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 335
    const-string v1, "NearbyEnabler"

    const-string v2, "pause"

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iput-boolean v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 355
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v1, :cond_3

    .line 356
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 359
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v1, :cond_4

    .line 360
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v1, v5}, Lcom/android/settings/nearby/DownloadListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 363
    :cond_4
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v1, :cond_5

    .line 364
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 367
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->unregisterBroadcastReceiver()V

    .line 369
    const-string v1, "ALL"

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    if-eqz v1, :cond_6

    .line 370
    const-string v1, "NearbyEnabler"

    const-string v2, "pause"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 372
    iput-boolean v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 374
    :cond_6
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NearbyEnabler"

    const-string v2, "pause"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public reannounceServer()V
    .locals 2

    .prologue
    .line 503
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->reannounceServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 293
    const-string v1, "NearbyEnabler"

    const-string v2, "resume"

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/settings/nearby/IMediaServer;->resume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->startDmsService()V

    .line 309
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 317
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v1, :cond_3

    .line 318
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 321
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v1, :cond_4

    .line 322
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/nearby/DownloadListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 325
    :cond_4
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v1, :cond_5

    .line 326
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 329
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->registerBroadcastReceiver()V

    .line 331
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    .line 332
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NearbyEnabler"

    const-string v2, "resume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 4
    .parameter "nearbySwitch"

    .prologue
    .line 281
    const-string v0, "NearbyEnabler"

    const-string v1, "setSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/Switch;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    if-eqz p1, :cond_0

    .line 284
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    .line 285
    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 287
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    .line 290
    :cond_0
    return-void
.end method
