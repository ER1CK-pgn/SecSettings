.class Lcom/android/settings/accessibility/AccessibilitySettings$13;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
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
    .line 1263
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$1800(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1268
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/accessibility/AccessibilitySettings;->endPowerKeyEndChecked:Z
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$1602(Lcom/android/settings/accessibility/AccessibilitySettings;Z)Z

    .line 1269
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$1700(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->endPowerKeyEndChecked:Z
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$1600(Lcom/android/settings/accessibility/AccessibilitySettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1270
    return-void
.end method
