.class public Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAppRestrictFragment"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3165
    new-instance v0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3164
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static close(Lcom/android/settings/DataUsageSummary;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 3174
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    if-eqz v0, :cond_0

    .line 3175
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3180
    :cond_0
    :goto_0
    return-void

    .line 3177
    :cond_1
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 3178
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->dismiss()V

    goto :goto_0
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 3167
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3172
    :cond_0
    :goto_0
    return-void

    .line 3168
    :cond_1
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3169
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 3170
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAppRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 3183
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3185
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3186
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090b1c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3187
    const v2, 0x7f090b1d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3189
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3198
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
