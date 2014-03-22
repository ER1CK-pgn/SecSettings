.class Lcom/android/settings/accessibility/AccessibilitySettings$37;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 3023
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$37;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3025
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$37;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$5200(Lcom/android/settings/accessibility/AccessibilitySettings;)Lcom/android/settings/FontSizeListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    .line 3026
    return-void
.end method
