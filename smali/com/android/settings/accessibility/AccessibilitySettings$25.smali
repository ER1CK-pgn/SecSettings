.class Lcom/android/settings/accessibility/AccessibilitySettings$25;
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

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck_autohaptic:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2932
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$25;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$25;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilitySettings$25;->val$mcheck_autohaptic:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 2934
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$25;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_autohaptic_noti"

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$25;->val$mcheck_autohaptic:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2935
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$25;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2936
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2937
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$25;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$2900(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_tactileassist_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2938
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$25;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$25;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    const-string v2, "tactileassist"

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3100(Lcom/android/settings/accessibility/AccessibilitySettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TactileAssist;

    #setter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mTactileAssist:Landroid/os/TactileAssist;
    invoke-static {v1, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3002(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/TactileAssist;)Landroid/os/TactileAssist;

    .line 2939
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$25;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->mTactileAssist:Landroid/os/TactileAssist;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$3000(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/TactileAssist;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/TactileAssist;->setEnable(Z)Z

    .line 2940
    const-string v0, "AccessibilitySettings"

    const-string v1, "mTactileAssist : enable - 2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    return-void
.end method
