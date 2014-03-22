.class Lcom/android/settings/smartscreen/SmartScreenSettings$12;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "SmartScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/smartscreen/SmartScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$12;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 741
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$12;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #getter for: Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1600(Lcom/android/settings/smartscreen/SmartScreenSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$12;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #getter for: Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1700(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/widget/Switch;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$12;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$12;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #getter for: Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$800(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$12;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 745
    return-void

    :cond_1
    move v0, v2

    .line 742
    goto :goto_0

    :cond_2
    move v1, v2

    .line 744
    goto :goto_1
.end method
