.class Lcom/android/settings/smartscreen/SmartScreenSettings$8;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$8;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 691
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$8;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #getter for: Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$700(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$8;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #getter for: Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$600(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 692
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$8;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #getter for: Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$800(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$8;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #getter for: Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$600(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "intelligent_rotation_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 693
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$8;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #getter for: Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$900(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$8;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #getter for: Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$600(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "smart_pause"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 694
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$8;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #getter for: Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1000(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$8;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #getter for: Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$600(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_scroll"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 695
    return-void

    :cond_0
    move v0, v2

    .line 691
    goto :goto_0

    :cond_1
    move v0, v2

    .line 692
    goto :goto_1

    :cond_2
    move v0, v2

    .line 693
    goto :goto_2

    :cond_3
    move v1, v2

    .line 694
    goto :goto_3
.end method
