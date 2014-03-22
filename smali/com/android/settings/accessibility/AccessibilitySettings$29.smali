.class Lcom/android/settings/accessibility/AccessibilitySettings$29;
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
    .line 2915
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$29;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$29;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3200(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2919
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$29;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3800(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2920
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$29;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    const/4 v1, 0x6

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3900(Lcom/android/settings/accessibility/AccessibilitySettings;I)V

    .line 2921
    return-void
.end method
