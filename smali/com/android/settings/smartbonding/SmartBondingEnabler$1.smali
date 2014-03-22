.class Lcom/android/settings/smartbonding/SmartBondingEnabler$1;
.super Landroid/database/ContentObserver;
.source "SmartBondingEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/smartbonding/SmartBondingEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    #getter for: Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->access$100(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    #getter for: Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->access$000(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 51
    return-void
.end method
