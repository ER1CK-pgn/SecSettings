.class Lcom/android/settings/SettingsEmergencyActivity$3;
.super Ljava/lang/Object;
.source "SettingsEmergencyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsEmergencyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsEmergencyActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsEmergencyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/android/settings/SettingsEmergencyActivity$3;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$3;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$3;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #getter for: Lcom/android/settings/SettingsEmergencyActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/SettingsEmergencyActivity;->access$200(Lcom/android/settings/SettingsEmergencyActivity;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #calls: Lcom/android/settings/SettingsEmergencyActivity;->switchToParent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/SettingsEmergencyActivity;->access$300(Lcom/android/settings/SettingsEmergencyActivity;Ljava/lang/String;)V

    .line 991
    return-void
.end method
