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
    .line 4774
    iput-object p1, p0, Lcom/android/settings/Settings$ToddlerModeObserver;->this$0:Lcom/android/settings/Settings;

    .line 4775
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4776
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 4780
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4781
    iget-object v0, p0, Lcom/android/settings/Settings$ToddlerModeObserver;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 4782
    return-void
.end method
