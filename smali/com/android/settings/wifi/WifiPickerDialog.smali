.class public Lcom/android/settings/wifi/WifiPickerDialog;
.super Landroid/app/Activity;
.source "WifiPickerDialog.java"


# instance fields
.field private mLastOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    iget v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 179
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastOrientation:I

    .line 181
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f040219

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    const v1, 0x7f09031b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 83
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiPickerDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured from wifi_picker_dialog.xml, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 151
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 153
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 157
    :cond_0
    return-void
.end method
