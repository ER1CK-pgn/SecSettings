.class public Lcom/android/settings/LaunchApplication;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LaunchApplication.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LaunchApplication$DefaultAppPreference;
    }
.end annotation


# instance fields
.field private defaultSms:Z

.field mApplicationClickListener:Landroid/view/View$OnClickListener;

.field mClearClickListener:Landroid/view/View$OnClickListener;

.field private mHome:Landroid/preference/PreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrefGroup:Landroid/preference/PreferenceGroup;

.field mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/LaunchApplication$DefaultAppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/LaunchApplication;->defaultSms:Z

    .line 72
    new-instance v0, Lcom/android/settings/LaunchApplication$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LaunchApplication$1;-><init>(Lcom/android/settings/LaunchApplication;)V

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mApplicationClickListener:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v0, Lcom/android/settings/LaunchApplication$2;

    invoke-direct {v0, p0}, Lcom/android/settings/LaunchApplication$2;-><init>(Lcom/android/settings/LaunchApplication;)V

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mClearClickListener:Landroid/view/View$OnClickListener;

    .line 335
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LaunchApplication;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LaunchApplication;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->updateSmsApplicationSetting()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/LaunchApplication;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/settings/LaunchApplication;->defaultSms:Z

    return p1
.end method

.method private initSmsApplicationSetting()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 164
    const-string v10, "LaunchApplication"

    const-string v11, "initSmsApplicationSetting:"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v9

    .line 168
    .local v9, smsApplications:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v0

    .line 169
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 170
    .local v2, entries:[Ljava/lang/CharSequence;
    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 171
    .local v4, entryValues:[Ljava/lang/CharSequence;
    new-array v3, v0, [Landroid/graphics/drawable/Drawable;

    .line 173
    .local v3, entryImages:[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 174
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 176
    .local v5, i:I
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 177
    .local v8, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    const-string v10, "com.android.mms"

    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 178
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v10, v2, v12

    .line 179
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v10, v4, v12

    .line 181
    const/4 v10, 0x0

    :try_start_0
    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v3, v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    add-int/lit8 v5, v5, 0x1

    .line 190
    .end local v8           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 191
    .restart local v8       #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    const-string v10, "com.android.mms"

    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 194
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v10, v2, v5

    .line 195
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v10, v4, v5

    .line 197
    :try_start_1
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v12

    goto :goto_0

    .line 198
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 199
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5

    goto :goto_2

    .line 203
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    iget-object v10, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 204
    iget-object v10, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 205
    iget-object v10, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v3}, Lcom/android/settings/SmsListPreference;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 206
    const/4 v10, 0x2

    if-ge v0, v10, :cond_4

    .line 207
    iget-object v10, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 209
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->updateSmsApplicationSetting()V

    .line 210
    return-void
.end method

.method private isSmsSupported()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateHomeApplicationSetting()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 130
    const-string v3, "LaunchApplication"

    const-string v4, "updateSmsApplicationSetting:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v1, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v3, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 136
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 137
    iget-object v3, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, appName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    .end local v0           #appName:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 141
    iget-object v3, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 143
    :cond_1
    return-void
.end method

.method private updateSmsApplicationSetting()V
    .locals 6

    .prologue
    .line 147
    const-string v4, "LaunchApplication"

    const-string v5, "updateSmsApplicationSetting:"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 149
    .local v0, appName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 153
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 154
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    iget-object v4, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 156
    iget-object v4, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    iget-object v5, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    .end local v1           #i:I
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #values:[Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 153
    .restart local v1       #i:I
    .restart local v2       #packageName:Ljava/lang/String;
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method buildDefaultApplicationList()V
    .locals 13

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 94
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 96
    .local v2, context:Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LaunchApplication;->mPrefs:Ljava/util/ArrayList;

    .line 101
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    .line 103
    .local v9, installedPackagesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v11, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v10, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 109
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 110
    .local v5, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v10, v11, v5}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 111
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 112
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    .local v6, candidate:Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 115
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 116
    .local v4, name:Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/LaunchApplication$DefaultAppPreference;-><init>(Lcom/android/settings/LaunchApplication;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 117
    .local v0, pref:Lcom/android/settings/LaunchApplication$DefaultAppPreference;
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .end local v0           #pref:Lcom/android/settings/LaunchApplication$DefaultAppPreference;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #name:Ljava/lang/CharSequence;
    .end local v6           #candidate:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 119
    .restart local v6       #candidate:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v7

    .line 120
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "LaunchApplication"

    const-string v12, "Problem dealing with activity "

    invoke-static {v1, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 124
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #candidate:Landroid/content/pm/PackageInfo;
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 125
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "LaunchApplication"

    const-string v12, "IndexOutOfBounds exception occured"

    invoke-static {v1, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 215
    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 217
    const-string v0, "home"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    .line 218
    const-string v0, "sms_application"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsListPreference;

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    .line 219
    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 221
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->initSmsApplicationSetting()V

    .line 226
    const-string v0, "clear_defaults_category"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mPrefGroup:Landroid/preference/PreferenceGroup;

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    .line 229
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mTm:Landroid/telephony/TelephonyManager;

    .line 232
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->isSmsSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    const-string v0, "sms_application"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 239
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 276
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 277
    .local v1, packageName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, warningMessage:Ljava/lang/String;
    const/4 v4, 0x0

    .line 279
    .local v4, warningTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 280
    .local v2, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 281
    aget-object v5, v2, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 282
    const v5, 0x7f0917b2

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v0

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 283
    const v5, 0x7f0917b3

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v0

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 288
    :cond_0
    iget-object v5, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p2, :cond_1

    .line 289
    iget-boolean v5, p0, Lcom/android/settings/LaunchApplication;->defaultSms:Z

    if-eqz v5, :cond_3

    const-string v5, "com.android.mms"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 290
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/LaunchApplication$5;

    invoke-direct {v7, p0, p2, v1}, Lcom/android/settings/LaunchApplication$5;-><init>(Lcom/android/settings/LaunchApplication;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/settings/LaunchApplication$4;

    invoke-direct {v7, p0}, Lcom/android/settings/LaunchApplication$4;-><init>(Lcom/android/settings/LaunchApplication;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/LaunchApplication$3;

    invoke-direct {v6, p0}, Lcom/android/settings/LaunchApplication$3;-><init>(Lcom/android/settings/LaunchApplication;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 326
    :cond_1
    :goto_1
    return v8

    .line 280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 317
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->updateSmsApplicationSetting()V

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->buildDefaultApplicationList()V

    .line 319
    const-string v5, "com.android.mms"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 320
    iput-boolean v9, p0, Lcom/android/settings/LaunchApplication;->defaultSms:Z

    goto :goto_1

    .line 322
    :cond_4
    iput-boolean v8, p0, Lcom/android/settings/LaunchApplication;->defaultSms:Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-string v1, "com.android.settings.HomeSettings"

    const v3, 0x7f09054e

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 271
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 263
    :cond_1
    const-string v9, "com.android.settings"

    .line 264
    .local v9, mPackage:Ljava/lang/String;
    const-string v7, "com.android.settings.HomeSettings"

    .line 265
    .local v7, mClass:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 266
    .local v8, mHomeIntent:Landroid/content/Intent;
    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const/high16 v0, 0x400

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v8}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->buildDefaultApplicationList()V

    .line 251
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->updateHomeApplicationSetting()V

    .line 252
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 243
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 244
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->initSmsApplicationSetting()V

    .line 245
    return-void
.end method
