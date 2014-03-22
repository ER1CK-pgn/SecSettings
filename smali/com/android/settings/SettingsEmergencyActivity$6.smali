.class Lcom/android/settings/SettingsEmergencyActivity$6;
.super Ljava/lang/Object;
.source "SettingsEmergencyActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsEmergencyActivity;->showGlanceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsEmergencyActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsEmergencyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2107
    iput-object p1, p0, Lcom/android/settings/SettingsEmergencyActivity$6;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2125
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2120
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$6;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #getter for: Lcom/android/settings/SettingsEmergencyActivity;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencyActivity;->access$1900(Lcom/android/settings/SettingsEmergencyActivity;)Lcom/android/settings/glance/GlanceCardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/glance/GlanceCardAdapter;->setPreviewIndex(I)V

    .line 2112
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$6;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #getter for: Lcom/android/settings/SettingsEmergencyActivity;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencyActivity;->access$2000(Lcom/android/settings/SettingsEmergencyActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2113
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$6;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #getter for: Lcom/android/settings/SettingsEmergencyActivity;->mGlanceListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencyActivity;->access$2100(Lcom/android/settings/SettingsEmergencyActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$6;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #getter for: Lcom/android/settings/SettingsEmergencyActivity;->mGlanceListAdapter:Lcom/android/settings/glance/GlanceCardAdapter;
    invoke-static {v1}, Lcom/android/settings/SettingsEmergencyActivity;->access$1900(Lcom/android/settings/SettingsEmergencyActivity;)Lcom/android/settings/glance/GlanceCardAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2114
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$6;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #getter for: Lcom/android/settings/SettingsEmergencyActivity;->mGlancePreviewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencyActivity;->access$2000(Lcom/android/settings/SettingsEmergencyActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2115
    return-void
.end method
