.class Lcom/android/settings/SPenSettingsMenu$4;
.super Ljava/lang/Object;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SPenSettingsMenu;->showPenKeeperNotiDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SPenSettingsMenu;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/SPenSettingsMenu;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    iput-object p2, p0, Lcom/android/settings/SPenSettingsMenu$4;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    .line 526
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu$4;->val$layout:Landroid/view/View;

    const v4, 0x7f0b0146

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 528
    .local v0, check:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-virtual {v3}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_pen_keeper_noti_pref"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 531
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 532
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "PenKeeperDoNotShowDialog"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 533
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 535
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
