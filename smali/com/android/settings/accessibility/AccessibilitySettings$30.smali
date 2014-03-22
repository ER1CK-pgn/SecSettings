.class Lcom/android/settings/accessibility/AccessibilitySettings$30;
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
    .line 2898
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$30;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2901
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$30;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$4000(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2902
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$30;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$4100(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assistant_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2903
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$30;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3200(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2905
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2906
    .local v0, assistantMenu:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.assistantmenu"

    const-string v3, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2908
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$30;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 2910
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$30;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3800(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2911
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$30;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    const/4 v2, 0x6

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$4200(Lcom/android/settings/accessibility/AccessibilitySettings;I)V

    .line 2912
    return-void
.end method
