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
    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/LaunchApplication;->defaultSms:Z

    .line 73
    new-instance v0, Lcom/android/settings/LaunchApplication$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LaunchApplication$1;-><init>(Lcom/android/settings/LaunchApplication;)V

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mApplicationClickListener:Landroid/view/View$OnClickListener;

    .line 84
    new-instance v0, Lcom/android/settings/LaunchApplication$2;

    invoke-direct {v0, p0}, Lcom/android/settings/LaunchApplication$2;-><init>(Lcom/android/settings/LaunchApplication;)V

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mClearClickListener:Landroid/view/View$OnClickListener;

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LaunchApplication;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LaunchApplication;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->updateSmsApplicationSetting()V

    return-void
.end method

.method private initSmsApplicationSetting()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 165
    const-string v10, "LaunchApplication"

    const-string v11, "initSmsApplicationSetting:"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v9

    .line 169
    .local v9, smsApplications:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v0

    .line 170
    .local v0, count:I
    const-string v10, "LaunchApplication"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initSmsApplicationSetting count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 172
    .local v8, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "com.bst.sync"

    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 173
    add-int/lit8 v0, v0, -0x1

    .line 174
    const-string v10, "LaunchApplication"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initSmsApplicationSetting after count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    .end local v8           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 178
    .local v2, entries:[Ljava/lang/CharSequence;
    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 179
    .local v4, entryValues:[Ljava/lang/CharSequence;
    new-array v3, v0, [Landroid/graphics/drawable/Drawable;

    .line 181
    .local v3, entryImages:[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 182
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 184
    .local v5, i:I
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 185
    .restart local v8       #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    const-string v10, "com.android.mms"

    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 186
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v10, v2, v13

    .line 187
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v10, v4, v13

    .line 189
    const/4 v10, 0x0

    :try_start_0
    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v3, v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 198
    .end local v8           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 199
    .restart local v8       #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    const-string v10, "LaunchApplication"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initSmsApplicationSetting package:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v10, "com.android.mms"

    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 203
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "com.bst.sync"

    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 206
    :cond_5
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v10, v2, v5

    .line 207
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v10, v4, v5

    .line 209
    :try_start_1
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v13

    goto :goto_1

    .line 210
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 211
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5

    goto :goto_3

    .line 215
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_6
    iget-object v10, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v2}, Lcom/android/settings/SmsListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 216
    iget-object v10, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v4}, Lcom/android/settings/SmsListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 217
    iget-object v10, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v3}, Lcom/android/settings/SmsListPreference;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 218
    const/4 v10, 0x2

    if-ge v0, v10, :cond_7

    .line 219
    iget-object v10, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v13}, Lcom/android/settings/SmsListPreference;->setEnabled(Z)V

    .line 221
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->updateSmsApplicationSetting()V

    .line 222
    return-void
.end method

.method private isSmsSupported()Z
    .locals 1

    .prologue
    .line 373
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

    .line 131
    const-string v3, "LaunchApplication"

    const-string v4, "updateSmsApplicationSetting:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v1, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v3, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 137
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, appName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    .end local v0           #appName:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 142
    iget-object v3, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 144
    :cond_1
    return-void
.end method

.method private updateSmsApplicationSetting()V
    .locals 6

    .prologue
    .line 148
    const-string v4, "LaunchApplication"

    const-string v5, "updateSmsApplicationSetting:"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 150
    .local v0, appName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4}, Lcom/android/settings/SmsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 154
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 155
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    iget-object v4, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/SmsListPreference;->setValueIndex(I)V

    .line 157
    iget-object v4, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    iget-object v5, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v5}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/settings/SmsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    .end local v1           #i:I
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #values:[Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 154
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
    .line 94
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 97
    .local v2, context:Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LaunchApplication;->mPrefs:Ljava/util/ArrayList;

    .line 102
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    .line 104
    .local v9, installedPackagesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v11, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v10, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 110
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 111
    .local v5, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v10, v11, v5}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 112
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .local v6, candidate:Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 116
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 117
    .local v4, name:Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/LaunchApplication$DefaultAppPreference;-><init>(Lcom/android/settings/LaunchApplication;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 118
    .local v0, pref:Lcom/android/settings/LaunchApplication$DefaultAppPreference;
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .end local v0           #pref:Lcom/android/settings/LaunchApplication$DefaultAppPreference;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #name:Ljava/lang/CharSequence;
    .end local v6           #candidate:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 120
    .restart local v6       #candidate:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v7

    .line 121
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "LaunchApplication"

    const-string v12, "Problem dealing with activity "

    invoke-static {v1, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 125
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #candidate:Landroid/content/pm/PackageInfo;
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 126
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "LaunchApplication"

    const-string v12, "IndexOutOfBounds exception occured"

    invoke-static {v1, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 227
    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/android/settings/LaunchApplication;->addPreferencesFromResource(I)V

    .line 229
    const-string v0, "home"

    invoke-virtual {p0, v0}, Lcom/android/settings/LaunchApplication;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    .line 230
    const-string v0, "sms_application"

    invoke-virtual {p0, v0}, Lcom/android/settings/LaunchApplication;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsListPreference;

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    .line 231
    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SmsListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->initSmsApplicationSetting()V

    .line 241
    const-string v0, "clear_defaults_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/LaunchApplication;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mPrefGroup:Landroid/preference/PreferenceGroup;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    .line 244
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/LaunchApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mTm:Landroid/telephony/TelephonyManager;

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->isSmsSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    const-string v0, "sms_application"

    invoke-virtual {p0, v0}, Lcom/android/settings/LaunchApplication;->removePreference(Ljava/lang/String;)V

    .line 254
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 19
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 291
    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/String;

    .line 292
    .local v10, packageName:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, warningMessage:Ljava/lang/String;
    const/4 v14, 0x0

    .line 294
    .local v14, warningTitle:Ljava/lang/String;
    const/4 v7, 0x0

    .line 295
    .local v7, oldSmsAppName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 296
    .local v8, oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v9

    .line 297
    .local v9, oldSmsComponent:Landroid/content/ComponentName;
    if-eqz v9, :cond_0

    .line 298
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v8

    .line 299
    iget-object v7, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    .line 302
    :cond_0
    const/4 v6, 0x0

    .line 304
    .local v6, messageAppName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 305
    .local v11, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 307
    .local v3, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v11, :cond_1

    .line 308
    :try_start_0
    const-string v15, "com.android.mms"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 315
    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    .line 316
    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6           #messageAppName:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 317
    .restart local v6       #messageAppName:Ljava/lang/String;
    const-string v15, "LaunchApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ai is not null get messageAppName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v15}, Lcom/android/settings/SmsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v12

    .line 323
    .local v12, values:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v15, v12

    if-ge v5, v15, :cond_3

    .line 324
    aget-object v15, v12, v5

    invoke-virtual {v10, v15}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 325
    const-string v15, "USA"

    const-string v16, "USA"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 326
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 327
    :cond_2
    const v15, 0x7f09071e

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v6, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v18

    aget-object v18, v18, v5

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/settings/LaunchApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 334
    :goto_3
    const v15, 0x7f091815

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v18

    aget-object v18, v18, v5

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/settings/LaunchApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 339
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    if-eqz p2, :cond_4

    .line 340
    const-string v15, "com.android.mms"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "VZW"

    const-string v16, "TMO"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 341
    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x104000a

    new-instance v17, Lcom/android/settings/LaunchApplication$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LaunchApplication$5;-><init>(Lcom/android/settings/LaunchApplication;Ljava/lang/Object;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/high16 v16, 0x104

    new-instance v17, Lcom/android/settings/LaunchApplication$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LaunchApplication$4;-><init>(Lcom/android/settings/LaunchApplication;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    new-instance v16, Lcom/android/settings/LaunchApplication$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LaunchApplication$3;-><init>(Lcom/android/settings/LaunchApplication;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 367
    :cond_4
    :goto_4
    const/4 v15, 0x0

    return v15

    .line 310
    .end local v5           #i:I
    .end local v12           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    .line 311
    .local v4, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 312
    const-string v15, "LaunchApplication"

    const-string v16, "Exception occur ai is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 319
    .end local v4           #e:Ljava/lang/Exception;
    :cond_5
    const v15, 0x7f091816

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/LaunchApplication;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 329
    .restart local v5       #i:I
    .restart local v12       #values:[Ljava/lang/CharSequence;
    :cond_6
    const v15, 0x7f09071e

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v7, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v18

    aget-object v18, v18, v5

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/settings/LaunchApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 332
    :cond_7
    const v15, 0x7f091814

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v18

    aget-object v18, v18, v5

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v6, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/settings/LaunchApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 323
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 362
    :cond_9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->updateSmsApplicationSetting()V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->buildDefaultApplicationList()V

    goto :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-string v1, "com.android.settings.HomeSettings"

    const v3, 0x7f09057e

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 286
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 278
    :cond_1
    const-string v9, "com.android.settings"

    .line 279
    .local v9, mPackage:Ljava/lang/String;
    const-string v7, "com.android.settings.HomeSettings"

    .line 280
    .local v7, mClass:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 281
    .local v8, mHomeIntent:Landroid/content/Intent;
    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const/high16 v0, 0x400

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v8}, Lcom/android/settings/LaunchApplication;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->buildDefaultApplicationList()V

    .line 266
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->updateHomeApplicationSetting()V

    .line 267
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 258
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 259
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->initSmsApplicationSetting()V

    .line 260
    return-void
.end method
