.class public Lcom/android/settings/favorite/FavoriteMenuList;
.super Landroid/app/Activity;
.source "FavoriteMenuList.java"

# interfaces
.implements Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;
    }
.end annotation


# instance fields
.field private isGridView:Z

.field private mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    .line 147
    new-instance v0, Lcom/android/settings/favorite/FavoriteMenuList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/favorite/FavoriteMenuList$1;-><init>(Lcom/android/settings/favorite/FavoriteMenuList;)V

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/favorite/FavoriteMenuList;)Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    return-object v0
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 93
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 94
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 58
    .local v3, intent:Landroid/content/Intent;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v4, mArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz v3, :cond_0

    const-string v8, "favoriteList"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 60
    const-string v8, "favoriteList"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 62
    :cond_0
    const-string v8, "device_policy"

    invoke-virtual {p0, v8}, Lcom/android/settings/favorite/FavoriteMenuList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 64
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    new-instance v8, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-direct {v8, p0, p0, v4, v1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;-><init>(Lcom/android/settings/favorite/FavoriteMenuList;Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/admin/DevicePolicyManager;)V

    iput-object v8, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->updateState()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_listui"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v7, :cond_1

    :goto_0
    iput-boolean v6, p0, Lcom/android/settings/favorite/FavoriteMenuList;->isGridView:Z

    .line 70
    iget-boolean v6, p0, Lcom/android/settings/favorite/FavoriteMenuList;->isGridView:Z

    if-eqz v6, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 72
    .local v2, fragmentManager:Landroid/app/FragmentManager;
    new-instance v5, Lcom/android/settings/GridSettingsFragment;

    invoke-direct {v5}, Lcom/android/settings/GridSettingsFragment;-><init>()V

    .line 73
    .local v5, mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "isFavoriteList"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    invoke-virtual {v5, v0}, Lcom/android/settings/GridSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {v5, p0, v4}, Lcom/android/settings/GridSettingsFragment;->initHeaderList(Landroid/content/Context;Ljava/util/List;)V

    .line 77
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x1020002

    invoke-virtual {v6, v7, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 88
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #fragmentManager:Landroid/app/FragmentManager;
    .end local v5           #mGridSettingsFragment:Lcom/android/settings/GridSettingsFragment;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->configureActionBar()V

    .line 89
    return-void

    :cond_1
    move v6, v7

    .line 68
    goto :goto_0

    .line 79
    :cond_2
    const v6, 0x7f040097

    invoke-virtual {p0, v6}, Lcom/android/settings/favorite/FavoriteMenuList;->setContentView(I)V

    .line 81
    const v6, 0x7f0b01a0

    invoke-virtual {p0, v6}, Lcom/android/settings/favorite/FavoriteMenuList;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    .line 84
    iget-object v6, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v6, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 125
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 1
    .parameter "header"
    .parameter "position"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    .line 227
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 133
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->finish()V

    goto :goto_0

    .line 137
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->finish()V

    goto :goto_0

    .line 140
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->saveState()V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->finish()V

    goto :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b0681 -> :sswitch_1
        0x7f0b0683 -> :sswitch_2
    .end sparse-switch
.end method

.method public saveState()V
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, key:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->isFavorite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->removeFavorite(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->isFavorite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->saveFavorite(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    .end local v1           #key:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public updateState()V
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, key:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->isFavorite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    return-void
.end method
