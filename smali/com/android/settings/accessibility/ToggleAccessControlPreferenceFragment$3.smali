.class Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;
.super Ljava/lang/Object;
.source "ToggleAccessControlPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

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

    .line 142
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 144
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 145
    const/4 v0, 0x1

    .line 147
    :cond_0
    return v0
.end method
