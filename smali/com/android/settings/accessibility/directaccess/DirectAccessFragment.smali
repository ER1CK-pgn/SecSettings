.class public Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DirectAccessFragment.java"


# instance fields
.field private final ACCESSIBILITY_PREF:Ljava/lang/String;

.field private final ACCESS_CONTROL_PREF:Ljava/lang/String;

.field private final DIRECT_ACCESS_SCREEN:Ljava/lang/String;

.field private final NEGATIVE_PREF:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TALKBACK_PREF:Ljava/lang/String;

.field private mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

.field private mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mDirectAccessEnabler:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

.field private mDirectAccessObserver:Landroid/database/ContentObserver;

.field private mDirectAccessScreen:Landroid/preference/PreferenceScreen;

.field private mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

.field private mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 22
    const-string v0, "DirectAccessFragment"

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "direct_access_screen"

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->DIRECT_ACCESS_SCREEN:Ljava/lang/String;

    .line 26
    const-string v0, "direct_accessibility"

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->ACCESSIBILITY_PREF:Ljava/lang/String;

    .line 27
    const-string v0, "direct_talkback"

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->TALKBACK_PREF:Ljava/lang/String;

    .line 28
    const-string v0, "direct_negative"

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->NEGATIVE_PREF:Ljava/lang/String;

    .line 29
    const-string v0, "direct_accesscontrol"

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->ACCESS_CONTROL_PREF:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$1;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    const-string v0, "direct_access_screen"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessScreen:Landroid/preference/PreferenceScreen;

    .line 147
    const-string v0, "direct_accessibility"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    .line 148
    const-string v0, "direct_talkback"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    .line 149
    const-string v0, "direct_negative"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    .line 150
    const-string v0, "direct_accesscontrol"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_accessibility"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_talkback"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 164
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_negative"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 170
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    const-string v0, "DirectAccess"

    const-string v1, "access control checkbox removed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_3
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access_control"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3
.end method

.method public initSwitch()V
    .locals 7

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 122
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 123
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 125
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 128
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 129
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 131
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 136
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarLayout:Landroid/view/View;

    .line 137
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 140
    .end local v1           #padding:I
    :cond_0
    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v2, v0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/high16 v0, 0x7f07

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09092b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->initSwitch()V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->init()V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessMenu()V

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 101
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->pause()V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 86
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 87
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "direct_accessibility"

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "direct_talkback"

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 111
    :cond_4
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "direct_negative"

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 114
    :cond_6
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessMenu()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->resume()V

    .line 73
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 95
    return-void
.end method

.method public updateDirectAccessMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "direct_access"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 186
    .local v0, state:I
    if-nez v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 189
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 190
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 191
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 192
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 196
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 198
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 199
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
