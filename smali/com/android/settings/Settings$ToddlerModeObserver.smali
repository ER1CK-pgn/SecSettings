.class Lcom/android/settings/Settings$ToddlerModeObserver;
.super Landroid/database/ContentObserver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToddlerModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings;)V
    .locals 1
    .parameter

    .prologue
    .line 3748
    iput-object p1, p0, Lcom/android/settings/Settings$ToddlerModeObserver;->this$0:Lcom/android/settings/Settings;

    .line 3749
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3750
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 3754
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3755
    iget-object v0, p0, Lcom/android/settings/Settings$ToddlerModeObserver;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v0}, Lcom/android/settings/Settings;->invalidateHeaders()V

    .line 3756
    return-void
.end method
