.class Lcom/android/settings/motion2014/MotionSettings2014$3;
.super Ljava/lang/Object;
.source "MotionSettings2014.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/MotionSettings2014;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/MotionSettings2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/MotionSettings2014;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionSettings2014$3;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 267
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 268
    packed-switch p2, :pswitch_data_0

    .line 282
    :cond_0
    :goto_0
    return v2

    .line 271
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014$3;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v4}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014$3;->this$0:Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v5}, Lcom/android/settings/motion2014/MotionSettings2014;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, item:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 273
    const-string v3, "AirMotionSettings"

    const-string v4, "dispatchKeyEvent item is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_1
    instance-of v4, v0, Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 277
    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    .line 278
    .local v1, preference:Landroid/preference/SwitchPreferenceScreen;
    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->performClick()V

    move v2, v3

    .line 279
    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
