.class Lcom/android/settings/DrawerManager$1;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "DrawerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DrawerManager;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DrawerManager;


# direct methods
.method constructor <init>(Lcom/android/settings/DrawerManager;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/DrawerManager$1;->this$0:Lcom/android/settings/DrawerManager;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/DrawerManager$1;->this$0:Lcom/android/settings/DrawerManager;

    #getter for: Lcom/android/settings/DrawerManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/DrawerManager;->access$200(Lcom/android/settings/DrawerManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 59
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .parameter "drawerView"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/DrawerManager$1;->this$0:Lcom/android/settings/DrawerManager;

    #getter for: Lcom/android/settings/DrawerManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/DrawerManager;->access$200(Lcom/android/settings/DrawerManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 63
    return-void
.end method
