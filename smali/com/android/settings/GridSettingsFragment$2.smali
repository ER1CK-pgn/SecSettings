.class Lcom/android/settings/GridSettingsFragment$2;
.super Ljava/lang/Object;
.source "GridSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings/GridSettingsFragment$2;->this$0:Lcom/android/settings/GridSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 229
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 239
    :goto_0
    return v3

    .line 231
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/android/settings/GridSettingsFragment$2;->this$0:Lcom/android/settings/GridSettingsFragment;

    #calls: Lcom/android/settings/GridSettingsFragment;->getHeaderFromView(Landroid/view/View;)Landroid/preference/PreferenceActivity$Header;
    invoke-static {v2, p1}, Lcom/android/settings/GridSettingsFragment;->access$000(Lcom/android/settings/GridSettingsFragment;Landroid/view/View;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 234
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v2, p0, Lcom/android/settings/GridSettingsFragment$2;->this$0:Lcom/android/settings/GridSettingsFragment;

    iget-object v2, v2, Lcom/android/settings/GridSettingsFragment;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 235
    .local v1, position:I
    iget-object v2, p0, Lcom/android/settings/GridSettingsFragment$2;->this$0:Lcom/android/settings/GridSettingsFragment;

    #getter for: Lcom/android/settings/GridSettingsFragment;->mOnGridItemSelectedListener:Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;
    invoke-static {v2}, Lcom/android/settings/GridSettingsFragment;->access$100(Lcom/android/settings/GridSettingsFragment;)Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/android/settings/GridSettingsFragment$2;->this$0:Lcom/android/settings/GridSettingsFragment;

    #getter for: Lcom/android/settings/GridSettingsFragment;->mOnGridItemSelectedListener:Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;
    invoke-static {v2}, Lcom/android/settings/GridSettingsFragment;->access$100(Lcom/android/settings/GridSettingsFragment;)Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;->onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V

    .line 238
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method
