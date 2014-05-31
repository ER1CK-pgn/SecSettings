.class public Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRestrictFragment"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3078
    new-instance v0, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3077
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static close(Lcom/android/settings/DataUsageSummary;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 3090
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    if-eqz v0, :cond_0

    .line 3091
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3096
    :cond_0
    :goto_0
    return-void

    .line 3093
    :cond_1
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 3094
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->dismiss()V

    goto :goto_0
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 3081
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3087
    :cond_0
    :goto_0
    return-void

    .line 3083
    :cond_1
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3084
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 3085
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 3099
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3101
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3102
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090b2b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3103
    invoke-static {v1}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3104
    const v2, 0x7f090b2d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3109
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3118
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 3106
    :cond_0
    const v2, 0x7f090b2c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
