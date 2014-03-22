.class Lcom/android/settings/SettingsEmergencyActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsEmergencyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsEmergencyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsEmergencyActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsEmergencyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/settings/SettingsEmergencyActivity$1;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 471
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    invoke-static {p2}, Lcom/android/settings/Utils;->isBatteryPresent(Landroid/content/Intent;)Z

    move-result v1

    .line 474
    .local v1, batteryPresent:Z
    iget-object v2, p0, Lcom/android/settings/SettingsEmergencyActivity$1;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #getter for: Lcom/android/settings/SettingsEmergencyActivity;->mBatteryPresent:Z
    invoke-static {v2}, Lcom/android/settings/SettingsEmergencyActivity;->access$000(Lcom/android/settings/SettingsEmergencyActivity;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 475
    iget-object v2, p0, Lcom/android/settings/SettingsEmergencyActivity$1;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #setter for: Lcom/android/settings/SettingsEmergencyActivity;->mBatteryPresent:Z
    invoke-static {v2, v1}, Lcom/android/settings/SettingsEmergencyActivity;->access$002(Lcom/android/settings/SettingsEmergencyActivity;Z)Z

    .line 476
    iget-object v2, p0, Lcom/android/settings/SettingsEmergencyActivity$1;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 479
    .end local v1           #batteryPresent:Z
    :cond_0
    return-void
.end method
