.class Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$4;
.super Ljava/lang/Object;
.source "SettingsEmergencyActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;

.field final synthetic val$searchViewLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3493
    iput-object p1, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$4;->this$0:Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter;

    iput-object p2, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$4;->val$searchViewLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 3496
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$HeaderAdapter$4;->val$searchViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 3497
    const/4 v0, 0x0

    return v0
.end method
