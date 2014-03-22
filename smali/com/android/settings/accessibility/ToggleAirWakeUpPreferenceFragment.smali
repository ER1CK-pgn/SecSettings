.class public Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;
.super Landroid/app/Fragment;
.source "ToggleAirWakeUpPreferenceFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private ctx:Landroid/content/Context;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 31
    const-string v0, "ToggleAirWakeUpPreferenceFragment"

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public initSwitch()V
    .locals 7

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 105
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 108
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 111
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 112
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 114
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    .line 120
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 122
    .end local v1           #padding:I
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    .line 94
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 95
    if-eqz p2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_wake_up"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 101
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_wake_up"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->initSwitch()V

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 48
    const v3, 0x7f040133

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, guideView:Landroid/view/View;
    const v3, 0x7f0b0336

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 50
    .local v2, mImgView:Landroid/widget/ImageView;
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    const v3, 0x7f02001d

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 53
    .local v0, frameAnim:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 56
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 89
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 90
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 75
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 63
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 68
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_wake_up"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 70
    return-void

    :cond_1
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 84
    return-void
.end method
