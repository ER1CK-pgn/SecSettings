.class Lcom/android/settings/nfc/TagsConnectingDevices$1;
.super Ljava/lang/Object;
.source "TagsConnectingDevices.java"

# interfaces
.implements Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/TagsConnectingDevices;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/TagsConnectingDevices;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/TagsConnectingDevices$1;->this$0:Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    const-string v0, "TagsConnectingDevices"

    const-string v1, "RW/P2P ON, createHelpStep2Dialog()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices$1;->this$0:Lcom/android/settings/nfc/TagsConnectingDevices;

    # invokes: Lcom/android/settings/nfc/TagsConnectingDevices;->createHelpStep2Dialog()V
    invoke-static {v0}, Lcom/android/settings/nfc/TagsConnectingDevices;->access$000(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices$1;->this$0:Lcom/android/settings/nfc/TagsConnectingDevices;

    # invokes: Lcom/android/settings/nfc/TagsConnectingDevices;->createHelpDialog()V
    invoke-static {v0}, Lcom/android/settings/nfc/TagsConnectingDevices;->access$100(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    goto :goto_0
.end method
