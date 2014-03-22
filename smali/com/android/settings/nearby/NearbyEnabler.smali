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

.field private mPreferenceChangeThread:Landroid/os/HandlerThread;

.field private mPreferenceChangeWorker:Landroid/os/Handler;

.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 142
    const-string v0, "TYPE_SETTINGS"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    .line 210
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 212
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 521
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    .line 523
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    .line 767
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    .line 798
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 142
    const-string v0, "TYPE_SETTINGS"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    .line 210
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 212
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 521
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    .line 523
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    .line 767
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    .line 798
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 142
    const-string v0, "TYPE_SETTINGS"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    .line 210
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 212
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 521
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    .line 523
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    .line 767
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    .line 798
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
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 142
    const-string v0, "TYPE_SETTINGS"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    .line 210
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 212
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 521
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    .line 523
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    .line 767
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    .line 798
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

.method static synthetic access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/nearby/NearbyEnabler;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbyEnabler;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/nearby/NearbyEnabler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/nearby/NearbyEnabler;Ljava/util/HashSet;)Ljava/lang/String;
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

.method static synthetic access$800(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setDefaultValues()V

    return-void
.end method

.method private checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "deviceName"

    .prologue
    .line 703
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    invoke-static {v5, v6, p1}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    move-object v4, p1

    .line 708
    .local v4, modifiedName:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 709
    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, changedName:Ljava/lang/String;
    move-object p1, v0

    .line 711
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

    .line 715
    .end local v0           #changedName:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 720
    .local v3, maxLength:I
    const/16 v3, 0x37

    .line 723
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v3, :cond_1

    .line 724
    const/4 v5, 0x0

    const/16 v6, 0x36

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 725
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

    .line 730
    :cond_1
    :try_start_0
    const-string v1, "[Mobile]"

    .line 732
    .local v1, deviceType:Ljava/lang/String;
    const-string v5, "NONE"

    const-string v6, "NONE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 734
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    const-string v7, "Featured device: NONE"

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v1, "[NONE]"

    .line 750
    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 764
    .end local v1           #deviceType:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 745
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

    .line 746
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    const-string v7, "TABLET Device"

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v1, "[Tablet]"

    goto :goto_0

    .line 753
    :cond_4
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 754
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

    .line 756
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f091098

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 759
    .end local v1           #deviceType:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 760
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

    .line 761
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private getDownloadOption()Ljava/lang/String;
    .locals 5

    .prologue
    .line 628
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v3, "pref_allshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 631
    .local v0, sharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "allshare_download_from"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 634
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 637
    :cond_0
    return-object v1
.end method

.method private getDownloadPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDownloadTo()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, flag:Ljava/lang/String;
    const/4 v1, 0x0

    .line 585
    .local v1, path:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 586
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

    .line 587
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 612
    :cond_0
    :goto_0
    return-object v1

    .line 588
    :cond_1
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 589
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 591
    .local v2, storageManager:Landroid/os/storage/StorageManager;
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v1

    .line 593
    const-string v3, "mounted"

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 594
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

    .line 595
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 597
    :cond_2
    const-string v3, "NearbyEnabler"

    const-string v4, "getDownloadPath"

    const-string v5, "No External Volume: Change to Internal"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
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

    .line 600
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 601
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v3, :cond_0

    .line 602
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    const-string v4, "0"

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/nearby/NearbyEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_0

    .line 606
    .end local v2           #storageManager:Landroid/os/storage/StorageManager;
    :cond_3
    const-string v3, "NearbyEnabler"

    const-string v4, "getDownloadPath"

    const-string v5, "HandleSetUploadPath has incorrect value - Init to Default"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
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

    .line 609
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
    .line 616
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v3, "pref_allshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 618
    .local v0, sharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "allshare_download_to"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v2, :cond_0

    .line 621
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 624
    :cond_0
    return-object v1
.end method

.method private getExernalSdPath()Ljava/lang/String;
    .locals 11

    .prologue
    .line 561
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 563
    .local v4, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 565
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

    .line 566
    .local v6, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    const-string v8, "sd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 567
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

    .line 568
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 576
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #storageManager:Landroid/os/storage/StorageManager;
    .end local v5           #storageVolumes:[Landroid/os/storage/StorageVolume;
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v7

    .line 565
    .restart local v0       #arr$:[Landroid/os/storage/StorageVolume;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #storageManager:Landroid/os/storage/StorageManager;
    .restart local v5       #storageVolumes:[Landroid/os/storage/StorageVolume;
    .restart local v6       #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #storageManager:Landroid/os/storage/StorageManager;
    .end local v5           #storageVolumes:[Landroid/os/storage/StorageVolume;
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v1

    .line 573
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

    .line 574
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 576
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
    .line 1086
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 1087
    :cond_0
    const/4 v0, 0x0

    .line 1097
    :goto_0
    return-object v0

    .line 1089
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1091
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1093
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1094
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1095
    const-string v0, "*--*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1097
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSharedContent()I
    .locals 9

    .prologue
    .line 641
    const/4 v1, 0x0

    .line 644
    .local v1, flag:I
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v6}, Lcom/android/settings/nearby/IMediaServer;->getSharedMediaType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 649
    :goto_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v7, "pref_allshare"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 652
    .local v4, sharedPreference:Landroid/content/SharedPreferences;
    const-string v6, "allshare_shared_contents"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 655
    .local v3, sharedContents:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 656
    const-string v6, "NearbyEnabler"

    const-string v7, "getSharedContent"

    const-string v8, "Init SharedContent Value"

    invoke-static {v6, v7, v8}, Lcom/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 658
    .local v5, temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 659
    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 660
    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 661
    move-object v3, v5

    .line 664
    .end local v5           #temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v6, :cond_1

    .line 665
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 668
    :cond_1
    if-eqz v3, :cond_2

    .line 670
    const-string v6, "0"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 671
    const v6, 0xff00

    or-int/2addr v1, v6

    .line 677
    :goto_1
    const-string v6, "1"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 678
    const/high16 v6, 0xff

    or-int/2addr v1, v6

    .line 684
    :goto_2
    const-string v6, "2"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 685
    or-int/lit16 v1, v1, 0xff

    .line 692
    :cond_2
    :goto_3
    return v1

    .line 645
    .end local v3           #sharedContents:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #sharedPreference:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 646
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 673
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #sharedContents:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #sharedPreference:Landroid/content/SharedPreferences;
    :cond_3
    const v2, -0xff01

    .line 674
    .local v2, mask:I
    and-int/2addr v1, v2

    goto :goto_1

    .line 680
    .end local v2           #mask:I
    :cond_4
    const v2, -0xff0001

    .line 681
    .restart local v2       #mask:I
    and-int/2addr v1, v2

    goto :goto_2

    .line 687
    .end local v2           #mask:I
    :cond_5
    const/16 v2, -0x100

    .line 688
    .restart local v2       #mask:I
    and-int/2addr v1, v2

    goto :goto_3
.end method

.method private initChangePreferenceHandler()V
    .locals 5

    .prologue
    .line 476
    const-string v1, "NearbyEnabler"

    const-string v2, "initChangePreferenceHandler"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "nearby_settings"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleServerStart;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleServerStart;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_shared_contents"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_device_name"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleServerName;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleServerName;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_from"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleAllowUpload;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleAllowUpload;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_to"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_accept_device"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_reject_device"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
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

    .line 487
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private initEnabler()V
    .locals 5

    .prologue
    .line 218
    :try_start_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Preference Change Worker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 219
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 220
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initChangePreferenceHandler()V

    .line 228
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
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

    .line 223
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isServerStarted()Z
    .locals 2

    .prologue
    .line 844
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 850
    :goto_0
    return v1

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 850
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 5

    .prologue
    .line 770
    const-string v1, "NearbyEnabler"

    const-string v2, ""

    const-string v3, "setBroadcastReceiver()"

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    if-nez v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.settings.allshare.SERVER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 776
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 779
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 781
    :catch_0
    move-exception v0

    .line 782
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
    .line 879
    const-string v0, "NearbyEnabler"

    const-string v1, "requestRestartServerPopup"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f091098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0910a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09108e

    new-instance v2, Lcom/android/settings/nearby/NearbyEnabler$9;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbyEnabler$9;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09108f

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

    .line 916
    :goto_0
    return-void

    .line 911
    :catch_0
    move-exception v0

    .line 912
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

    .line 913
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private requestWifiSettingPopup()V
    .locals 5

    .prologue
    .line 854
    const-string v1, "NearbyEnabler"

    const-string v2, "requestWifiSettingPopup"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f091098

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f091090

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09108e

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

    .line 876
    :goto_0
    return-void

    .line 872
    :catch_0
    move-exception v0

    .line 873
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

    .line 874
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setCheckedState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 249
    const-string v0, "NearbyEnabler"

    const-string v1, "setCheckedState"

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 257
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 264
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method private setDefaultValues()V
    .locals 8

    .prologue
    .line 231
    const-string v5, "NearbyEnabler"

    const-string v6, "setDefaultValues"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDownloadPath()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, downloadPath:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDownloadOption()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, downloadOption:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, deviceName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getSharedContent()I

    move-result v4

    .line 239
    .local v4, flag:I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v4}, Lcom/android/settings/nearby/IMediaServer;->setSharedMediaType(I)V

    .line 240
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v0}, Lcom/android/settings/nearby/IMediaServer;->setMediaServerName(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v2}, Lcom/android/settings/nearby/IMediaServer;->setUploadPath(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v1}, Lcom/android/settings/nearby/IMediaServer;->setContentUploadAllowed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v3

    .line 244
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private startDmsService()V
    .locals 6

    .prologue
    .line 503
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.nearby.MediaServer.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "ALL"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    if-nez v2, :cond_1

    .line 506
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

    .line 507
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 508
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 518
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 509
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v2, :cond_0

    .line 510
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

    .line 511
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 515
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

    .line 516
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 5

    .prologue
    .line 787
    const-string v1, "NearbyEnabler"

    const-string v2, "unregisterBroadcastReceiver"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    if-eqz v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 791
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 793
    :catch_0
    move-exception v0

    .line 794
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

    .line 1102
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getAcceptEntry()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1108
    :goto_0
    return-object v2

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1106
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1107
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getAcceptEntryValue()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1114
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getAcceptEntryValue()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1120
    :goto_0
    return-object v2

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1118
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1119
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 696
    const-string v0, "NearbyEnabler"

    const-string v1, "getDeviceName"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
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

    .line 1126
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getRejectList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1132
    :goto_0
    return-object v2

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1130
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1131
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getRejectListValue()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1138
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getRejectListValue()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1144
    :goto_0
    return-object v2

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1142
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1143
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "button"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 367
    const-string v4, "NearbyEnabler"

    const-string v5, "onCheckedChanged"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

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

    .line 369
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->requestWifiSettingPopup()V

    .line 371
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v4, :cond_3

    .line 381
    const-string v4, "NearbyEnabler"

    const-string v5, "onCheckedChanged"

    const-string v6, "Start new DMS Serivce"

    invoke-static {v4, v5, v6}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->startDmsService()V

    .line 386
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-nez p2, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, e1:Landroid/os/RemoteException;
    const-string v3, "NearbyEnabler"

    const-string v4, "onCheckedChanged"

    const-string v5, "RemoteException: "

    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 407
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 388
    .end local v1           #e1:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v3

    if-eq v3, p2, :cond_4

    .line 389
    const-string v3, "NearbyEnabler"

    const-string v4, "onCheckedChanged"

    const-string v5, "Change State to:"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 392
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v4, "nearby_settings"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 394
    .local v2, handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    if-eqz v2, :cond_0

    .line 395
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings/nearby/NearbyEnabler$1;

    invoke-direct {v4, p0, v2, p2}, Lcom/android/settings/nearby/NearbyEnabler$1;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Landroid/preference/Preference$OnPreferenceChangeListener;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 408
    .end local v2           #handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    :catch_1
    move-exception v0

    .line 409
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

    .line 410
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 403
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

    .line 417
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

    .line 420
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, p2, Ljava/lang/Boolean;

    if-ne v6, v5, :cond_3

    .line 421
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 422
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->requestWifiSettingPopup()V

    .line 423
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 469
    :cond_0
    :goto_0
    return v4

    .line 426
    :cond_1
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 450
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 455
    .local v1, handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    if-eqz v1, :cond_0

    .line 456
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/nearby/NearbyEnabler$2;

    invoke-direct {v7, p0, v1, p1, p2}, Lcom/android/settings/nearby/NearbyEnabler$2;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Landroid/preference/Preference$OnPreferenceChangeListener;Landroid/preference/Preference;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 463
    goto :goto_0

    .line 430
    .end local v1           #handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    .end local v2           #key:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 431
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 432
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->requestRestartServerPopup()V

    goto :goto_1

    .line 436
    :cond_4
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 437
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

    .line 438
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v3, v6, v7

    check-cast v3, Ljava/lang/String;

    .line 440
    .local v3, summary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 443
    .end local v3           #summary:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 444
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

    .line 445
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v3, v6, v7

    check-cast v3, Ljava/lang/String;

    .line 447
    .restart local v3       #summary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 465
    .end local v3           #summary:Ljava/lang/String;
    .restart local v1       #handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    .restart local v2       #key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 466
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

    .line 467
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 324
    const-string v1, "NearbyEnabler"

    const-string v2, "pause"

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iput-boolean v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_2

    .line 341
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v1, :cond_3

    .line 345
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v1, :cond_4

    .line 349
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 352
    :cond_4
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v1, :cond_5

    .line 353
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 356
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->unregisterBroadcastReceiver()V

    .line 358
    const-string v1, "ALL"

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    if-eqz v1, :cond_6

    .line 359
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

    .line 360
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 361
    iput-boolean v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 363
    :cond_6
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
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

    .line 333
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public reannounceServer()V
    .locals 2

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->reannounceServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 282
    const-string v1, "NearbyEnabler"

    const-string v2, "resume"

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->startDmsService()V

    .line 298
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 310
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v1, :cond_4

    .line 311
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 314
    :cond_4
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v1, :cond_5

    .line 315
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 318
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->registerBroadcastReceiver()V

    .line 320
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    .line 321
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
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

    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 4
    .parameter "nearbySwitch"

    .prologue
    .line 270
    const-string v0, "NearbyEnabler"

    const-string v1, "setSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

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

    .line 272
    if-eqz p1, :cond_0

    .line 273
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    .line 274
    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 276
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    .line 279
    :cond_0
    return-void
.end method
