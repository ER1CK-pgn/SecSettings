.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 563
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 564
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "location_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 566
    .local v0, currentLocationMode:I
    packed-switch v0, :pswitch_data_0

    .line 572
    :pswitch_0
    const/4 v2, 0x1

    :pswitch_1
    return v2

    .line 566
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 555
    const v0, 0x7f0909d8

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 553
    const v0, 0x7f0b04ed

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 557
    if-eqz p1, :cond_0

    const v0, 0x7f02018d

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02018c

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 552
    const v0, 0x7f0b04ec

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 554
    const v0, 0x7f0b04ee

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "unused"

    .prologue
    .line 579
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 580
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 584
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 585
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;Landroid/content/Context;Landroid/content/ContentResolver;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 623
    return-void
.end method
