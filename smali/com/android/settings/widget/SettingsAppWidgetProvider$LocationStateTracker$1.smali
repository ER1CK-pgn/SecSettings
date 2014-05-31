.class Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;Landroid/content/Context;Landroid/content/ContentResolver;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    iput-boolean p4, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 597
    iget-object v5, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 599
    .local v2, um:Landroid/os/UserManager;
    const-string v5, "no_share_location"

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 600
    iget-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v5, "location_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 602
    .local v0, currentMode:I
    const/4 v1, 0x3

    .line 603
    .local v1, mode:I
    packed-switch v0, :pswitch_data_0

    .line 617
    :goto_0
    iget-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v4, "location_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 618
    iget-boolean v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$desiredState:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 621
    .end local v0           #currentMode:I
    .end local v1           #mode:I
    :goto_1
    return-object v3

    .line 605
    .restart local v0       #currentMode:I
    .restart local v1       #mode:I
    :pswitch_0
    const/4 v1, 0x2

    .line 606
    goto :goto_0

    .line 608
    :pswitch_1
    const/4 v1, 0x3

    .line 609
    goto :goto_0

    .line 611
    :pswitch_2
    const/4 v1, 0x0

    .line 612
    goto :goto_0

    .line 614
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 621
    .end local v0           #currentMode:I
    .end local v1           #mode:I
    :cond_0
    iget-object v5, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iget-object v6, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    .line 603
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 594
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 626
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 629
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 630
    return-void

    .line 626
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 594
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
