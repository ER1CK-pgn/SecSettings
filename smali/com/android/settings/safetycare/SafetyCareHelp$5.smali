.class Lcom/android/settings/safetycare/SafetyCareHelp$5;
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
    .line 397
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$5;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 399
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp$5;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    invoke-virtual {v0}, Lcom/android/settings/safetycare/SafetyCareHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$5;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    #getter for: Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$100(Lcom/android/settings/safetycare/SafetyCareHelp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    const-string v0, "safetycare_earthquake"

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$5;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    #getter for: Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$100(Lcom/android/settings/safetycare/SafetyCareHelp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp$5;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    const-string v1, "com.sec.settings.safetycare.EARTHQUAKE_CHANGED"

    #calls: Lcom/android/settings/safetycare/SafetyCareHelp;->sendIntent(Ljava/lang/String;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$200(Lcom/android/settings/safetycare/SafetyCareHelp;Ljava/lang/String;ZZ)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const-string v0, "safetycare_fire"

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$5;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    #getter for: Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$100(Lcom/android/settings/safetycare/SafetyCareHelp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp$5;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    const-string v1, "com.sec.settings.safetycare.FIRE_CHANGED"

    #calls: Lcom/android/settings/safetycare/SafetyCareHelp;->sendIntent(Ljava/lang/String;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$200(Lcom/android/settings/safetycare/SafetyCareHelp;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 404
    :cond_2
    const-string v0, "safetycare_accident"

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$5;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    #getter for: Lcom/android/settings/safetycare/SafetyCareHelp;->mHelpDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$100(Lcom/android/settings/safetycare/SafetyCareHelp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp$5;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    const-string v1, "com.sec.settings.safetycare.ACCIDENT_CHANGED"

    #calls: Lcom/android/settings/safetycare/SafetyCareHelp;->sendIntent(Ljava/lang/String;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$200(Lcom/android/settings/safetycare/SafetyCareHelp;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
