.class Lcom/android/settings/wfd/WifiDisplaySettings$20;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$mEditDeviceName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->val$mEditDeviceName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->renameDongle(Ljava/lang/String;)V

    .line 1315
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1319
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1320
    return-void
.end method