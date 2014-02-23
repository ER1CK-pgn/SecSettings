.class Lcom/android/settings/DockSettings$5;
.super Ljava/lang/Object;
.source "DockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DockSettings;->showEnableCoverNote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/settings/DockSettings$5;->this$0:Lcom/android/settings/DockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 559
    iget-object v0, p0, Lcom/android/settings/DockSettings$5;->this$0:Lcom/android/settings/DockSettings;

    #getter for: Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/DockSettings;->access$400(Lcom/android/settings/DockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/DockSettings$5;->this$0:Lcom/android/settings/DockSettings;

    invoke-virtual {v0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_note"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 561
    const-string v0, "DockSettings"

    const-string v1, "showEnableCoverNote() - No : set disable"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method
