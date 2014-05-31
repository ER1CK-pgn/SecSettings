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


# direct methods
.method constructor <init>(Lcom/android/settings/LaunchApplication;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings/LaunchApplication$5;->this$0:Lcom/android/settings/LaunchApplication;

    iput-object p2, p0, Lcom/android/settings/LaunchApplication$5;->val$newValue:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 344
    const-string v0, "TAG"

    const-string v1, "setPositiveButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/settings/LaunchApplication$5;->val$newValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LaunchApplication$5;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-virtual {v1}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/LaunchApplication$5;->this$0:Lcom/android/settings/LaunchApplication;

    #calls: Lcom/android/settings/LaunchApplication;->updateSmsApplicationSetting()V
    invoke-static {v0}, Lcom/android/settings/LaunchApplication;->access$100(Lcom/android/settings/LaunchApplication;)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/LaunchApplication$5;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-virtual {v0}, Lcom/android/settings/LaunchApplication;->buildDefaultApplicationList()V

    .line 348
    return-void
.end method
