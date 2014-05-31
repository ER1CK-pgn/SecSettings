.class public Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;
.super Landroid/app/Activity;
.source "NfcAdvancedRoutingSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;,
        Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;
    }
.end annotation


# static fields
.field static selectedPos:I


# instance fields
.field currentRoute:Ljava/lang/String;

.field mConfirDialog:Landroid/app/AlertDialog;

.field mContext:Landroid/content/Context;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field mRouteListDialog:Landroid/app/AlertDialog;

.field private rButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 268
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->rButtonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "title_id"
    .parameter "setroute_id"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 215
    const-string v3, "NfcRoutingSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create Dialog() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v3, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, strAdvAlertTitle:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    const v4, 0x7f0902f6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, strAdvAlertChange:Ljava/lang/String;
    const-string v3, "ORANGE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_NFC_ReplaceLabelSettings"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090300

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    const-string v3, "UICC"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    iget-object v3, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090301

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 234
    const v3, 0x7f091677

    new-instance v4, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;

    invoke-direct {v4, p0, p2}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    const v3, 0x7f090198

    new-instance v4, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$4;

    invoke-direct {v4, p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$4;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mConfirDialog:Landroid/app/AlertDialog;

    .line 255
    return-void

    .line 224
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    :cond_1
    const-string v3, "DH"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    iget-object v3, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090302

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 228
    :cond_2
    iget-object v3, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    const v4, 0x7f090303

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private createRoutingListDialog()V
    .locals 17

    .prologue
    .line 140
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v4, Titlelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v5, Summarylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v6, Idlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 145
    .local v15, strAdvUiccTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 146
    .local v14, strAdvUiccSummary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 147
    .local v12, strAdvHceTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 148
    .local v11, strAdvHceSummary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, strAdvEseTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, strAdvEseSummary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 151
    .local v13, strAdvTitle:Ljava/lang/String;
    const-string v2, "ORANGE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v16, "CscFeature_NFC_ReplaceLabelSettings"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 163
    :cond_0
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v2, "UICC"

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v2, "DH"

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SmartcardSvc_HideTerminalCapability"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, hideTerminal:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 182
    .local v1, itemsAdapter:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .local v7, ab:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 184
    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 186
    const v2, 0x7f090198

    new-instance v3, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)V

    invoke-virtual {v7, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    new-instance v2, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$2;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)V

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mRouteListDialog:Landroid/app/AlertDialog;

    .line 203
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 211
    const-string v0, "NfcRoutingSettings"

    const-string v1, "configuration change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->rButtonList:Ljava/util/ArrayList;

    .line 104
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    .line 106
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getDefaultRoutingDestination()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->currentRoute:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->createRoutingListDialog()V

    .line 115
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mRouteListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 116
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NfcRoutingSettings"

    const-string v2, "Exception occured - getDefaultRoutingDestination"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mRouteListDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mRouteListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 128
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 138
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method
