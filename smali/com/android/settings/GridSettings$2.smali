.class Lcom/android/settings/GridSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "GridSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings/GridSettings$2;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 310
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.settings.Drawer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/android/settings/GridSettings$2;->this$0:Lcom/android/settings/GridSettings;

    iget-object v2, v2, Lcom/android/settings/GridSettings;->drawer:Lcom/android/settings/DrawerManager;

    invoke-virtual {v2}, Lcom/android/settings/DrawerManager;->openDrawer()V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    const-string v2, "com.android.settings.Favorite"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/settings/GridSettings$2;->this$0:Lcom/android/settings/GridSettings;

    #calls: Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/settings/GridSettings;->access$100(Lcom/android/settings/GridSettings;)Landroid/content/Intent;

    move-result-object v1

    .line 316
    .local v1, addIntent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
