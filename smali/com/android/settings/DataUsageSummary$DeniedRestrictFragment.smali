.class public Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeniedRestrictFragment"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3130
    new-instance v0, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3129
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static close(Lcom/android/settings/DataUsageSummary;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 3140
    sget-object v0, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;

    if-eqz v0, :cond_0

    .line 3141
    sget-object v0, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3146
    :cond_0
    :goto_0
    return-void

    .line 3143
    :cond_1
    sget-object v0, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 3144
    sget-object v0, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 3149
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3151
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3152
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090b19

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3153
    const v2, 0x7f090b1e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3154
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
