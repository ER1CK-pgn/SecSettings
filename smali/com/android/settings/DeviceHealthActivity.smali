.class public Lcom/android/settings/DeviceHealthActivity;
.super Landroid/preference/PreferenceActivity;
.source "DeviceHealthActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBackStackCount:I

.field private mFragmentApps:Landroid/app/Fragment;

.field private mFragmentBattery:Landroid/app/Fragment;

.field private mFragmentData:Landroid/app/Fragment;

.field private mIsHomeEnabled:Z

.field private mIsHomeEnabledInMain:Z

.field private mSelectedTab:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabledInMain:Z

    .line 46
    const-string v0, "tag_battery"

    iput-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    return-void
.end method

.method private findFragmentByTab(Landroid/app/ActionBar$Tab;)Landroid/app/Fragment;
    .locals 2
    .parameter "tab"

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f091787

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    .line 171
    :goto_0
    return-object v0

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f091788

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f091789

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    goto :goto_0

    .line 170
    :cond_2
    const-string v0, "Device Health"

    const-string v1, "Unknown tab selected! Using default tab."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    goto :goto_0
.end method

.method private hideActionTabs()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 213
    return-void
.end method

.method private setHomeEnabled(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    .line 221
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method private showActionTabs()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 217
    return-void
.end method

.method private updateActionBar()V
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    if-gtz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->showActionTabs()V

    .line 204
    iget-boolean v0, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabledInMain:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceHealthActivity;->setHomeEnabled(Z)V

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->hideActionTabs()V

    .line 207
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceHealthActivity;->setHomeEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 197
    iget v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    .line 199
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_ATT_Device_Health_Enabled"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_4

    .line 55
    const v4, 0x7f04006c

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceHealthActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    .line 57
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    const v5, 0x7f091786

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 58
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f091787

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 59
    .local v2, tabBattery:Landroid/app/ActionBar$Tab;
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f091788

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 60
    .local v1, tabApps:Landroid/app/ActionBar$Tab;
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f091789

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 62
    .local v3, tabData:Landroid/app/ActionBar$Tab;
    if-nez p1, :cond_0

    .line 63
    new-instance v4, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    .line 64
    new-instance v4, Lcom/android/settings/applications/ManageApplications;

    invoke-direct {v4}, Lcom/android/settings/applications/ManageApplications;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    .line 65
    new-instance v4, Lcom/android/settings/DataUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/DataUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, appsArg:Landroid/os/Bundle;
    const-string v4, "classname"

    const-string v5, ".RunningServices"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v4, "hidetabs"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    invoke-virtual {v4, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    iget-boolean v4, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabledInMain:Z

    iput-boolean v4, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    .line 74
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    .line 75
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v2, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 76
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v1, v7}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 77
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v3, v9}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 107
    .end local v0           #appsArg:Landroid/os/Bundle;
    .end local v1           #tabApps:Landroid/app/ActionBar$Tab;
    .end local v2           #tabBattery:Landroid/app/ActionBar$Tab;
    .end local v3           #tabData:Landroid/app/ActionBar$Tab;
    :goto_0
    return-void

    .line 80
    .restart local v1       #tabApps:Landroid/app/ActionBar$Tab;
    .restart local v2       #tabBattery:Landroid/app/ActionBar$Tab;
    .restart local v3       #tabData:Landroid/app/ActionBar$Tab;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tag_battery"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tag_apps"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tag_data"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    .line 84
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    .line 85
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    if-nez v4, :cond_2

    .line 86
    new-instance v4, Lcom/android/settings/applications/ManageApplications;

    invoke-direct {v4}, Lcom/android/settings/applications/ManageApplications;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .restart local v0       #appsArg:Landroid/os/Bundle;
    const-string v4, "classname"

    const-string v5, ".RunningServices"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v4, "hidetabs"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    invoke-virtual {v4, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    .end local v0           #appsArg:Landroid/os/Bundle;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/settings/DataUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/DataUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    .line 94
    :cond_3
    const-string v4, "is_home_enabled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    .line 95
    const-string v4, "selected_tab"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    .line 96
    const-string v4, "backstack_count"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    .line 97
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    .line 98
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    const-string v6, "tag_battery"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v2, v8, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 99
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    const-string v6, "tag_apps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v1, v7, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 100
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    const-string v6, "tag_data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v3, v9, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    goto/16 :goto_0

    .line 105
    .end local v1           #tabApps:Landroid/app/ActionBar$Tab;
    .end local v2           #tabBattery:Landroid/app/ActionBar$Tab;
    .end local v3           #tabData:Landroid/app/ActionBar$Tab;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 139
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->onBackPressed()V

    .line 140
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    const-string v0, "is_home_enabled"

    iget-boolean v1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    const-string v0, "selected_tab"

    iget-object v1, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "backstack_count"

    iget v1, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 149
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, tag:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f091787

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "tag_battery"

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f091788

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "tag_apps"

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f091789

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceHealthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "tag_data"

    .line 157
    :cond_2
    iput-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceHealthActivity;->findFragmentByTab(Landroid/app/ActionBar$Tab;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f0b0147

    invoke-direct {p0, p1}, Lcom/android/settings/DeviceHealthActivity;->findFragmentByTab(Landroid/app/ActionBar$Tab;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 159
    :cond_3
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 164
    return-void
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 3
    .parameter "fragmentClass"
    .parameter "args"
    .parameter "titleRes"
    .parameter "titleText"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    .line 178
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 179
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 180
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const v2, 0x7f0b0147

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 181
    if-eqz p3, :cond_1

    .line 182
    invoke-virtual {v1, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 186
    :cond_0
    :goto_0
    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 187
    const-string v2, ":android:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 188
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 189
    iget v2, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    .line 190
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    .line 191
    return-void

    .line 183
    :cond_1
    if-eqz p4, :cond_0

    .line 184
    invoke-virtual {v1, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method
