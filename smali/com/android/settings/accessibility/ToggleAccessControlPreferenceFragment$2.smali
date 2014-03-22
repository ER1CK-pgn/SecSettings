.class Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;
.super Ljava/lang/Object;
.source "ToggleAccessControlPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/accessibility/ToggleSwitch;Z)Z
    .locals 4
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    if-eqz p2, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    const/4 v1, 0x2

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$200(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V

    .line 107
    :goto_0
    return v2

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    const/4 v1, 0x3

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$300(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$400(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$500(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v3}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$600(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0
.end method
