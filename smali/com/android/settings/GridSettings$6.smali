.class Lcom/android/settings/GridSettings$6;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
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
    .line 1508
    iput-object p1, p0, Lcom/android/settings/GridSettings$6;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "index"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, -0x1

    .line 1512
    long-to-int v0, p4

    packed-switch v0, :pswitch_data_0

    .line 1537
    :goto_0
    :pswitch_0
    return-void

    .line 1518
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/GridSettings$6;->this$0:Lcom/android/settings/GridSettings;

    iget-object v0, p0, Lcom/android/settings/GridSettings$6;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mGlanceBatteryLowHeaders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/GridSettings;->access$400(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 1525
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/GridSettings$6;->this$0:Lcom/android/settings/GridSettings;

    iget-object v0, p0, Lcom/android/settings/GridSettings$6;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mGlanceLowMemoryHeaders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/GridSettings;->access$500(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 1532
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/GridSettings$6;->this$0:Lcom/android/settings/GridSettings;

    iget-object v0, p0, Lcom/android/settings/GridSettings$6;->this$0:Lcom/android/settings/GridSettings;

    #getter for: Lcom/android/settings/GridSettings;->mGlanceRoamingHeaders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/GridSettings;->access$600(Lcom/android/settings/GridSettings;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 1512
    :pswitch_data_0
    .packed-switch 0x7f0b0644
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
