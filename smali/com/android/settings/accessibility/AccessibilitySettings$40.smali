.class Lcom/android/settings/accessibility/AccessibilitySettings$40;
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
    .line 3048
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$40;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3053
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$40;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$800(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 3054
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$40;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$5500(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3056
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3057
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$40;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 3064
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3071
    :goto_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$40;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$5900(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$40;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$6000(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 3073
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$40;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$6100(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3074
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$40;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$6200(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3077
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3078
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3079
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$40;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 3080
    return-void

    .line 3059
    .end local v0           #finger_air_view_changed:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$40;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$5600(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3061
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$40;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$5700(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view_highlight"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3065
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$40;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$5800(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_writing_buddy"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
