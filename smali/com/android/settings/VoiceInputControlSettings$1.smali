.class Lcom/android/settings/VoiceInputControlSettings$1;
.super Landroid/database/ContentObserver;
.source "VoiceInputControlSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VoiceInputControlSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VoiceInputControlSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceInputControlSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/VoiceInputControlSettings$1;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$1;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    # invokes: Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlSettings;->access$000(Lcom/android/settings/VoiceInputControlSettings;)V

    return-void
.end method
