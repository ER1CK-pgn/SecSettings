.class Lcom/android/settings/Settings$7;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/Settings;->showGlanceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 2241
    iput-object p1, p0, Lcom/android/settings/Settings$7;->this$0:Lcom/android/settings/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2259
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2254
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/android/settings/Settings$7;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;
    invoke-static {v0}, Lcom/android/settings/Settings;->access$1900(Lcom/android/settings/Settings;)Lcom/android/settings/glance/GlanceCardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/glance/GlanceCardAdapter;->setPreviewIndex(I)V

    .line 2246
    iget-object v0, p0, Lcom/android/settings/Settings$7;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/Settings;->access$2000(Lcom/android/settings/Settings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2247
    iget-object v0, p0, Lcom/android/settings/Settings$7;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mGlanceListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/Settings;->access$2100(Lcom/android/settings/Settings;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Settings$7;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;
    invoke-static {v1}, Lcom/android/settings/Settings;->access$1900(Lcom/android/settings/Settings;)Lcom/android/settings/glance/GlanceCardAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2248
    iget-object v0, p0, Lcom/android/settings/Settings$7;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/Settings;->access$2000(Lcom/android/settings/Settings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2249
    return-void
.end method
