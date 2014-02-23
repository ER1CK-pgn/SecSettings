.class public Lcom/android/settings/motion2013/ArcMotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ArcMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mMessaging:Landroid/preference/SwitchPreferenceScreen;

.field private mMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

.field private mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRippleEffect:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->isGoIntoQuideHub:Z

    return-void
.end method

.method private broadcastArcMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.ARC_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method private broadcastArcMotionQuickGlanceChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.ARC_MOTION_QUICK_GLANCE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    return-void
.end method


# virtual methods
.method public isAllArcMotionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 221
    iget-object v6, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "arc_motion_ripple_effect"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 222
    .local v3, rippleEffect:I
    iget-object v6, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "arc_motion_quick_glance"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 223
    .local v2, quickGlance:I
    iget-object v6, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "arc_motion_music_playback"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 224
    .local v1, musicPlayback:I
    iget-object v6, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "arc_motion_messaging"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 226
    .local v0, messaging:I
    or-int v6, v3, v2

    or-int/2addr v6, v1

    or-int/2addr v6, v0

    if-ge v6, v4, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_arc_motion"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/ArcMotionSettings;->broadcastArcMotionChanged(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mMessaging:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 217
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/ArcMotionSettings;->setHasOptionsMenu(Z)V

    .line 66
    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/ArcMotionSettings;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActivity:Landroid/app/Activity;

    .line 69
    new-instance v1, Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 70
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 73
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 76
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 80
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 82
    .end local v0           #padding:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    const-string v1, "arc_motion_ripple_effect"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/ArcMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    .line 85
    const-string v1, "arc_motion_quick_glance"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/ArcMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    .line 86
    const-string v1, "arc_motion_music_playback"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/ArcMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    .line 87
    const-string v1, "arc_motion_messaging"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/ArcMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mMessaging:Landroid/preference/SwitchPreferenceScreen;

    .line 89
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mMessaging:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    const-string v1, "arc_motion_messaging"

    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/ArcMotionSettings;->removePreference(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    const v1, 0x7f090b0f

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020190

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 193
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 204
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 199
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "motion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 202
    const/4 v1, 0x1

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 137
    iget-boolean v0, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->isAllArcMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_arc_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090d95

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_arc_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/ArcMotionSettings;->broadcastArcMotionChanged(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 163
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 165
    .local v1, value:I
    :goto_0
    const-string v4, "arc_motion_ripple_effect"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "arc_motion_ripple_effect"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->isAllArcMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "master_arc_motion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    invoke-direct {p0, v3}, Lcom/android/settings/motion2013/ArcMotionSettings;->broadcastArcMotionChanged(Z)V

    .line 179
    iget-object v4, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 181
    :cond_1
    return v2

    .end local v1           #value:I
    :cond_2
    move v1, v3

    .line 164
    goto :goto_0

    .line 167
    .restart local v1       #value:I
    :cond_3
    const-string v4, "arc_motion_quick_glance"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "arc_motion_quick_glance"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    if-ne v1, v2, :cond_4

    move v4, v2

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/settings/motion2013/ArcMotionSettings;->broadcastArcMotionQuickGlanceChanged(Z)V

    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2

    .line 170
    :cond_5
    const-string v4, "arc_motion_music_playback"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "arc_motion_music_playback"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 172
    :cond_6
    const-string v4, "arc_motion_messaging"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "arc_motion_messaging"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->isGoIntoQuideHub:Z

    .line 159
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 102
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 103
    .local v1, super_mOpenDetailMenu:Z
    iput-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 107
    iput-boolean v4, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->isGoIntoQuideHub:Z

    .line 109
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 116
    iget-object v5, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "arc_motion_ripple_effect"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 117
    iget-object v5, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "arc_motion_quick_glance"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 118
    iget-object v5, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "arc_motion_music_playback"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 119
    iget-object v5, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mMessaging:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "arc_motion_messaging"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 121
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "master_arc_motion"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    .line 122
    .local v0, arcMotionEngineState:Z
    :goto_4
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 124
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 125
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 126
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 127
    iget-object v2, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mMessaging:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 129
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 130
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 132
    return-void

    .end local v0           #arcMotionEngineState:Z
    :cond_1
    move v2, v4

    .line 116
    goto :goto_0

    :cond_2
    move v2, v4

    .line 117
    goto :goto_1

    :cond_3
    move v2, v4

    .line 118
    goto :goto_2

    :cond_4
    move v2, v4

    .line 119
    goto :goto_3

    :cond_5
    move v0, v4

    .line 121
    goto :goto_4
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 150
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/motion2013/ArcMotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/motion2013/ArcMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 154
    :cond_0
    return-void
.end method
