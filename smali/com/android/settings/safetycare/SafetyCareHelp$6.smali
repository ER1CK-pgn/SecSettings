.class Lcom/android/settings/safetycare/SafetyCareHelp$6;
.super Ljava/lang/Object;
.source "SafetyCareHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareHelp;->displayAlertDialog(IILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$6;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp$6;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareHelp$6;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    #getter for: Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$100(Lcom/android/settings/safetycare/SafetyCareHelp;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 415
    .local v0, helpEngineState:Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp$6;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    #getter for: Lcom/android/settings/safetycare/SafetyCareHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$000(Lcom/android/settings/safetycare/SafetyCareHelp;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp$6;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    #getter for: Lcom/android/settings/safetycare/SafetyCareHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$000(Lcom/android/settings/safetycare/SafetyCareHelp;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 418
    :cond_0
    return-void

    .end local v0           #helpEngineState:Z
    :cond_1
    move v0, v1

    .line 414
    goto :goto_0
.end method
