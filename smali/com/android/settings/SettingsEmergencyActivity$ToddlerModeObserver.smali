.class Lcom/android/settings/SettingsEmergencyActivity$ToddlerModeObserver;
.super Landroid/database/ContentObserver;
.source "SettingsEmergencyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsEmergencyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToddlerModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsEmergencyActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsEmergencyActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 4637
    iput-object p1, p0, Lcom/android/settings/SettingsEmergencyActivity$ToddlerModeObserver;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    .line 4638
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4639
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 4643
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4644
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$ToddlerModeObserver;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 4645
    return-void
.end method
