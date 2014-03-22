.class public Lcom/android/settings/smartbonding/SmartBondingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartBondingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private mSmartBondingObserver:Landroid/database/ContentObserver;

.field private mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;

.field private mSmartBondingPreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 56
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingSettings$1;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private showNotificationDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 169
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 170
    iput-object v6, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 173
    :cond_0
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 174
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04013e

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 175
    .local v2, layout:Landroid/view/View;
    const v5, 0x7f0b0355

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 176
    .local v4, tv:Landroid/widget/TextView;
    const v5, 0x7f0912ed

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 178
    const v5, 0x7f0b0147

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 180
    .local v3, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 181
    const v5, 0x7f0912e9

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 183
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/smartbonding/SmartBondingSettings$2;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/smartbonding/SmartBondingSettings$2;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/settings/smartbonding/SmartBondingSettings$3;

    invoke-direct {v6, p0}, Lcom/android/settings/smartbonding/SmartBondingSettings$3;-><init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 200
    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 209
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding_notification"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 142
    .local v0, isDisplayed:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 143
    .local v1, smartBondingState:Z
    :goto_1
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 144
    if-nez v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->showNotificationDialog()V

    .line 151
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 152
    return-void

    .end local v0           #isDisplayed:Z
    .end local v1           #smartBondingState:Z
    :cond_1
    move v0, v3

    .line 141
    goto :goto_0

    .restart local v0       #isDisplayed:Z
    :cond_2
    move v1, v3

    .line 142
    goto :goto_1

    .line 149
    .restart local v1       #smartBondingState:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    if-eqz p2, :cond_4

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v8, -0x2

    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v3, 0x7f0700bd

    invoke-virtual {p0, v3}, Lcom/android/settings/smartbonding/SmartBondingSettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    .line 74
    new-instance v3, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 75
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f0034

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 78
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 79
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 81
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 85
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    .line 88
    .end local v1           #padding:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "smart_bonding"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 89
    .local v2, smartBondingState:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 91
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    const-string v3, "smart_bonding_size"

    invoke-virtual {p0, v3}, Lcom/android/settings/smartbonding/SmartBondingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "smart_bonding_file_size"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 96
    .local v0, fileSize:I
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 100
    const-string v3, "smart_bonding_popup"

    invoke-virtual {p0, v3}, Lcom/android/settings/smartbonding/SmartBondingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;

    .line 101
    return-void

    .end local v0           #fileSize:I
    .end local v2           #smartBondingState:Z
    :cond_1
    move v2, v4

    .line 88
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, key:Ljava/lang/String;
    const-string v2, "smart_bonding_size"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 215
    .local v1, value:I
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding_file_size"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 219
    .end local v1           #value:I
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 155
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, key:Ljava/lang/String;
    const-string v1, "smart_bonding_popup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding_notification"

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 158
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 106
    const-string v4, "SmartBondingSettings"

    const-string v5, "onResume()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 114
    .local v1, smartBondingState:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding_notification"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 117
    .local v0, isDisplayed:Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 119
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding_notification"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 122
    return-void

    .end local v0           #isDisplayed:Z
    .end local v1           #smartBondingState:Z
    :cond_1
    move v1, v3

    .line 113
    goto :goto_0

    .restart local v1       #smartBondingState:Z
    :cond_2
    move v0, v3

    .line 116
    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 137
    :cond_0
    return-void
.end method
