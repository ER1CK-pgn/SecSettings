.class Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/accessibility/ToggleSwitch;Z)Z
    .locals 6
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, bAirFeatureEnabled:Z
    const/4 v1, 0x0

    .line 54
    .local v1, oneHandOperationEnabled:Z
    if-ne p2, v5, :cond_6

    .line 55
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 56
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_view_master_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 62
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v2

    if-nez v2, :cond_8

    .line 70
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$300(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$400(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 72
    :cond_2
    const/4 v0, 0x1

    .line 76
    :cond_3
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$500(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "any_screen_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    const/4 v1, 0x1

    .line 79
    :cond_4
    if-eq v0, v5, :cond_5

    if-ne v1, v5, :cond_6

    .line 80
    :cond_5
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v2, v5}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$600(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;I)V

    .line 82
    :cond_6
    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 83
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checked"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 85
    return v4

    .line 58
    :cond_7
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :cond_8
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$200(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_writing_buddy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    const/4 v0, 0x1

    goto :goto_1
.end method
