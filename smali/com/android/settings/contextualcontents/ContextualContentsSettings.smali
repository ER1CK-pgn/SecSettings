.class public Lcom/android/settings/contextualcontents/ContextualContentsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ContextualContentsSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mEnabler:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mPrefBrowser:Landroid/preference/CheckBoxPreference;

.field private mPrefEmail:Landroid/preference/CheckBoxPreference;

.field private mPrefMessage:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/android/settings/contextualcontents/ContextualContentsSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/contextualcontents/ContextualContentsSettings$1;-><init>(Lcom/android/settings/contextualcontents/ContextualContentsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/contextualcontents/ContextualContentsSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/contextualcontents/ContextualContentsSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefMessage:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/contextualcontents/ContextualContentsSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefEmail:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/contextualcontents/ContextualContentsSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefBrowser:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 129
    if-eqz p2, :cond_0

    move v0, v1

    .line 130
    .local v0, v:I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_contents_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefBrowser:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, activity:Landroid/app/Activity;
    const v3, 0x7f07002e

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 66
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 67
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 68
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 69
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    :cond_0
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 72
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 75
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 80
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mActionBarLayout:Landroid/view/View;

    .line 83
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    new-instance v3, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    iget-object v4, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4}, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mEnabler:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    .line 87
    const-string v3, "contextual_contents_settings_message_enabled"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefMessage:Landroid/preference/CheckBoxPreference;

    .line 88
    const-string v3, "contextual_contents_settings_email_enabled"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefEmail:Landroid/preference/CheckBoxPreference;

    .line 89
    const-string v3, "contextual_contents_settings_browser_enabled"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefBrowser:Landroid/preference/CheckBoxPreference;

    .line 90
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mEnabler:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    invoke-virtual {v0}, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->pause()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 123
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 124
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    .local v0, value:I
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_contents_message_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    .end local v0           #value:I
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    move v0, v1

    .line 142
    goto :goto_0

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    iget-object v2, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    .restart local v0       #value:I
    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_contents_email_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v0           #value:I
    :cond_3
    move v0, v1

    .line 146
    goto :goto_2

    .line 149
    :cond_4
    iget-object v2, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefBrowser:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefBrowser:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 151
    .restart local v0       #value:I
    :goto_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_contents_browser_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v0           #value:I
    :cond_5
    move v0, v1

    .line 150
    goto :goto_3
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 94
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 95
    iget-object v5, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mEnabler:Lcom/android/settings/contextualcontents/ContextualContentsEnabler;

    invoke-virtual {v5}, Lcom/android/settings/contextualcontents/ContextualContentsEnabler;->resume()V

    .line 98
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "contextual_contents_message_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 100
    .local v2, csearch_message_enabled:Z
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "contextual_contents_email_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 102
    .local v1, csearch_email_enabled:Z
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "contextual_contents_browser_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 105
    .local v0, csearch_browser_enabled:Z
    :goto_2
    iget-object v5, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 106
    iget-object v5, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 107
    iget-object v5, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefBrowser:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 109
    iget-object v5, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    iget-object v5, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 111
    iget-object v5, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 112
    iget-object v5, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mPrefBrowser:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_contents_enabled"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/contextualcontents/ContextualContentsSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    return-void

    .end local v0           #csearch_browser_enabled:Z
    .end local v1           #csearch_email_enabled:Z
    .end local v2           #csearch_message_enabled:Z
    :cond_1
    move v2, v4

    .line 98
    goto :goto_0

    .restart local v2       #csearch_message_enabled:Z
    :cond_2
    move v1, v4

    .line 100
    goto :goto_1

    .restart local v1       #csearch_email_enabled:Z
    :cond_3
    move v0, v4

    .line 102
    goto :goto_2
.end method
