.class Lcom/android/settings/NotificationPanelMenu$7;
.super Landroid/database/ContentObserver;
.source "NotificationPanelMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 877
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$7;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$7;->this$0:Lcom/android/settings/NotificationPanelMenu;

    #calls: Lcom/android/settings/NotificationPanelMenu;->loadAppslist()V
    invoke-static {v0}, Lcom/android/settings/NotificationPanelMenu;->access$1400(Lcom/android/settings/NotificationPanelMenu;)V

    .line 881
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$7;->this$0:Lcom/android/settings/NotificationPanelMenu;

    #calls: Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V
    invoke-static {v0}, Lcom/android/settings/NotificationPanelMenu;->access$800(Lcom/android/settings/NotificationPanelMenu;)V

    .line 882
    return-void
.end method
