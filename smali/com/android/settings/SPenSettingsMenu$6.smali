.class Lcom/android/settings/SPenSettingsMenu$6;
.super Ljava/lang/Object;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SPenSettingsMenu;->showAllOptionDisabledDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/SPenSettingsMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/settings/SPenSettingsMenu$6;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu$6;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-virtual {v1}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "pen_hovering"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 613
    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu$6;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-virtual {v1}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 615
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090f99

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 618
    return-void
.end method
