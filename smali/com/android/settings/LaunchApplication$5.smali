.class Lcom/android/settings/LaunchApplication$5;
.super Ljava/lang/Object;
.source "LaunchApplication.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LaunchApplication;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LaunchApplication;

.field final synthetic val$newValue:Ljava/lang/Object;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/LaunchApplication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings/LaunchApplication$5;->this$0:Lcom/android/settings/LaunchApplication;

    iput-object p2, p0, Lcom/android/settings/LaunchApplication$5;->val$newValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/LaunchApplication$5;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 293
    const-string v0, "TAG"

    const-string v1, "setPositiveButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/settings/LaunchApplication$5;->val$newValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LaunchApplication$5;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/LaunchApplication$5;->this$0:Lcom/android/settings/LaunchApplication;

    #calls: Lcom/android/settings/LaunchApplication;->updateSmsApplicationSetting()V
    invoke-static {v0}, Lcom/android/settings/LaunchApplication;->access$100(Lcom/android/settings/LaunchApplication;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/LaunchApplication$5;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-virtual {v0}, Lcom/android/settings/LaunchApplication;->buildDefaultApplicationList()V

    .line 297
    const-string v0, "com.android.mms"

    iget-object v1, p0, Lcom/android/settings/LaunchApplication$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/settings/LaunchApplication$5;->this$0:Lcom/android/settings/LaunchApplication;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/LaunchApplication;->defaultSms:Z
    invoke-static {v0, v1}, Lcom/android/settings/LaunchApplication;->access$202(Lcom/android/settings/LaunchApplication;Z)Z

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LaunchApplication$5;->this$0:Lcom/android/settings/LaunchApplication;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/LaunchApplication;->defaultSms:Z
    invoke-static {v0, v1}, Lcom/android/settings/LaunchApplication;->access$202(Lcom/android/settings/LaunchApplication;Z)Z

    goto :goto_0
.end method
