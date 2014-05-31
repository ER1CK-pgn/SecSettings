.class Lcom/android/settings/GridSettingsFragment$1;
.super Ljava/lang/Object;
.source "GridSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 214
    iput-object p1, p0, Lcom/android/settings/GridSettingsFragment$1;->this$0:Lcom/android/settings/GridSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/settings/GridSettingsFragment$1;->this$0:Lcom/android/settings/GridSettingsFragment;

    #calls: Lcom/android/settings/GridSettingsFragment;->getHeaderFromView(Landroid/view/View;)Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1, p1}, Lcom/android/settings/GridSettingsFragment;->access$000(Lcom/android/settings/GridSettingsFragment;Landroid/view/View;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 217
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v1, p0, Lcom/android/settings/GridSettingsFragment$1;->this$0:Lcom/android/settings/GridSettingsFragment;

    #getter for: Lcom/android/settings/GridSettingsFragment;->mOnGridItemSelectedListener:Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;
    invoke-static {v1}, Lcom/android/settings/GridSettingsFragment;->access$100(Lcom/android/settings/GridSettingsFragment;)Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/settings/GridSettingsFragment$1;->this$0:Lcom/android/settings/GridSettingsFragment;

    #getter for: Lcom/android/settings/GridSettingsFragment;->mOnGridItemSelectedListener:Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;
    invoke-static {v1}, Lcom/android/settings/GridSettingsFragment;->access$100(Lcom/android/settings/GridSettingsFragment;)Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/settings/GridSettingsFragment$OnGridItemSelectedListener;->onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V

    .line 220
    :cond_0
    return-void
.end method
