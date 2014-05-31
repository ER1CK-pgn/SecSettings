.class Lcom/android/settings/favorite/FavoriteMenuList$1;
.super Ljava/lang/Object;
.source "FavoriteMenuList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/favorite/FavoriteMenuList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/favorite/FavoriteMenuList;


# direct methods
.method constructor <init>(Lcom/android/settings/favorite/FavoriteMenuList;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/favorite/FavoriteMenuList$1;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 151
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$1;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    #getter for: Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;
    invoke-static {v0}, Lcom/android/settings/favorite/FavoriteMenuList;->access$000(Lcom/android/settings/favorite/FavoriteMenuList;)Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$1;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    #getter for: Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;
    invoke-static {v0}, Lcom/android/settings/favorite/FavoriteMenuList;->access$000(Lcom/android/settings/favorite/FavoriteMenuList;)Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->notifyDataSetChanged()V

    .line 153
    return-void
.end method
