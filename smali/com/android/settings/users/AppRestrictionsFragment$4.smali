.class Lcom/android/settings/users/AppRestrictionsFragment$4;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AppRestrictionsFragment;->createDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mMobileData:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1400(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1282
    return-void
.end method
