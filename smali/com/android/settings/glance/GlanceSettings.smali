.class public Lcom/android/settings/glance/GlanceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GlanceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAppNameContacts:Landroid/preference/CheckBoxPreference;

.field private mAppNameEmail:Landroid/preference/CheckBoxPreference;

.field private mAppNameGallery:Landroid/preference/CheckBoxPreference;

.field private mAppNameMessage:Landroid/preference/CheckBoxPreference;

.field private mAppNamePhone:Landroid/preference/CheckBoxPreference;

.field private mAppNameSPlanner:Landroid/preference/CheckBoxPreference;

.field private mAppNameScrapbook:Landroid/preference/CheckBoxPreference;

.field private mAppNameSettings:Landroid/preference/CheckBoxPreference;

.field private mAppNameVideoEditor:Landroid/preference/CheckBoxPreference;

.field private mAppsCategory:Landroid/preference/PreferenceCategory;

.field private mCardOrderCategory:Landroid/preference/PreferenceCategory;

.field private mCardOrderPref:Landroid/preference/ListPreference;

.field private mGlanceEnabler:Lcom/android/settings/glance/GlanceEnabler;

.field private final mGlanceObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 76
    new-instance v0, Lcom/android/settings/glance/GlanceSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/glance/GlanceSettings$1;-><init>(Lcom/android/settings/glance/GlanceSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mGlanceObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/glance/GlanceSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameVideoEditor:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNamePhone:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameContacts:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameMessage:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameGallery:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSettings:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameEmail:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSPlanner:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/glance/GlanceSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameScrapbook:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method initGlanceswitchBtn()V
    .locals 8

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 284
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 285
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/glance/GlanceSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 287
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 288
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 289
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 290
    :cond_0
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 292
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/glance/GlanceSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 293
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 295
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/glance/GlanceSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 300
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/glance/GlanceSettings;->mActionBarLayout:Landroid/view/View;

    .line 303
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v3, Lcom/android/settings/glance/GlanceEnabler;

    iget-object v4, p0, Lcom/android/settings/glance/GlanceSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4}, Lcom/android/settings/glance/GlanceEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/glance/GlanceSettings;->mGlanceEnabler:Lcom/android/settings/glance/GlanceEnabler;

    .line 304
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v10, 0x7f070058

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    .line 103
    const-string v10, "card_order_category"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderCategory:Landroid/preference/PreferenceCategory;

    .line 104
    const-string v10, "glance_card_order"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;

    .line 105
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "glance_display_order"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 106
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 107
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    const-string v10, "apps_category"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppsCategory:Landroid/preference/PreferenceCategory;

    .line 111
    const-string v10, "app_name_phone"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNamePhone:Landroid/preference/CheckBoxPreference;

    .line 112
    const-string v10, "app_name_contacts"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameContacts:Landroid/preference/CheckBoxPreference;

    .line 113
    const-string v10, "app_name_message"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameMessage:Landroid/preference/CheckBoxPreference;

    .line 114
    const-string v10, "app_name_gallery"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameGallery:Landroid/preference/CheckBoxPreference;

    .line 115
    const-string v10, "app_name_settings"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSettings:Landroid/preference/CheckBoxPreference;

    .line 116
    const-string v10, "app_name_email"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameEmail:Landroid/preference/CheckBoxPreference;

    .line 117
    const-string v10, "app_name_s_planner"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSPlanner:Landroid/preference/CheckBoxPreference;

    .line 118
    const-string v10, "app_name_scrapbook"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameScrapbook:Landroid/preference/CheckBoxPreference;

    .line 119
    const-string v10, "app_name_video_editor"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameVideoEditor:Landroid/preference/CheckBoxPreference;

    .line 121
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 122
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/glance/GlanceSettings;->mAppsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNamePhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameGallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSettings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSPlanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameVideoEditor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "glance_switch_onoff"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_1

    const/4 v8, 0x1

    .line 136
    .local v8, glanceState:Z
    :goto_0
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "glance_phone"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_2

    const/4 v4, 0x1

    .line 137
    .local v4, glancePhoneState:Z
    :goto_1
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "glance_contact"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_3

    const/4 v0, 0x1

    .line 138
    .local v0, glanceContactState:Z
    :goto_2
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "glance_message"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_4

    const/4 v3, 0x1

    .line 139
    .local v3, glanceMessageState:Z
    :goto_3
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "glance_gallery"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_5

    const/4 v2, 0x1

    .line 140
    .local v2, glanceGalleryState:Z
    :goto_4
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "glance_settings"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_6

    const/4 v7, 0x1

    .line 141
    .local v7, glanceSettingState:Z
    :goto_5
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "glance_email"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_7

    const/4 v1, 0x1

    .line 142
    .local v1, glanceEmailState:Z
    :goto_6
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "glance_s_planner"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_8

    const/4 v5, 0x1

    .line 143
    .local v5, glanceSPannerState:Z
    :goto_7
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "glance_scrapbook"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_9

    const/4 v6, 0x1

    .line 144
    .local v6, glanceScrapbookState:Z
    :goto_8
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "glance_video_editor"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_a

    const/4 v9, 0x1

    .line 146
    .local v9, glanceVideoEditorState:Z
    :goto_9
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 147
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNamePhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 148
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNamePhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 149
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 150
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 151
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 152
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 153
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameGallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 154
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameGallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 155
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSettings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 156
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSettings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 157
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 158
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 159
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSPlanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 160
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSPlanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 161
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 162
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 163
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameVideoEditor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 164
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameVideoEditor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/glance/GlanceSettings;->initGlanceswitchBtn()V

    .line 168
    iget-object v10, p0, Lcom/android/settings/glance/GlanceSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v10, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 169
    return-void

    .line 134
    .end local v0           #glanceContactState:Z
    .end local v1           #glanceEmailState:Z
    .end local v2           #glanceGalleryState:Z
    .end local v3           #glanceMessageState:Z
    .end local v4           #glancePhoneState:Z
    .end local v5           #glanceSPannerState:Z
    .end local v6           #glanceScrapbookState:Z
    .end local v7           #glanceSettingState:Z
    .end local v8           #glanceState:Z
    .end local v9           #glanceVideoEditorState:Z
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 136
    .restart local v8       #glanceState:Z
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 137
    .restart local v4       #glancePhoneState:Z
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 138
    .restart local v0       #glanceContactState:Z
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 139
    .restart local v3       #glanceMessageState:Z
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 140
    .restart local v2       #glanceGalleryState:Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 141
    .restart local v7       #glanceSettingState:Z
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 142
    .restart local v1       #glanceEmailState:Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 143
    .restart local v5       #glanceSPannerState:Z
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 144
    .restart local v6       #glanceScrapbookState:Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_9
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 241
    const/4 v0, 0x1

    const v1, 0x7f090f92

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201db

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 245
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 249
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 255
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 251
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/glance/GlanceSettings;->startHelpActivity()V

    .line 252
    const/4 v0, 0x1

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 187
    const-string v0, "GlanceSettings"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mGlanceEnabler:Lcom/android/settings/glance/GlanceEnabler;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mGlanceEnabler:Lcom/android/settings/glance/GlanceEnabler;

    invoke-virtual {v0}, Lcom/android/settings/glance/GlanceEnabler;->pause()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/glance/GlanceSettings;->mGlanceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 193
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, key:Ljava/lang/String;
    const-string v3, "glance_card_order"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 270
    check-cast v2, Ljava/lang/String;

    .line 272
    .local v2, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "glance_display_order"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    iget-object v3, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "glance_display_order"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 275
    iget-object v3, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/glance/GlanceSettings;->mCardOrderPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 276
    .restart local v2       #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "GlanceSettings"

    const-string v4, "could not set KEY_GLANCE_DISPLAY_ORDER"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 203
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNamePhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_phone"

    iget-object v4, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNamePhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    :goto_0
    return v1

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_contact"

    iget-object v4, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 209
    :cond_3
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_message"

    iget-object v4, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 212
    :cond_5
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameGallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_gallery"

    iget-object v4, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameGallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 215
    :cond_7
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSettings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_settings"

    iget-object v4, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSettings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 218
    :cond_9
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_email"

    iget-object v4, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 221
    :cond_b
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSPlanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_s_planner"

    iget-object v4, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameSPlanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v1

    :cond_c
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 224
    :cond_d
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_scrapbook"

    iget-object v4, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v1

    :cond_e
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 227
    :cond_f
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameVideoEditor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_video_editor"

    iget-object v4, p0, Lcom/android/settings/glance/GlanceSettings;->mAppNameVideoEditor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    move v0, v1

    :cond_10
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 232
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 173
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 174
    const-string v2, "GlanceSettings"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "glance_switch_onoff"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    .line 177
    .local v0, glanceState:Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 178
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mGlanceEnabler:Lcom/android/settings/glance/GlanceEnabler;

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mGlanceEnabler:Lcom/android/settings/glance/GlanceEnabler;

    invoke-virtual {v2}, Lcom/android/settings/glance/GlanceEnabler;->resume()V

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/android/settings/glance/GlanceSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "glance_switch_onoff"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/glance/GlanceSettings;->mGlanceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 182
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 198
    return-void
.end method

.method public startHelpActivity()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method
