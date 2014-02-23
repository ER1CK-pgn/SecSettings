.class Lcom/android/settings/wfd/WfdPickerActivity$17;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;

.field final synthetic val$mOkButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1992
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iput-object p2, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->val$mOkButton:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1994
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

    .line 1996
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

    .line 1997
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4002(Lcom/android/settings/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1998
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

    .line 2000
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2001
    .local v0, temp:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2002
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2029
    :cond_0
    :goto_0
    return-void

    .line 2003
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_4

    .line 2004
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4000(Lcom/android/settings/wfd/WfdPickerActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4000(Lcom/android/settings/wfd/WfdPickerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v2, :cond_3

    .line 2005
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4000(Lcom/android/settings/wfd/WfdPickerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2010
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4000(Lcom/android/settings/wfd/WfdPickerActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4000(Lcom/android/settings/wfd/WfdPickerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 2011
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2012
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4000(Lcom/android/settings/wfd/WfdPickerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2015
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2016
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090533

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0904a0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09074c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3702(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2022
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v2}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 2007
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2024
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 2025
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->val$mOkButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2027
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$17;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method
