.class public Lcom/android/settings/DrawerManager;
.super Ljava/lang/Object;
.source "DrawerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DrawerManager$DrawerItemClickListener;,
        Lcom/android/settings/DrawerManager$OnDrawerCallback;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/android/settings/DrawerManager$OnDrawerCallback;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerList:Landroid/widget/ListView;

.field private mDrawerTitle:[Ljava/lang/String;

.field private mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7
    .parameter "c"
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/settings/DrawerManager;->mActivity:Landroid/app/Activity;

    move-object v0, p1

    .line 38
    check-cast v0, Lcom/android/settings/DrawerManager$OnDrawerCallback;

    iput-object v0, p0, Lcom/android/settings/DrawerManager;->mCallback:Lcom/android/settings/DrawerManager$OnDrawerCallback;

    .line 39
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerTitle:[Ljava/lang/String;

    .line 40
    const v0, 0x7f0b0022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 41
    const v0, 0x7f0b0025

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerList:Landroid/widget/ListView;

    .line 43
    iget-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f0200a1

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    .line 44
    iget-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerList:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f040085

    iget-object v3, p0, Lcom/android/settings/DrawerManager;->mDrawerTitle:[Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/DrawerManager$DrawerItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/DrawerManager$DrawerItemClickListener;-><init>(Lcom/android/settings/DrawerManager;Lcom/android/settings/DrawerManager$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 50
    new-instance v0, Lcom/android/settings/DrawerManager$1;

    iget-object v3, p0, Lcom/android/settings/DrawerManager;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f0201bc

    const v5, 0x7f090020

    const v6, 0x7f090021

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/DrawerManager$1;-><init>(Lcom/android/settings/DrawerManager;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 65
    iget-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/android/settings/DrawerManager;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DrawerManager;)Lcom/android/settings/DrawerManager$OnDrawerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings/DrawerManager;->mCallback:Lcom/android/settings/DrawerManager$OnDrawerCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DrawerManager;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings/DrawerManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    .line 107
    const/4 v0, -0x1

    .line 108
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/settings/DrawerManager;->mDrawerList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/settings/DrawerManager;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    .line 111
    :cond_0
    return v0
.end method

.method public isDrawerOpen()Z
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, drawerOpen:Z
    iget-object v1, p0, Lcom/android/settings/DrawerManager;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/settings/DrawerManager;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/android/settings/DrawerManager;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    .line 83
    :cond_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/settings/DrawerManager;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DrawerManager;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :cond_0
    return v0
.end method

.method public openDrawer()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/android/settings/DrawerManager;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public selectItem(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 70
    const-string v0, "jjh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DrawerManager;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/android/settings/DrawerManager;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public syncState()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/DrawerManager;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 98
    :cond_0
    return-void
.end method
