.class Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentStarter"
.end annotation


# instance fields
.field private final mClass:Ljava/lang/String;

.field private final mTitleRes:I

.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "className"
    .parameter "title"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p2, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->mClass:Ljava/lang/String;

    .line 554
    iput p3, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->mTitleRes:I

    .line 555
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 559
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->mClass:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;->mTitleRes:I

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 561
    const/4 v0, 0x1

    return v0
.end method
