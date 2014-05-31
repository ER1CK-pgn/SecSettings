.class public Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DirectAccessFragment.java"


# instance fields
.field private final ACCESSIBILITY_PREF:Ljava/lang/String;

.field private final ACCESS_CONTROL_PREF:Ljava/lang/String;

.field private final DIRECT_ACCES_CATEGORY:Ljava/lang/String;

.field private final NEGATIVE_PREF:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TALKBACK_PREF:Ljava/lang/String;

.field private mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

.field private mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mDirectAccessCategory:Landroid/preference/PreferenceCategory;

.field private mDirectAccessEnabler:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

.field private mDirectAccessObserver:Landroid/database/ContentObserver;

.field private mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

.field private mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 29
    const-string v0, "DirectAccessFragment"

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "direct_access_category"

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->DIRECT_ACCES_CATEGORY:Ljava/lang/String;

    .line 33
    const-string v0, "direct_accessibility"

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->ACCESSIBILITY_PREF:Ljava/lang/String;

    .line 34
    const-string v0, "direct_talkback"

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->TALKBACK_PREF:Ljava/lang/String;

    .line 35
    const-string v0, "direct_negative"

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->NEGATIVE_PREF:Ljava/lang/String;

    .line 36
    const-string v0, "direct_accesscontrol"

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->ACCESS_CONTROL_PREF:Ljava/lang/String;

    .line 50
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

    .line 196
    const-string v0, "direct_access_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    .line 198
    const-string v0, "direct_accessibility"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    .line 199
    const-string v0, "direct_talkback"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    .line 200
    const-string v0, "direct_negative"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    .line 201
    const-string v0, "direct_accesscontrol"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_accessibility"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_talkback"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 215
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_negative"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 227
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 232
    :goto_4
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_3

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public initSwitch()V
    .locals 7

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 174
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 176
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 179
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 180
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 182
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 187
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarLayout:Landroid/view/View;

    .line 188
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->requestFocus()Z

    .line 191
    .end local v1           #padding:I
    :cond_0
    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v2, v0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    .line 193
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/high16 v0, 0x7f07

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09095f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->initSwitch()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->init()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessMenu()V

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 150
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 151
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_accessibility"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_talkback"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_negative"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_access_control"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 124
    .local v0, isDANotCheck:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_access"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 127
    .local v1, state:Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_access"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090969

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 133
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->pause()V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 137
    return-void

    .end local v0           #isDANotCheck:Z
    .end local v1           #state:Z
    :cond_1
    move v0, v3

    .line 119
    goto :goto_0

    .restart local v0       #isDANotCheck:Z
    :cond_2
    move v1, v3

    .line 124
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "direct_accessibility"

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 156
    goto :goto_0

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "direct_talkback"

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 161
    :cond_4
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "direct_negative"

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 164
    :cond_6
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "direct_access_control"

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_accessibility"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_talkback"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 90
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_negative"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    .line 97
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 102
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 108
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessMenu()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->resume()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_3

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 145
    return-void
.end method

.method public updateDirectAccessMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "direct_access"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 238
    .local v1, state:I
    const/4 v0, 0x1

    .line 242
    .local v0, negativeColorCheck:Z
    if-nez v1, :cond_2

    .line 243
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 245
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 246
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 247
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 248
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 267
    :goto_0
    if-nez v0, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    :cond_1
    return-void

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 252
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilityCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 253
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 255
    if-nez v0, :cond_3

    .line 256
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 261
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    .line 262
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 258
    :cond_3
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 264
    :cond_4
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
