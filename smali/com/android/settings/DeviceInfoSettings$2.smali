.class Lcom/android/settings/DeviceInfoSettings$2;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$2;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1182
    invoke-static {p2}, Lcom/sec/android/service/sm/service/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/service/sm/service/ISecurityManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DeviceInfoSettings;->access$102(Lcom/sec/android/service/sm/service/ISecurityManager;)Lcom/sec/android/service/sm/service/ISecurityManager;

    .line 1183
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 1186
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/DeviceInfoSettings;->access$102(Lcom/sec/android/service/sm/service/ISecurityManager;)Lcom/sec/android/service/sm/service/ISecurityManager;

    .line 1187
    return-void
.end method
