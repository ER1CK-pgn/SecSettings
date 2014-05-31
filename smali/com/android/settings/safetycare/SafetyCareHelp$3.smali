.class Lcom/android/settings/safetycare/SafetyCareHelp$3;
.super Ljava/lang/Object;
.source "SafetyCareHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 372
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$3;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 374
    const-string v1, "emergency_mode"

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp$3;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    #getter for: Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$100(Lcom/android/settings/safetycare/SafetyCareHelp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 380
    const-string v1, "flag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$3;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    invoke-virtual {v1}, Lcom/android/settings/safetycare/SafetyCareHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$3;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    invoke-virtual {v1}, Lcom/android/settings/safetycare/SafetyCareHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp$3;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    #getter for: Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$100(Lcom/android/settings/safetycare/SafetyCareHelp;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
