.class Lcom/android/settings/accessibility/AccessibilitySettings$33;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2942
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$33;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2944
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$33;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$4600(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2945
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$33;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2946
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$33;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 2947
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$33;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.action.talkback_off"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 2949
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$33;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$4700(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2951
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2952
    .local v0, acIntent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.accesscontrol"

    const-string v4, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2954
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$33;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 2955
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2956
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.assistantmenu"

    const-string v4, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2957
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$33;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2959
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$33;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3200(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2960
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$33;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3800(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2961
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$33;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$100(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    .line 2962
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$33;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    const/4 v3, 0x7

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V
    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$4800(Lcom/android/settings/accessibility/AccessibilitySettings;I)V

    .line 2963
    return-void
.end method
