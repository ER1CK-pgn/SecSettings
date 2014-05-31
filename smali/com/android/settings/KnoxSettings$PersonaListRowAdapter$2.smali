.class Lcom/android/settings/KnoxSettings$PersonaListRowAdapter$2;
.super Ljava/lang/Object;
.source "KnoxSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter$2;->this$1:Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;

    iput p2, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter$2;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter$2;->this$1:Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;

    iget v1, p0, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter$2;->val$position:I

    #calls: Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->doButtonOneClickActions(I)V
    invoke-static {v0, v1}, Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;->access$000(Lcom/android/settings/KnoxSettings$PersonaListRowAdapter;I)V

    .line 240
    return-void
.end method
