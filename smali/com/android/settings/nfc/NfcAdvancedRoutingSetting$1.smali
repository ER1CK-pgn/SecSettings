.class Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->createRoutingListDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 188
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->finish()V

    .line 190
    return-void
.end method
