.class public Lcom/android/settings/easymode/EasyMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EasyMode.java"


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method initswitchBtn()V
    .locals 8

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 52
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/easymode/EasyMode;->mActionBarSwitch:Landroid/widget/Switch;

    .line 54
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 56
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 57
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 62
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/easymode/EasyMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 63
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyMode;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/easymode/EasyMode;->mActionBarLayout:Landroid/view/View;

    .line 72
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v3, Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v4, p0, Lcom/android/settings/easymode/EasyMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/easymode/EasyMode;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    .line 74
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040089

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, newView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyMode;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 82
    .local v2, rootView:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 83
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 35
    const v1, 0x7f040089

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyMode;->initswitchBtn()V

    .line 37
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 47
    iget-object v0, p0, Lcom/android/settings/easymode/EasyMode;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/easymode/EasyModeEnabler;->pause()V

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 42
    iget-object v0, p0, Lcom/android/settings/easymode/EasyMode;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/easymode/EasyModeEnabler;->resume()V

    .line 43
    return-void
.end method
