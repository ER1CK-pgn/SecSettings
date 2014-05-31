.class Lcom/android/settings/safetycare/SafetyCareHelp$1;
.super Landroid/os/Handler;
.source "SafetyCareHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/safetycare/SafetyCareHelp;
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
    .line 110
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$1;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$1;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    invoke-virtual {v1}, Lcom/android/settings/safetycare/SafetyCareHelp;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 117
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$1;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    invoke-virtual {v1}, Lcom/android/settings/safetycare/SafetyCareHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0917f6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0917f8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/safetycare/SafetyCareHelp$1$1;

    invoke-direct {v3, p0}, Lcom/android/settings/safetycare/SafetyCareHelp$1$1;-><init>(Lcom/android/settings/safetycare/SafetyCareHelp$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
