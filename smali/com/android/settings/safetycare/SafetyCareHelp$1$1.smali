.class Lcom/android/settings/safetycare/SafetyCareHelp$1$1;
.super Ljava/lang/Object;
.source "SafetyCareHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareHelp$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/safetycare/SafetyCareHelp$1;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareHelp$1;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareHelp$1$1;->this$1:Lcom/android/settings/safetycare/SafetyCareHelp$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 127
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.contacts.action.INTERACTION_EMERGENCY_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareHelp$1$1;->this$1:Lcom/android/settings/safetycare/SafetyCareHelp$1;

    iget-object v2, v2, Lcom/android/settings/safetycare/SafetyCareHelp$1;->this$0:Lcom/android/settings/safetycare/SafetyCareHelp;

    invoke-virtual {v2, v1}, Lcom/android/settings/safetycare/SafetyCareHelp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
