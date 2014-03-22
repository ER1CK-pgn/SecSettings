.class Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$6;
.super Ljava/lang/Object;
.source "SettingsEmergencyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 4085
    iput-object p1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$6;->this$0:Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 4089
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$6;->this$0:Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;

    #calls: Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->setCheckBoxTypeValue(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->access$400(Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4090
    monitor-exit p0

    return-void

    .line 4089
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
