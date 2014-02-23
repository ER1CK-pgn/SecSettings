.class Lcom/android/settings/VoiceInputControlEnabler$6;
.super Landroid/os/Handler;
.source "VoiceInputControlEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VoiceInputControlEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VoiceInputControlEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceInputControlEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler$6;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$6;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    #getter for: Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlEnabler;->access$100(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090d18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$6;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    #getter for: Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlEnabler;->access$000(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler$6;->this$0:Lcom/android/settings/VoiceInputControlEnabler;

    #getter for: Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlEnabler;->access$100(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    :cond_0
    return-void
.end method
