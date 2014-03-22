.class Lcom/android/settings/DrawerManager$DrawerItemClickListener;
.super Ljava/lang/Object;
.source "DrawerManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DrawerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DrawerManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/DrawerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/settings/DrawerManager$DrawerItemClickListener;->this$0:Lcom/android/settings/DrawerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/DrawerManager;Lcom/android/settings/DrawerManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/DrawerManager$DrawerItemClickListener;-><init>(Lcom/android/settings/DrawerManager;)V

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
    .line 31
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/DrawerManager$DrawerItemClickListener;->this$0:Lcom/android/settings/DrawerManager;

    invoke-virtual {v0, p3}, Lcom/android/settings/DrawerManager;->selectItem(I)V

    .line 32
    iget-object v0, p0, Lcom/android/settings/DrawerManager$DrawerItemClickListener;->this$0:Lcom/android/settings/DrawerManager;

    #getter for: Lcom/android/settings/DrawerManager;->mCallback:Lcom/android/settings/DrawerManager$OnDrawerCallback;
    invoke-static {v0}, Lcom/android/settings/DrawerManager;->access$000(Lcom/android/settings/DrawerManager;)Lcom/android/settings/DrawerManager$OnDrawerCallback;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/android/settings/DrawerManager$OnDrawerCallback;->onSelectedItem(I)V

    .line 33
    return-void
.end method
