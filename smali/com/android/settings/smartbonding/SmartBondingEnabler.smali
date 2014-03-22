.class public final Lcom/android/settings/smartbonding/SmartBondingEnabler;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private final mSmartBondingObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 44
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 45
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 47
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler$1;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    .line 55
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private showNotificationDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 102
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 105
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 106
    iput-object v7, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 109
    :cond_0
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 110
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04013e

    invoke-virtual {v1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, layout:Landroid/view/View;
    const v5, 0x7f0b0355

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 112
    .local v4, tv:Landroid/widget/TextView;
    const v5, 0x7f0912ed

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 114
    const v5, 0x7f0b0147

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 116
    .local v3, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 117
    const v5, 0x7f0912e9

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 119
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/smartbonding/SmartBondingEnabler$2;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/smartbonding/SmartBondingEnabler$2;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/settings/smartbonding/SmartBondingEnabler$3;

    invoke-direct {v6, p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler$3;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 135
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 145
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding_notification"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 89
    .local v0, isDisplayed:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 90
    .local v1, smartBondingState:Z
    :goto_1
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 91
    if-nez v1, :cond_0

    .line 92
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()V

    .line 98
    :cond_0
    :goto_2
    return-void

    .end local v0           #isDisplayed:Z
    .end local v1           #smartBondingState:Z
    :cond_1
    move v0, v3

    .line 88
    goto :goto_0

    .restart local v0       #isDisplayed:Z
    :cond_2
    move v1, v3

    .line 89
    goto :goto_1

    .line 96
    .restart local v1       #smartBondingState:Z
    :cond_3
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    if-eqz p2, :cond_4

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    return-void

    :cond_0
    move v0, v1

    .line 63
    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 4
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 81
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
