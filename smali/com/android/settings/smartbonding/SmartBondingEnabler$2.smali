.class Lcom/android/settings/smartbonding/SmartBondingEnabler$2;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

.field final synthetic val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    iput-object p2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$2;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x1

    .line 121
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    #getter for: Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->access$100(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    #getter for: Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->access$000(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_bonding"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    #getter for: Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->access$000(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_bonding_notification"

    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$2;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    return-void
.end method
