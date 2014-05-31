.class public Lcom/android/settings/MultiWindowSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MultiWindowSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mAccessControlObserver:Landroid/database/ContentObserver;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContext:Landroid/content/Context;

.field private mMultiWindowEnable:Lcom/android/settings/MultiWindowEnabler;

.field private final mMultiWindowObserver:Landroid/database/ContentObserver;

.field private mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 42
    new-instance v0, Lcom/android/settings/MultiWindowSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MultiWindowSettings$1;-><init>(Lcom/android/settings/MultiWindowSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mMultiWindowObserver:Landroid/database/ContentObserver;

    .line 50
    new-instance v0, Lcom/android/settings/MultiWindowSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MultiWindowSettings$2;-><init>(Lcom/android/settings/MultiWindowSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MultiWindowSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MultiWindowSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 80
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 81
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 82
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 85
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 86
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarLayout:Landroid/view/View;

    .line 97
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    new-instance v3, Lcom/android/settings/MultiWindowEnabler;

    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4}, Lcom/android/settings/MultiWindowEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mMultiWindowEnable:Lcom/android/settings/MultiWindowEnabler;

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mContext:Landroid/content/Context;

    .line 70
    const v0, 0x7f070079

    invoke-virtual {p0, v0}, Lcom/android/settings/MultiWindowSettings;->addPreferencesFromResource(I)V

    .line 72
    const-string v0, "open_multi_window_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/MultiWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    .line 73
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mMultiWindowEnable:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowEnabler;->pause()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MultiWindowSettings;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MultiWindowSettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 139
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 140
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 152
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_1

    .line 154
    sget v4, Lcom/android/settings/MultiWindowSettings;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 155
    sget v4, Lcom/android/settings/MultiWindowSettings;->mSettingValue:I

    if-ne v4, v2, :cond_3

    move v1, v2

    .local v1, value:Z
    :goto_0
    move-object v0, p2

    .line 156
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 157
    .local v0, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v1           #value:Z
    :cond_1
    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "open_multi_window_view"

    iget-object v6, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_3
    move v1, v3

    .line 155
    goto :goto_0

    :cond_4
    move v2, v3

    .line 164
    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 107
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mMultiWindowEnable:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v3}, Lcom/android/settings/MultiWindowEnabler;->resume()V

    .line 108
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "open_multi_window_view"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 113
    .local v0, checked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/MultiWindowSettings;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "access_control_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 123
    :cond_1
    return-void

    .end local v0           #checked:Z
    :cond_2
    move v0, v2

    .line 112
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/MultiWindowSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 131
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 132
    return-void
.end method
