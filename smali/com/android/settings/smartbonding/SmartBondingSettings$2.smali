.class Lcom/android/settings/smartbonding/SmartBondingSettings$2;
.super Ljava/lang/Object;
.source "SmartBondingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartbonding/SmartBondingSettings;->showNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

.field final synthetic val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    iput-object p2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 185
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    #getter for: Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$100(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    #calls: Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$400(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "smart_bonding"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    #calls: Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$500(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding_notification"

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    #getter for: Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$300(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 189
    return-void

    :cond_0
    move v0, v2

    .line 187
    goto :goto_0

    :cond_1
    move v2, v1

    .line 188
    goto :goto_1
.end method
