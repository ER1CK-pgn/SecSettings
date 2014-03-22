.class Lcom/android/settings/SettingsEmergencyActivity$4;
.super Ljava/lang/Object;
.source "SettingsEmergencyActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsEmergencyActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsEmergencyActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsEmergencyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/android/settings/SettingsEmergencyActivity$4;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$4;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 1345
    return-void
.end method
