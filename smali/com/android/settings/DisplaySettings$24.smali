.class Lcom/android/settings/DisplaySettings$24;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2028
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 2030
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 2032
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_stay_noti"

    if-ne v0, v1, :cond_1

    .line 2033
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2034
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v1, v1, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->createSmartScreenGuideDialog(Ljava/lang/String;)V

    .line 2044
    :cond_0
    :goto_0
    return-void

    .line 2035
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    if-ne v0, v1, :cond_2

    .line 2036
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2037
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    const-string v1, "com.sec.SMART_PAUSE_CHANGED"

    #calls: Lcom/android/settings/DisplaySettings;->broadcastSmartScreenStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->access$1700(Lcom/android/settings/DisplaySettings;Ljava/lang/String;Z)V

    .line 2038
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v1, v1, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->createSmartScreenGuideDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 2039
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_scroll_noti"

    if-ne v0, v1, :cond_0

    .line 2040
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2041
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    #calls: Lcom/android/settings/DisplaySettings;->broadcastSmartScreenStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->access$1700(Lcom/android/settings/DisplaySettings;Ljava/lang/String;Z)V

    .line 2042
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$24;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object v1, v1, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->createSmartScreenGuideDialog(Ljava/lang/String;)V

    goto :goto_0
.end method
