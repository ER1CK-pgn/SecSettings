.class Lcom/android/settings/DisplaySettings$8;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$8;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$8;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$700(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/DisplaySettings$8;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$600(Lcom/android/settings/DisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$8;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$800(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/DisplaySettings$8;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$600(Lcom/android/settings/DisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "smart_pause"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$8;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$900(Lcom/android/settings/DisplaySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/DisplaySettings$8;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/DisplaySettings;->access$600(Lcom/android/settings/DisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_scroll"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 377
    return-void

    :cond_0
    move v0, v2

    .line 374
    goto :goto_0

    :cond_1
    move v0, v2

    .line 375
    goto :goto_1

    :cond_2
    move v1, v2

    .line 376
    goto :goto_2
.end method
