.class Lcom/android/settings/GridSettings$7;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings;->showGlanceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/android/settings/GridSettings$7;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1598
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1593
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/android/settings/GridSettings$7;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;
    invoke-static {v0}, Lcom/android/settings/GridSettings;->access$700(Lcom/android/settings/GridSettings;)Lcom/android/settings/glance/GlanceCardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/glance/GlanceCardAdapter;->setPreviewIndex(I)V

    .line 1585
    iget-object v0, p0, Lcom/android/settings/GridSettings$7;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/GridSettings;->access$800(Lcom/android/settings/GridSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1586
    iget-object v0, p0, Lcom/android/settings/GridSettings$7;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mGlanceListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GridSettings$7;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;
    invoke-static {v1}, Lcom/android/settings/GridSettings;->access$700(Lcom/android/settings/GridSettings;)Lcom/android/settings/glance/GlanceCardAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1587
    iget-object v0, p0, Lcom/android/settings/GridSettings$7;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/GridSettings;->access$800(Lcom/android/settings/GridSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 1588
    return-void
.end method
