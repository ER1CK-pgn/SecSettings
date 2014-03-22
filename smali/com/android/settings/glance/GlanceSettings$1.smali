.class Lcom/android/settings/glance/GlanceSettings$1;
.super Landroid/database/ContentObserver;
.source "GlanceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/glance/GlanceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/glance/GlanceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/glance/GlanceSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/glance/GlanceSettings$1;->this$0:Lcom/android/settings/glance/GlanceSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lcom/android/settings/glance/GlanceSettings$1;->this$0:Lcom/android/settings/glance/GlanceSettings;

    #getter for: Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/glance/GlanceSettings;->access$000(Lcom/android/settings/glance/GlanceSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "glance_switch_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 81
    .local v0, glanceState:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/glance/GlanceSettings$1;->this$0:Lcom/android/settings/glance/GlanceSettings;

    #getter for: Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings/glance/GlanceSettings;->access$100(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/glance/GlanceSettings$1;->this$0:Lcom/android/settings/glance/GlanceSettings;

    #getter for: Lcom/android/settings/glance/GlanceSettings;->mAppNamePhone:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/glance/GlanceSettings;->access$200(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 83
    iget-object v1, p0, Lcom/android/settings/glance/GlanceSettings$1;->this$0:Lcom/android/settings/glance/GlanceSettings;

    #getter for: Lcom/android/settings/glance/GlanceSettings;->mAppNameContacts:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/glance/GlanceSettings;->access$300(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 84
    iget-object v1, p0, Lcom/android/settings/glance/GlanceSettings$1;->this$0:Lcom/android/settings/glance/GlanceSettings;

    #getter for: Lcom/android/settings/glance/GlanceSettings;->mAppNameMessage:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/glance/GlanceSettings;->access$400(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/glance/GlanceSettings$1;->this$0:Lcom/android/settings/glance/GlanceSettings;

    #getter for: Lcom/android/settings/glance/GlanceSettings;->mAppNameGallery:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/glance/GlanceSettings;->access$500(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/glance/GlanceSettings$1;->this$0:Lcom/android/settings/glance/GlanceSettings;

    #getter for: Lcom/android/settings/glance/GlanceSettings;->mAppNameSettings:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/glance/GlanceSettings;->access$600(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 87
    iget-object v1, p0, Lcom/android/settings/glance/GlanceSettings$1;->this$0:Lcom/android/settings/glance/GlanceSettings;

    #getter for: Lcom/android/settings/glance/GlanceSettings;->mAppNameEmail:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/glance/GlanceSettings;->access$700(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/glance/GlanceSettings$1;->this$0:Lcom/android/settings/glance/GlanceSettings;

    #getter for: Lcom/android/settings/glance/GlanceSettings;->mAppNameSPlanner:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/glance/GlanceSettings;->access$800(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/glance/GlanceSettings$1;->this$0:Lcom/android/settings/glance/GlanceSettings;

    #getter for: Lcom/android/settings/glance/GlanceSettings;->mAppNameScrapbook:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/glance/GlanceSettings;->access$900(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/glance/GlanceSettings$1;->this$0:Lcom/android/settings/glance/GlanceSettings;

    #getter for: Lcom/android/settings/glance/GlanceSettings;->mAppNameVideoEditor:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/glance/GlanceSettings;->access$1000(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 91
    return-void
.end method
