.class public abstract Lcom/android/settings/location/LocationSettingsBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationSettingsBase.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/SettingsPreferenceFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field lastMode:I

.field private mActive:Z

.field private mCurrentMode:I

.field protected mLocationPolicy:Landroid/app/enterprise/LocationPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/location/LocationSettingsBase;->lastMode:I

    return-void
.end method

.method private isRestricted()Z
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 109
    .local v0, um:Landroid/os/UserManager;
    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 84
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 89
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 246
    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    .line 252
    :goto_0
    return-object v0

    .line 248
    :pswitch_0
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "(name=?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "location_mode"

    aput-object v7, v5, v6

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode()V

    .line 259
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/location/LocationSettingsBase;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public abstract onModeChanged(IZ)V
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    .line 102
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettingsBase;->updateVerizonProvider(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public refreshLocationMode()V
    .locals 4

    .prologue
    .line 136
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, mode:I
    iput v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mCurrentMode:I

    .line 140
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 142
    .end local v0           #mode:I
    :cond_0
    return-void
.end method

.method public setLocationMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    const-string v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "LocationSettingsBase"

    const-string v2, "Restricted user, not setting location mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 121
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    if-eqz v1, :cond_1

    .line 122
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/location/LocationSettingsBase;->onModeChanged(IZ)V

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/settings/location/LocationSettingsBase;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string v1, "NEW_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettingsBase;->updateVerizonProvider(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode()V

    goto :goto_0
.end method

.method public showUSCLocationConsentDialog(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 146
    const-string v6, "USC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    const-string v6, "dps_do_not_show_pref"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 148
    .local v4, pref:Landroid/content/SharedPreferences;
    const-string v6, "show_again"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 151
    .local v5, show:Z
    if-eqz v5, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, p1

    :goto_0
    check-cast v6, Landroid/app/Activity;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 158
    .local v3, layoutInflator:Landroid/view/LayoutInflater;
    const v6, 0x7f04000f

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, alertDialogLayout:Landroid/view/View;
    const v6, 0x7f0b002c

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 162
    .local v2, cb:Landroid/widget/CheckBox;
    new-instance v6, Lcom/android/settings/location/LocationSettingsBase$1;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/location/LocationSettingsBase$1;-><init>(Lcom/android/settings/location/LocationSettingsBase;Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0913e5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09121d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/settings/location/LocationSettingsBase$4;

    invoke-direct {v8, p0, p2}, Lcom/android/settings/location/LocationSettingsBase$4;-><init>(Lcom/android/settings/location/LocationSettingsBase;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090198

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/settings/location/LocationSettingsBase$3;

    invoke-direct {v8, p0, p2}, Lcom/android/settings/location/LocationSettingsBase$3;-><init>(Lcom/android/settings/location/LocationSettingsBase;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/location/LocationSettingsBase$2;

    invoke-direct {v7, p0, p2}, Lcom/android/settings/location/LocationSettingsBase$2;-><init>(Lcom/android/settings/location/LocationSettingsBase;I)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 200
    .end local v0           #alertDialogLayout:Landroid/view/View;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #cb:Landroid/widget/CheckBox;
    .end local v3           #layoutInflator:Landroid/view/LayoutInflater;
    .end local v4           #pref:Landroid/content/SharedPreferences;
    .end local v5           #show:Z
    :cond_0
    return-void

    .line 157
    .restart local v4       #pref:Landroid/content/SharedPreferences;
    .restart local v5       #show:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    goto :goto_0
.end method

.method public updateVerizonProvider(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 242
    return-void
.end method
