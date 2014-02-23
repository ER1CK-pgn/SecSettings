.class Lcom/android/settings/VoiceInputControlSettings$6;
.super Ljava/lang/Object;
.source "VoiceInputControlSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VoiceInputControlSettings;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VoiceInputControlSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlSettings$6;->this$0:Lcom/android/settings/VoiceInputControlSettings;

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

    .line 236
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 237
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 238
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings$6;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    #getter for: Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/VoiceInputControlSettings;->access$100(Lcom/android/settings/VoiceInputControlSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 239
    const/4 v0, 0x1

    .line 241
    :cond_0
    return v0
.end method
