.class Lcom/android/settings/accessibility/AccessibilitySettings$12;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->updateFlashNotificationSettingsScreen()V
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$1800(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    .line 550
    return-void
.end method
