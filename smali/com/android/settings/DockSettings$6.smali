.class Lcom/android/settings/DockSettings$6;
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
    .line 550
    iput-object p1, p0, Lcom/android/settings/DockSettings$6;->this$0:Lcom/android/settings/DockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 552
    const-string v1, "DockSettings"

    const-string v2, "showEnableCoverNote() - Yes"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/16 v0, 0x7b

    .line 554
    .local v0, SET_OR_CHANGE_LOCK_METHOD_REQUEST:I
    iget-object v1, p0, Lcom/android/settings/DockSettings$6;->this$0:Lcom/android/settings/DockSettings;

    iget-object v2, p0, Lcom/android/settings/DockSettings$6;->this$0:Lcom/android/settings/DockSettings;

    const-string v3, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v4, 0x7b

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/DockSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 556
    return-void
.end method
