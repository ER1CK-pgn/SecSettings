.class Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

.field final synthetic val$setroute_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$setroute_id:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    iget-object v1, v1, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;->val$setroute_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/nfc/NfcAdapter;->setDefaultRoutingDestination(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 243
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-virtual {v1}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->finish()V

    .line 244
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NfcRoutingSettings"

    const-string v2, "exception occured - setDefaultRoutingDestination"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
