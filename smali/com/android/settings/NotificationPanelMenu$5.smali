.class Lcom/android/settings/NotificationPanelMenu$5;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$5;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    const-string v0, "NotificationPanelMenu"

    const-string v1, "onActivityCreated() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lcom/android/settings/NotificationPanelMenu;->access$1000()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$5;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/NotificationPanelMenu;->access$1002(Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 301
    :cond_0
    invoke-static {}, Lcom/android/settings/NotificationPanelMenu;->access$1000()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/NotificationPanelMenu$5$1;

    invoke-direct {v1, p0}, Lcom/android/settings/NotificationPanelMenu$5$1;-><init>(Lcom/android/settings/NotificationPanelMenu$5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 311
    return-void
.end method
