.class Lcom/android/settings/RecommendedAppsMenu$1;
.super Ljava/lang/Object;
.source "RecommendedAppsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RecommendedAppsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RecommendedAppsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/RecommendedAppsMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings/RecommendedAppsMenu$1;->this$0:Lcom/android/settings/RecommendedAppsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 259
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v2, bundle:Landroid/os/Bundle;
    const-string v1, "edit_direct"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu$1;->this$0:Lcom/android/settings/RecommendedAppsMenu;

    #getter for: Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/RecommendedAppsMenu;->access$000(Lcom/android/settings/RecommendedAppsMenu;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu$1;->this$0:Lcom/android/settings/RecommendedAppsMenu;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 263
    const-string v1, "edit_value"

    const-string v4, "earphones"

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu$1;->this$0:Lcom/android/settings/RecommendedAppsMenu;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 265
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const-string v1, "com.android.settings.RecommendedAppsList"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu$1;->this$0:Lcom/android/settings/RecommendedAppsMenu;

    #getter for: Lcom/android/settings/RecommendedAppsMenu;->mFragment:Landroid/app/Fragment;
    invoke-static {v5}, Lcom/android/settings/RecommendedAppsMenu;->access$100(Lcom/android/settings/RecommendedAppsMenu;)Landroid/app/Fragment;

    move-result-object v5

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 280
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu$1;->this$0:Lcom/android/settings/RecommendedAppsMenu;

    #getter for: Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/RecommendedAppsMenu;->access$200(Lcom/android/settings/RecommendedAppsMenu;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu$1;->this$0:Lcom/android/settings/RecommendedAppsMenu;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 269
    const-string v1, "edit_value"

    const-string v4, "docking"

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu$1;->this$0:Lcom/android/settings/RecommendedAppsMenu;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 271
    .restart local v0       #preferenceActivity:Landroid/preference/PreferenceActivity;
    const-string v1, "com.android.settings.RecommendedAppsList"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu$1;->this$0:Lcom/android/settings/RecommendedAppsMenu;

    #getter for: Lcom/android/settings/RecommendedAppsMenu;->mFragment:Landroid/app/Fragment;
    invoke-static {v5}, Lcom/android/settings/RecommendedAppsMenu;->access$100(Lcom/android/settings/RecommendedAppsMenu;)Landroid/app/Fragment;

    move-result-object v5

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 273
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu$1;->this$0:Lcom/android/settings/RecommendedAppsMenu;

    #getter for: Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/RecommendedAppsMenu;->access$300(Lcom/android/settings/RecommendedAppsMenu;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu$1;->this$0:Lcom/android/settings/RecommendedAppsMenu;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 275
    const-string v1, "edit_value"

    const-string v4, "roaming"

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu$1;->this$0:Lcom/android/settings/RecommendedAppsMenu;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 277
    .restart local v0       #preferenceActivity:Landroid/preference/PreferenceActivity;
    const-string v1, "com.android.settings.RecommendedAppsList"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu$1;->this$0:Lcom/android/settings/RecommendedAppsMenu;

    #getter for: Lcom/android/settings/RecommendedAppsMenu;->mFragment:Landroid/app/Fragment;
    invoke-static {v5}, Lcom/android/settings/RecommendedAppsMenu;->access$100(Lcom/android/settings/RecommendedAppsMenu;)Landroid/app/Fragment;

    move-result-object v5

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method
