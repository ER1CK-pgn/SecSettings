.class Lcom/android/settings/smartbonding/SmartBondingSettings$1;
.super Landroid/database/ContentObserver;
.source "SmartBondingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/smartbonding/SmartBondingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 59
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    #calls: Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 60
    .local v1, smartBondingState:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    #getter for: Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$100(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 62
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    #calls: Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$200(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding_notification"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 63
    .local v0, isDisplayed:Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    #getter for: Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$300(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 64
    return-void

    .end local v0           #isDisplayed:Z
    .end local v1           #smartBondingState:Z
    :cond_0
    move v1, v3

    .line 59
    goto :goto_0

    .restart local v1       #smartBondingState:Z
    :cond_1
    move v0, v3

    .line 62
    goto :goto_1
.end method
