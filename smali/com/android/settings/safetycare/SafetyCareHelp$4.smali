.class Lcom/android/settings/safetycare/SafetyCareHelp$4;
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
    .line 402
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$4;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareHelp$4;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    #getter for: Lcom/android/settings/safetycare/SafetyCareHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareHelp;->access$000(Lcom/android/settings/safetycare/SafetyCareHelp;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 405
    return-void
.end method
