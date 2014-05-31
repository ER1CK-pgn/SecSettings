.class Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;
.super Lcom/android/settings/HeaderAdapter;
.source "FavoriteMenuList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/favorite/FavoriteMenuList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FavoriteAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private isCheckedConfrim:[Z

.field private mContext:Landroid/content/Context;

.field private sArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/favorite/FavoriteMenuList;


# direct methods
.method public constructor <init>(Lcom/android/settings/favorite/FavoriteMenuList;Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .parameter
    .parameter "c"
    .parameter
    .parameter "dpm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    .line 164
    iput-object p1, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    .line 165
    invoke-direct {p0, p2, p3, v0, p4}, Lcom/android/settings/HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    .line 159
    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->sArrayList:Ljava/util/ArrayList;

    .line 166
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 167
    iput-object p3, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->sArrayList:Ljava/util/ArrayList;

    .line 168
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->sArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isCheckedConfrim:[Z

    .line 169
    iput-object p2, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->mContext:Landroid/content/Context;

    .line 170
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->sArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->sArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    return-wide v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 4
    .parameter "position"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-virtual {v1}, Lcom/android/settings/favorite/FavoriteMenuList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, key:Ljava/lang/String;
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/HeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 217
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isCheckedConfrim:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 219
    return-object v0
.end method

.method public isChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isCheckedConfrim:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public setChecked(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isCheckedConfrim:[Z

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isCheckedConfrim:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p1

    .line 181
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
