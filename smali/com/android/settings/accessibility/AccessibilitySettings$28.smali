.class Lcom/android/settings/accessibility/AccessibilitySettings$28;
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
    .line 2868
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$28;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 2871
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$28;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3400(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2872
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$28;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3500(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2873
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.accesscontrol.TOGGLE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2874
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$28;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2876
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$28;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3600(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2877
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$28;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3200(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2878
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$28;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    const/4 v2, 0x5

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3700(Lcom/android/settings/accessibility/AccessibilitySettings;I)V

    .line 2879
    return-void
.end method
