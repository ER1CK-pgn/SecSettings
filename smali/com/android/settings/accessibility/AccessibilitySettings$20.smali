.class Lcom/android/settings/accessibility/AccessibilitySettings$20;
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
    .line 2916
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$20;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 2918
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 2919
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$20;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mFlashNotificationCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$2500(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2920
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2921
    const/4 v0, 0x1

    .line 2923
    :cond_0
    return v0
.end method
