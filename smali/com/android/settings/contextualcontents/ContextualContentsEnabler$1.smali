.class Lcom/android/settings/contextualcontents/ContextualContentsEnabler$1;
.super Landroid/database/ContentObserver;
.source "ContextualContentsEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/contextualcontents/ContextualContentsEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/contextualcontents/ContextualContentsEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler$1;->this$0:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsEnabler$1;->this$0:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    invoke-virtual {v0}, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->updateSwitch()V

    .line 39
    return-void
.end method
