.class Lcom/android/settings/accessibility/AccessibilitySettings$38;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 3092
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$38;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 3094
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 3095
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$38;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$800(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 3096
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$38;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$5300(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3098
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3099
    const/4 v0, 0x1

    .line 3101
    :cond_0
    return v0
.end method
