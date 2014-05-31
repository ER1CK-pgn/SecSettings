.class public final Lcom/android/settings/smartbonding/SmartBondingEnabler;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private final mSmartBondingObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mWfcObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 50
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 51
    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 55
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler$1;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    .line 62
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler$2;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    .line 69
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingEnabler$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler$3;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    .line 77
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private getBtnIdUnderNetworkStatus()I
    .locals 2

    .prologue
    .line 214
    const v0, 0x104000a

    .line 215
    .local v0, popupBtnId:I
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    const v0, 0x7f09133c

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    const v0, 0x7f09133b

    goto :goto_0

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    const v0, 0x7f09133a

    goto :goto_0
.end method

.method private getTextIdUnderNetworkStatus()I
    .locals 2

    .prologue
    .line 199
    const v0, 0x7f091335

    .line 200
    .local v0, popupMsgId:I
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    const v0, 0x7f091339

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 203
    const v0, 0x7f091338

    goto :goto_0

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 205
    const v0, 0x7f091337

    goto :goto_0

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    const v0, 0x7f091336

    goto :goto_0
.end method

.method private registerForWfcAndAirPlaneStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 238
    return-void
.end method

.method private showNotificationDialog()V
    .locals 13

    .prologue
    .line 127
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    .line 128
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 129
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 132
    :cond_0
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 133
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 135
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 136
    .local v6, res:Landroid/content/res/Resources;
    const v9, 0x7f091340

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const v12, 0x7f09019d

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f09019d

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, text:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 196
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 139
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 141
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f091339

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f091331

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/smartbonding/SmartBondingEnabler$4;

    invoke-direct {v11, p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler$4;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 149
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 153
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 156
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f040140

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 157
    .local v2, layout:Landroid/view/View;
    const v9, 0x7f0b035d

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 158
    .local v8, tv:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->getTextIdUnderNetworkStatus()I

    move-result v4

    .line 159
    .local v4, msgResId:I
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(I)V

    .line 161
    const v9, 0x7f0b014b

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 162
    .local v3, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 163
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 165
    const/4 v9, 0x0

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 166
    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 169
    const v9, 0x7f091331

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 171
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->getBtnIdUnderNetworkStatus()I

    move-result v9

    new-instance v10, Lcom/android/settings/smartbonding/SmartBondingEnabler$5;

    invoke-direct {v10, p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler$5;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    const/high16 v9, 0x104

    new-instance v10, Lcom/android/settings/smartbonding/SmartBondingEnabler$6;

    invoke-direct {v10, p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler$6;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 187
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 189
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/settings/smartbonding/SmartBondingEnabler$7;

    invoke-direct {v10, p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler$7;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0
.end method

.method private unregisterForWfcAndAirPlaneStatus()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 244
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

    .line 112
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 113
    .local v1, smartBondingState:Z
    :goto_0
    if-eqz p2, :cond_4

    if-nez v1, :cond_4

    .line 114
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding_notification_do_not_show"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 115
    .local v0, do_not_show_again:Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()V

    .line 123
    .end local v0           #do_not_show_again:Z
    :goto_2
    return-void

    .end local v1           #smartBondingState:Z
    :cond_1
    move v1, v3

    .line 112
    goto :goto_0

    .restart local v1       #smartBondingState:Z
    :cond_2
    move v0, v3

    .line 114
    goto :goto_1

    .line 118
    .restart local v0       #do_not_show_again:Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 121
    .end local v0           #do_not_show_again:Z
    :cond_4
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    if-eqz p2, :cond_5

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->unregisterForWfcAndAirPlaneStatus()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->registerForWfcAndAirPlaneStatus()V

    .line 85
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

    .line 87
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    return-void

    :cond_0
    move v0, v1

    .line 85
    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 4
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState()V

    .line 105
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

    .line 106
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateSmartBondingState()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
