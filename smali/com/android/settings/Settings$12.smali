.class Lcom/android/settings/Settings$12;
.super Landroid/database/ContentObserver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 5094
    iput-object p1, p0, Lcom/android/settings/Settings$12;->this$0:Lcom/android/settings/Settings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 5097
    iget-object v0, p0, Lcom/android/settings/Settings$12;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v0}, Lcom/android/settings/Settings;->invalidateHeaders()V

    .line 5098
    return-void
.end method
