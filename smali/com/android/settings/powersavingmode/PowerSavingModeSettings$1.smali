.class Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;
.super Landroid/database/ContentObserver;
.source "PowerSavingModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "PowerSavingModeSettings"

    const-string v2, "onChange() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->access$100(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Lcom/android/settings/SwitchPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    # invokes: Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->access$000(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "powersaving_switch"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/SwitchPreferenceScreen;->setChecked(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mPowerSaving:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->access$300(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    # invokes: Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->access$200(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "powersaving_switch"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f09099c

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f09099d

    goto :goto_1
.end method
