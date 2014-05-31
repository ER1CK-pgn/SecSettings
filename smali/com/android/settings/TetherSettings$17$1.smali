.class Lcom/android/settings/TetherSettings$17$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings$17;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/TetherSettings$17;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings$17;)V
    .locals 0
    .parameter

    .prologue
    .line 1545
    iput-object p1, p0, Lcom/android/settings/TetherSettings$17$1;->this$1:Lcom/android/settings/TetherSettings$17;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1547
    const-string v0, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/android/settings/TetherSettings$17$1;->this$1:Lcom/android/settings/TetherSettings$17;

    iget-object v0, v0, Lcom/android/settings/TetherSettings$17;->this$0:Lcom/android/settings/TetherSettings;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 1553
    :goto_0
    return-void

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings$17$1;->this$1:Lcom/android/settings/TetherSettings$17;

    iget-object v0, v0, Lcom/android/settings/TetherSettings$17;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V
    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;I)V

    goto :goto_0
.end method
