.class Lcom/android/settings/wfd/WifiDisplaySettings$22;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic val$mEditDeviceName:Landroid/widget/EditText;

.field final synthetic val$mOkButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/Button;Landroid/widget/EditText;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$mOkButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$mEditDeviceName:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1354
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const/16 v1, 0x17

    .line 1356
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lt v0, v1, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mTempSsid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2202(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1358
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v2, 0x17

    const/4 v3, 0x0

    .line 1360
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1361
    .local v0, temp:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1362
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_4

    .line 1364
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2200(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2200(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v2, :cond_3

    .line 1365
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$mEditDeviceName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mTempSsid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2200(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2200(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2200(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1371
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1372
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$mEditDeviceName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mTempSsid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2200(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1375
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2100(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1376
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090590

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09050a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0907d2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2102(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1382
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2100(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 1367
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$mEditDeviceName:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1384
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1385
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$mOkButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1387
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$22;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method
