.class public Lcom/android/settings/GridSettingsFragment;
.super Landroid/app/Fragment;
.source "GridSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GridSettingsFragment$HeaderGroup;,
        Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;
    }
.end annotation


# instance fields
.field isFavoriteList:Z

.field private mDrawerType:I

.field mFavoriteTouchListener:Landroid/view/View$OnTouchListener;

.field mGridarea:Landroid/widget/LinearLayout;

.field mHeaderGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/GridSettingsFragment$HeaderGroup;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewClickListener:Landroid/view/View$OnClickListener;

.field mHeadersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGridItemSelectedListener:Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;

.field private mTypeSections:[J

.field private mUpdateView:Z

.field private type_connections_sections:[J

.field private type_controls_sections:[J

.field private type_device_sections:[J

.field private type_general_sections:[J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 39
    iput-boolean v3, p0, Lcom/android/settings/GridSettingsFragment;->isFavoriteList:Z

    .line 42
    new-array v0, v4, [J

    const-wide/32 v1, 0x7f0b05de

    aput-wide v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/GridSettingsFragment;->type_connections_sections:[J

    .line 43
    new-array v0, v4, [J

    const-wide/32 v1, 0x7f0b063e

    aput-wide v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/GridSettingsFragment;->type_device_sections:[J

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/GridSettingsFragment;->type_controls_sections:[J

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/GridSettingsFragment;->type_general_sections:[J

    .line 47
    iput-boolean v3, p0, Lcom/android/settings/GridSettingsFragment;->mUpdateView:Z

    .line 48
    iput v3, p0, Lcom/android/settings/GridSettingsFragment;->mDrawerType:I

    .line 214
    new-instance v0, Lcom/android/settings/GridSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettingsFragment$1;-><init>(Lcom/android/settings/GridSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/GridSettingsFragment;->mHeaderViewClickListener:Landroid/view/View$OnClickListener;

    .line 224
    new-instance v0, Lcom/android/settings/GridSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettingsFragment$2;-><init>(Lcom/android/settings/GridSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/GridSettingsFragment;->mFavoriteTouchListener:Landroid/view/View$OnTouchListener;

    .line 252
    return-void

    .line 44
    :array_0
    .array-data 0x8
        0x3ft 0x6t 0xbt 0x7ft 0x0t 0x0t 0x0t 0x0t
        0x41t 0x6t 0xbt 0x7ft 0x0t 0x0t 0x0t 0x0t
        0x43t 0x6t 0xbt 0x7ft 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 45
    :array_1
    .array-data 0x8
        0x44t 0x6t 0xbt 0x7ft 0x0t 0x0t 0x0t 0x0t
        0x45t 0x6t 0xbt 0x7ft 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/GridSettingsFragment;Landroid/view/View;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/GridSettingsFragment;->getHeaderFromView(Landroid/view/View;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/GridSettingsFragment;)Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/GridSettingsFragment;->mOnGridItemSelectedListener:Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;

    return-object v0
.end method

.method private getHeaderFromView(Landroid/view/View;)Landroid/preference/PreferenceActivity$Header;
    .locals 5
    .parameter "v"

    .prologue
    .line 202
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/GridSettingsFragment;->mHeaderGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 203
    iget-object v4, p0, Lcom/android/settings/GridSettingsFragment;->mHeaderGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;

    .line 204
    .local v0, group:Lcom/android/settings/GridSettingsFragment$HeaderGroup;
    invoke-virtual {v0}, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->getViewList()Ljava/util/ArrayList;

    move-result-object v3

    .line 205
    .local v3, viewlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 206
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->getHeaderList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    .line 211
    .end local v0           #group:Lcom/android/settings/GridSettingsFragment$HeaderGroup;
    .end local v2           #j:I
    .end local v3           #viewlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_2
    return-object v4

    .line 205
    .restart local v0       #group:Lcom/android/settings/GridSettingsFragment$HeaderGroup;
    .restart local v2       #j:I
    .restart local v3       #viewlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0           #group:Lcom/android/settings/GridSettingsFragment$HeaderGroup;
    .end local v2           #j:I
    .end local v3           #viewlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getNextCategoryIndex(ILjava/util/List;)I
    .locals 3
    .parameter "start"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 191
    .local p2, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move v1, p1

    .line 192
    .local v1, index:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 193
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 194
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    if-nez v2, :cond_1

    .line 198
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    :cond_0
    return v1

    .line 192
    .restart local v0       #header:Landroid/preference/PreferenceActivity$Header;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private removeLayoutTransition()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/GridSettingsFragment;->mGridarea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 143
    return-void
.end method

.method private setLayoutTransition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 136
    .local v1, transition:Landroid/animation/LayoutTransition;
    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    .line 137
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v1, v2, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 138
    iget-object v2, p0, Lcom/android/settings/GridSettingsFragment;->mGridarea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 139
    return-void
.end method


# virtual methods
.method public initHeaderList(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const-string v7, "GridSettingsFragment"

    const-string v8, "initHeaderList"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v7, "device_policy"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 110
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/settings/GridSettingsFragment;->mHeaderGroupList:Ljava/util/ArrayList;

    .line 112
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/settings/GridSettingsFragment;->mHeadersMap:Ljava/util/HashMap;

    .line 115
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 116
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    .line 118
    .local v2, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v7, p0, Lcom/android/settings/GridSettingsFragment;->mHeadersMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {v2}, Lcom/android/settings/HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v7

    if-nez v7, :cond_1

    .line 123
    add-int/lit8 v7, v3, 0x1

    invoke-direct {p0, v7, p2}, Lcom/android/settings/GridSettingsFragment;->getNextCategoryIndex(ILjava/util/List;)I

    move-result v5

    .line 124
    .local v5, next_category:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v6, sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    add-int/lit8 v4, v3, 0x1

    .local v4, j:I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 126
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    :cond_0
    new-instance v1, Lcom/android/settings/GridSettingsFragment$HeaderGroup;

    invoke-direct {v1, p0, p1, v2, v6}, Lcom/android/settings/GridSettingsFragment$HeaderGroup;-><init>(Lcom/android/settings/GridSettingsFragment;Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)V

    .line 129
    .local v1, group:Lcom/android/settings/GridSettingsFragment$HeaderGroup;
    iget-object v7, p0, Lcom/android/settings/GridSettingsFragment;->mHeaderGroupList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v1           #group:Lcom/android/settings/GridSettingsFragment$HeaderGroup;
    .end local v4           #j:I
    .end local v5           #next_category:I
    .end local v6           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v2           #header:Landroid/preference/PreferenceActivity$Header;
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/GridSettingsFragment;->mHeaderGroupList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 101
    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/GridSettingsFragment;->initHeaderList(Landroid/content/Context;Ljava/util/List;)V

    .line 103
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isFavoriteList"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/GridSettingsFragment;->isFavoriteList:Z

    .line 63
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 69
    const-string v3, "GridSettingsFragment"

    const-string v4, "onCreateView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;

    iput-object v3, p0, Lcom/android/settings/GridSettingsFragment;->mOnGridItemSelectedListener:Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;

    .line 77
    :cond_0
    const v3, 0x7f0400a9

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b01e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/GridSettingsFragment;->mGridarea:Landroid/widget/LinearLayout;

    .line 80
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment;->mHeaderGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 81
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment;->mHeaderGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/GridSettingsFragment$HeaderGroup;

    .line 82
    .local v0, group:Lcom/android/settings/GridSettingsFragment$HeaderGroup;
    invoke-virtual {v0}, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->log()V

    .line 83
    iget-object v3, p0, Lcom/android/settings/GridSettingsFragment;->mGridarea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v3}, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->makeGridView(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v0           #group:Lcom/android/settings/GridSettingsFragment$HeaderGroup;
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/GridSettingsFragment;->mUpdateView:Z

    if-eqz v3, :cond_2

    .line 87
    iget v3, p0, Lcom/android/settings/GridSettingsFragment;->mDrawerType:I

    invoke-virtual {p0, v3}, Lcom/android/settings/GridSettingsFragment;->updateViewByType(I)V

    .line 88
    iput-boolean v5, p0, Lcom/android/settings/GridSettingsFragment;->mUpdateView:Z

    .line 94
    :goto_1
    return-object v2

    .line 90
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/GridSettingsFragment;->setLayoutTransition()V

    goto :goto_1
.end method

.method public updateViewByType(I)V
    .locals 8
    .parameter "type"

    .prologue
    .line 145
    iget-object v6, p0, Lcom/android/settings/GridSettingsFragment;->mGridarea:Landroid/widget/LinearLayout;

    if-nez v6, :cond_0

    .line 146
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/GridSettingsFragment;->mUpdateView:Z

    .line 147
    iput p1, p0, Lcom/android/settings/GridSettingsFragment;->mDrawerType:I

    .line 188
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/GridSettingsFragment;->removeLayoutTransition()V

    .line 151
    packed-switch p1, :pswitch_data_0

    .line 165
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/GridSettingsFragment;->mTypeSections:[J

    .line 168
    :goto_1
    iget-object v6, p0, Lcom/android/settings/GridSettingsFragment;->mTypeSections:[J

    if-nez v6, :cond_1

    .line 169
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v6, p0, Lcom/android/settings/GridSettingsFragment;->mHeaderGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 170
    iget-object v6, p0, Lcom/android/settings/GridSettingsFragment;->mHeaderGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/GridSettingsFragment$HeaderGroup;

    .line 171
    .local v2, group:Lcom/android/settings/GridSettingsFragment$HeaderGroup;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->setVisibility(I)V

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 153
    .end local v2           #group:Lcom/android/settings/GridSettingsFragment$HeaderGroup;
    .end local v3           #i:I
    :pswitch_0
    iget-object v6, p0, Lcom/android/settings/GridSettingsFragment;->type_connections_sections:[J

    iput-object v6, p0, Lcom/android/settings/GridSettingsFragment;->mTypeSections:[J

    goto :goto_1

    .line 156
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/GridSettingsFragment;->type_device_sections:[J

    iput-object v6, p0, Lcom/android/settings/GridSettingsFragment;->mTypeSections:[J

    goto :goto_1

    .line 159
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings/GridSettingsFragment;->type_controls_sections:[J

    iput-object v6, p0, Lcom/android/settings/GridSettingsFragment;->mTypeSections:[J

    goto :goto_1

    .line 162
    :pswitch_3
    iget-object v6, p0, Lcom/android/settings/GridSettingsFragment;->type_general_sections:[J

    iput-object v6, p0, Lcom/android/settings/GridSettingsFragment;->mTypeSections:[J

    goto :goto_1

    .line 174
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    iget-object v6, p0, Lcom/android/settings/GridSettingsFragment;->mHeaderGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 175
    iget-object v6, p0, Lcom/android/settings/GridSettingsFragment;->mHeaderGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/GridSettingsFragment$HeaderGroup;

    .line 176
    .restart local v2       #group:Lcom/android/settings/GridSettingsFragment$HeaderGroup;
    invoke-virtual {v2}, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->getCategoryHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v6

    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 177
    .local v0, category_id:J
    const/16 v5, 0x8

    .line 178
    .local v5, mode:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_4
    iget-object v6, p0, Lcom/android/settings/GridSettingsFragment;->mTypeSections:[J

    array-length v6, v6

    if-ge v4, v6, :cond_2

    .line 179
    iget-object v6, p0, Lcom/android/settings/GridSettingsFragment;->mTypeSections:[J

    aget-wide v6, v6, v4

    cmp-long v6, v6, v0

    if-nez v6, :cond_3

    .line 180
    const/4 v5, 0x0

    .line 184
    :cond_2
    invoke-virtual {v2, v5}, Lcom/android/settings/GridSettingsFragment$HeaderGroup;->setVisibility(I)V

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 178
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 187
    .end local v0           #category_id:J
    .end local v2           #group:Lcom/android/settings/GridSettingsFragment$HeaderGroup;
    .end local v4           #j:I
    .end local v5           #mode:I
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/GridSettingsFragment;->setLayoutTransition()V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
