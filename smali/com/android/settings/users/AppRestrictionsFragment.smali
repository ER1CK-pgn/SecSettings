.class public Lcom/android/settings/users/AppRestrictionsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;,
        Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;,
        Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final KEY_INCOMING_CALLS:Ljava/lang/String;

.field private final KEY_LOCATION_ACCESS:Ljava/lang/String;

.field private final KEY_MOBILE_DATA:Ljava/lang/String;

.field private final ORDER_FOR_FIRST_MENU:I

.field private mAppList:Landroid/preference/PreferenceGroup;

.field private mAppListChanged:Z

.field private mAppLoadingTask:Landroid/os/AsyncTask;

.field private mCustomRequestCode:I

.field private mCustomRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mExcludeAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTime:Z

.field protected mIPm:Landroid/content/pm/IPackageManager;

.field private mIncomingCalls:Landroid/preference/CheckBoxPreference;

.field private mLocationAccess:Landroid/preference/CheckBoxPreference;

.field private mMobileData:Landroid/preference/CheckBoxPreference;

.field private mNewUser:Z

.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageObserver:Landroid/content/BroadcastReceiver;

.field mRemovingUserId:I

.field protected mRestrictedProfile:Z

.field mSelectedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsDescs:[I

.field private final mSettingsKeys:[Ljava/lang/String;

.field private final mSettingsTitles:[I

.field private mSysPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mUser:Landroid/os/UserHandle;

.field private mUserApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserBackgrounding:Landroid/content/BroadcastReceiver;

.field private final mUserLock:Ljava/lang/Object;

.field protected mUserManager:Landroid/os/UserManager;

.field private mVisibleApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 91
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 122
    iput v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->ORDER_FOR_FIRST_MENU:I

    .line 123
    const-string v0, "key_mobile_data"

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->KEY_MOBILE_DATA:Ljava/lang/String;

    .line 124
    const-string v0, "key_location_access"

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->KEY_LOCATION_ACCESS:Ljava/lang/String;

    .line 125
    const-string v0, "key_incoming_calls"

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->KEY_INCOMING_CALLS:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/ArrayList;

    .line 135
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "key_mobile_data"

    aput-object v1, v0, v2

    const-string v1, "key_location_access"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "key_incoming_calls"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSettingsKeys:[Ljava/lang/String;

    .line 141
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSettingsTitles:[I

    .line 147
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSettingsDescs:[I

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    .line 155
    iput-boolean v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 161
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserLock:Ljava/lang/Object;

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRemovingUserId:I

    .line 175
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$2;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    .line 1073
    return-void

    .line 141
    nop

    :array_0
    .array-data 0x4
        0x6dt 0x17t 0x9t 0x7ft
        0x2bt 0xct 0x9t 0x7ft
        0x6ft 0x17t 0x9t 0x7ft
    .end array-data

    .line 147
    :array_1
    .array-data 0x4
        0x6et 0x17t 0x9t 0x7ft
        0x2ct 0xct 0x9t 0x7ft
        0x70t 0x17t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/users/AppRestrictionsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppsStates()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment;->openRestrictionDetail(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->generateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mMobileData:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/users/AppRestrictionsFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onPackageChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->fetchAndMergeApps()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->populateApps()V

    return-void
.end method

.method private addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V
    .locals 11
    .parameter
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, visibleApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;>;"
    .local p3, excludePackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_1

    .line 649
    :cond_0
    return-void

    .line 610
    :cond_1
    iget-object v7, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 611
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/16 v9, 0x2200

    invoke-virtual {v7, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 613
    .local v5, launchableApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 614
    .local v0, app:Landroid/content/pm/ResolveInfo;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_2

    .line 615
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 616
    .local v6, packageName:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 617
    .local v2, flags:I
    and-int/lit8 v9, v2, 0x1

    if-nez v9, :cond_3

    and-int/lit16 v9, v2, 0x80

    if-eqz v9, :cond_2

    .line 621
    :cond_3
    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 622
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 623
    .local v1, enabled:I
    const/4 v9, 0x4

    if-eq v1, v9, :cond_4

    const/4 v9, 0x2

    if-ne v1, v9, :cond_5

    .line 626
    :cond_4
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, v6, v9, v10}, Lcom/android/settings/users/AppRestrictionsFragment;->getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 628
    .local v8, targetUserAppInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_2

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x80

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    .line 633
    .end local v8           #targetUserAppInfo:Landroid/content/pm/ApplicationInfo;
    :cond_5
    new-instance v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v4}, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 634
    .local v4, info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 635
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 636
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 637
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 638
    iget-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    if-nez v9, :cond_6

    iget-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 641
    :cond_6
    iget-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-direct {p0, v9, v10}, Lcom/android/settings/users/AppRestrictionsFragment;->isExcludeApp(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 645
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private addSystemImes(Ljava/util/Set;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, excludePackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 586
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 599
    :cond_0
    return-void

    .line 587
    :cond_1
    const-string v5, "input_method"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 589
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 590
    .local v3, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 592
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/users/AppRestrictionsFragment;->isSystemPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 593
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private applyUserAppState(Ljava/lang/String;Z)V
    .locals 6
    .parameter "packageName"
    .parameter "enabled"

    .prologue
    const/high16 v4, 0x80

    .line 506
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 507
    .local v1, userId:I
    if-eqz p2, :cond_3

    .line 510
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x2000

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 512
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_1

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    .line 519
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 521
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->disableUiForPackage(Ljava/lang/String;)V

    .line 522
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->setApplicationBlockedSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 551
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_0
    return-void

    .line 532
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 533
    .restart local v0       #info:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 534
    iget-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v2, :cond_4

    .line 535
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v2, p1, v3, v4, v5}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_0

    .line 548
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 541
    .restart local v0       #info:Landroid/content/pm/ApplicationInfo;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->disableUiForPackage(Ljava/lang/String;)V

    .line 542
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->setApplicationBlockedSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 527
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private applyUserAppsStates()V
    .locals 7

    .prologue
    .line 493
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 494
    .local v4, userId:I
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 495
    sget-object v5, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    const-string v6, "Cannot apply application restrictions on another user!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    return-void

    .line 498
    :cond_1
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 499
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 500
    .local v3, packageName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 501
    .local v0, enabled:Z
    invoke-direct {p0, v3, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private createDialog(I)V
    .locals 3
    .parameter

    .prologue
    .line 1268
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1269
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f091773

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091774

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/users/AppRestrictionsFragment$5;

    invoke-direct {v2, p0}, Lcom/android/settings/users/AppRestrictionsFragment$5;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/users/AppRestrictionsFragment$4;

    invoke-direct {v2, p0}, Lcom/android/settings/users/AppRestrictionsFragment$4;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1286
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1288
    :cond_0
    return-void
.end method

.method private disableUiForPackage(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 556
    .local v0, pref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-eqz v0, :cond_0

    .line 557
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 559
    :cond_0
    return-void
.end method

.method private fetchAndMergeApps()V
    .locals 21

    .prologue
    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 681
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 683
    .local v5, context:Landroid/content/Context;
    if-nez v5, :cond_1

    .line 781
    :cond_0
    return-void

    .line 684
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    .line 685
    .local v16, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 687
    .local v12, ipm:Landroid/content/pm/IPackageManager;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 688
    .local v7, excludePackages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings/users/AppRestrictionsFragment;->addSystemImes(Ljava/util/Set;)V

    .line 691
    new-instance v13, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v13, launcherIntent:Landroid/content/Intent;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13, v7}, Lcom/android/settings/users/AppRestrictionsFragment;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 696
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 697
    .local v17, widgetIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v7}, Lcom/android/settings/users/AppRestrictionsFragment;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 699
    const/16 v18, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    .line 701
    .local v11, installedApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 703
    .local v3, app:Landroid/content/pm/ApplicationInfo;
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const/high16 v19, 0x80

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 705
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 708
    new-instance v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v10}, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 709
    .local v10, info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v0, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 710
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 711
    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 712
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 716
    .end local v10           #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    :cond_3
    :try_start_0
    iget-object v0, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 720
    .local v15, pi:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 724
    .end local v15           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v18

    goto/16 :goto_0

    .line 730
    .end local v3           #app:Landroid/content/pm/ApplicationInfo;
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    .line 732
    const/16 v18, 0x2000

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 737
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 739
    .restart local v3       #app:Landroid/content/pm/ApplicationInfo;
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const/high16 v19, 0x80

    and-int v18, v18, v19

    if-eqz v18, :cond_5

    .line 741
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_5

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 744
    new-instance v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v10}, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 745
    .restart local v10       #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v0, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 746
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 747
    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 748
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 755
    .end local v3           #app:Landroid/content/pm/ApplicationInfo;
    .end local v10           #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$1;)V

    invoke-static/range {v18 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 758
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 759
    .local v6, dedupPackageSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    .local v8, i:I
    :goto_3
    if-ltz v8, :cond_8

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 762
    .restart local v10       #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 763
    .local v4, both:Ljava/lang/String;
    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 759
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 768
    :cond_7
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 773
    .end local v4           #both:Ljava/lang/String;
    .end local v10           #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    :cond_8
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 774
    .local v14, packageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 775
    .restart local v10       #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 776
    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    goto :goto_5

    .line 778
    :cond_9
    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 734
    .end local v6           #dedupPackageSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #i:I
    .end local v10           #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    .end local v14           #packageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;>;"
    :catch_1
    move-exception v18

    goto/16 :goto_1
.end method

.method private findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "choiceEntries"
    .parameter "choiceValues"
    .parameter "selectedString"

    .prologue
    .line 1223
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1224
    aget-object v1, p2, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1225
    aget-object p3, p1, v0

    .line 1228
    .end local p3
    :cond_0
    return-object p3

    .line 1223
    .restart local p3
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private generateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 2
    .parameter "preference"

    .prologue
    .line 1187
    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 1188
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    return v0
.end method

.method private getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .parameter "packageName"
    .parameter "flags"
    .parameter "user"

    .prologue
    .line 653
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 657
    :goto_0
    return-object v1

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRestrictionEntry(Ljava/lang/String;)Landroid/content/RestrictionEntry;
    .locals 6
    .parameter "key"

    .prologue
    .line 1344
    const/4 v3, 0x0

    .line 1345
    .local v3, result:Landroid/content/RestrictionEntry;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v4, v5}, Lcom/android/settings/users/RestrictionUtils;->getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1346
    .local v2, restrictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    .line 1347
    .local v0, entry:Landroid/content/RestrictionEntry;
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1348
    move-object v3, v0

    .line 1352
    .end local v0           #entry:Landroid/content/RestrictionEntry;
    :cond_1
    return-object v3
.end method

.method private isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v1, 0x0

    .line 789
    if-nez p1, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v1

    .line 790
    :cond_1
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 792
    .local v0, flags:I
    const/high16 v2, 0x80

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/high16 v2, 0x800

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isExcludeApp(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "packageName"
    .parameter "activityName"

    .prologue
    .line 1411
    const/4 v2, 0x0

    .line 1413
    .local v2, retVal:Z
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;

    .line 1414
    .local v1, info:Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;
    invoke-virtual {v1}, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;->getActivityName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1416
    const/4 v2, 0x1

    .line 1422
    .end local v1           #info:Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;
    :cond_1
    return v2
.end method

.method private isPlatformSigned(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v0, 0x0

    .line 784
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 563
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 564
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    .line 573
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 565
    .restart local v1       #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .local v0, flags:I
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_2

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    .line 568
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 570
    .end local v0           #flags:I
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private makeExcludeAppInfos()V
    .locals 6

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1400
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1401
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1403
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;

    const-string v4, "com.android.contacts"

    const-string v5, "Phone"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1404
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;

    const-string v4, "com.android.mms"

    const-string v5, "Messages"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;

    const v4, 0x7f090526

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v0, v4}, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;

    const v4, 0x7f0906cb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    return-void
.end method

.method private onAppSettingsIconClicked(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3
    .parameter

    .prologue
    .line 1034
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1036
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1039
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1041
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v1, v2}, Lcom/android/settings/users/RestrictionUtils;->getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1044
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->openRestrictionDetail(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1046
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    goto :goto_0
.end method

.method private onPackageChanged(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, packageName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 466
    .local v2, pref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-nez v2, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 470
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 416
    iput p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRemovingUserId:I

    .line 418
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 419
    monitor-exit v1

    .line 420
    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private openRestrictionDetail(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1362
    .line 1363
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v6

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    .line 1364
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 1370
    goto :goto_0

    .line 1369
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1374
    :cond_0
    sget-object v0, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openRestrictionDetail() - isVisibleRestrcitions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1380
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1395
    :goto_2
    return-void

    .line 1384
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 1386
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1387
    const-string v0, "package_name"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const-string v0, "user_handle"

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1389
    const-string v0, "restriction_list"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1390
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/users/AppRestrictionsDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f091776

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 1364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private populateApps()V
    .locals 14

    .prologue
    .line 797
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 798
    if-nez v3, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 800
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 802
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 811
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 812
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 813
    const/4 v0, 0x0

    .line 814
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 815
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 816
    iget-object v7, v0, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 817
    if-eqz v7, :cond_2

    .line 818
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 819
    new-instance v9, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-direct {v9, v3, p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 820
    invoke-direct {p0, v5, v7}, Lcom/android/settings/users/AppRestrictionsFragment;->resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v10

    .line 821
    iget-object v2, v0, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 822
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 823
    iget-object v2, v0, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 824
    iget-object v2, v0, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    if-eqz v2, :cond_3

    .line 825
    const v2, 0x7f090c22

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    iget-object v13, v13, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    aput-object v13, v11, v12

    invoke-virtual {v3, v2, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 828
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 829
    if-nez v10, :cond_4

    if-eqz v8, :cond_d

    :cond_4
    const/4 v2, 0x1

    :goto_3
    #calls: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSettingsEnabled(Z)V
    invoke-static {v9, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$800(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 830
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 831
    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 832
    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 833
    const/4 v2, 0x0

    .line 835
    const/16 v11, 0x2040

    :try_start_0
    iget-object v12, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-interface {v4, v7, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 840
    :goto_4
    if-eqz v2, :cond_e

    iget-boolean v11, v2, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    if-nez v11, :cond_5

    invoke-direct {p0, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->isPlatformSigned(Landroid/content/pm/PackageInfo;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 841
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 842
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 844
    if-nez v10, :cond_6

    if-eqz v8, :cond_2

    .line 848
    :cond_6
    if-eqz v10, :cond_7

    .line 849
    const/4 v10, 0x0

    invoke-direct {p0, v7, v9, v10}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 854
    :cond_7
    :goto_5
    iget-boolean v10, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v10, :cond_8

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v10, :cond_8

    .line 856
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 857
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 858
    const v10, 0x7f090c23

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(I)V

    .line 860
    :cond_8
    iget-boolean v10, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v10, :cond_9

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 861
    const v2, 0x7f090c24

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 863
    :cond_9
    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    if-eqz v0, :cond_a

    .line 864
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 865
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 867
    :cond_a
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 868
    if-eqz v8, :cond_f

    .line 869
    const/16 v0, 0x64

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 873
    :goto_6
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const-string v0, "com.sec.android.app.samsungapps"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 877
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v2, "com.sec.android.widget.samsungapps"

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_b
    :goto_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 891
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 892
    goto/16 :goto_1

    .line 821
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 829
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 851
    :cond_e
    iget-boolean v10, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    if-nez v10, :cond_7

    invoke-direct {p0, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 852
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 871
    :cond_f
    add-int/lit8 v0, v1, 0x2

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_6

    .line 878
    :cond_10
    const-string v0, "com.sec.android.app.clockpackage"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 879
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v2, "com.sec.android.widgetapp.alarmwidget"

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 880
    :cond_11
    const-string v0, "com.samsung.everglades.video"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 881
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v2, "com.sec.android.app.videoplayer"

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 882
    :cond_12
    const-string v0, "com.sec.android.quickmemo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 883
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v2, "com.sec.android.quickmemowidget"

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 884
    :cond_13
    const-string v0, "com.android.calendar"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 885
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v2, "com.sec.android.widgetapp.SPlannerAppWidget"

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 886
    :cond_14
    const-string v0, "com.samsung.android.app.episodes"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 887
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v2, "com.samsung.android.app.storyalbumwidget"

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 896
    :cond_15
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    if-eqz v0, :cond_0

    .line 897
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 898
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppsStates()V

    goto/16 :goto_0

    .line 838
    :catch_0
    move-exception v11

    goto/16 :goto_4
.end method

.method private removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 1027
    #getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1100(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 1028
    .local v1, p:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1030
    .end local v1           #p:Landroid/preference/Preference;
    :cond_0
    #getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1100(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1031
    return-void
.end method

.method private requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1062
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1064
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    const-string v3, "android.intent.extra.restrictions_bundle"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1067
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1068
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    const/4 v5, -0x1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/ContextWrapper;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1071
    return-void
.end method

.method private resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 917
    .local p1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 918
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 919
    const/4 v2, 0x1

    .line 922
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setRestrictionEntry(Landroid/content/RestrictionEntry;)V
    .locals 3
    .parameter "entry"

    .prologue
    .line 1356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2}, Lcom/android/settings/users/RestrictionUtils;->setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 1359
    return-void
.end method

.method private updateAllEntries(Ljava/lang/String;Z)V
    .locals 3
    .parameter "prefKey"
    .parameter "checked"

    .prologue
    .line 926
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 927
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 928
    .local v1, pref:Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    .line 929
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    check-cast v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .end local v1           #pref:Landroid/preference/Preference;
    invoke-virtual {v1, p2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 926
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 934
    :cond_1
    return-void
.end method


# virtual methods
.method protected getAppPreferenceGroup()Landroid/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected getCircularUserIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 479
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 480
    .local v1, userIcon:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 485
    :goto_0
    return-object v0

    .line 483
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/users/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/users/CircleFramedDrawable;

    move-result-object v0

    .line 485
    .local v0, circularIcon:Lcom/android/settings/users/CircleFramedDrawable;
    goto :goto_0
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 357
    if-eqz p1, :cond_2

    .line 358
    new-instance v1, Landroid/os/UserHandle;

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 369
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    if-nez v1, :cond_1

    .line 370
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 373
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 374
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 375
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 376
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_1
    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getAppPreferenceGroup()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    .line 386
    return-void

    .line 360
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 361
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 362
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 363
    new-instance v1, Landroid/os/UserHandle;

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 365
    :cond_3
    const-string v1, "new_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    goto :goto_0

    .line 380
    .end local v0           #args:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1194
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1196
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 1197
    if-nez v0, :cond_0

    .line 1198
    sget-object v0, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown requestCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :goto_0
    return-void

    .line 1202
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1203
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1204
    const-string v2, "android.intent.extra.restrictions_list"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1206
    const-string v3, "android.intent.extra.restrictions_bundle"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 1207
    if-eqz v2, :cond_2

    .line 1209
    invoke-virtual {v0, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 1210
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v2}, Lcom/android/settings/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1218
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1212
    :cond_2
    if-eqz v3, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 938
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v0, :cond_0

    .line 939
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 940
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v4, 0x7f0b0339

    if-ne v1, v4, :cond_1

    .line 941
    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->onAppSettingsIconClicked(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 943
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 944
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "pkg_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 945
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$900(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z

    move-result v4

    if-eqz v4, :cond_2

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1000(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_2

    .line 949
    invoke-direct {p0, v1, v0, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 953
    :cond_2
    const-string v3, "com.sec.android.app.samsungapps"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 954
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v4, "com.sec.android.widget.samsungapps"

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    :cond_3
    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 969
    iget-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-nez v2, :cond_4

    .line 970
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    .line 972
    :cond_4
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 943
    goto :goto_1

    .line 955
    :cond_6
    const-string v3, "com.sec.android.app.clockpackage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 956
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v4, "com.sec.android.widgetapp.alarmwidget"

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 957
    :cond_7
    const-string v3, "com.samsung.everglades.video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 958
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v4, "com.sec.android.app.videoplayer"

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 959
    :cond_8
    const-string v3, "com.sec.android.quickmemo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 960
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v4, "com.sec.android.quickmemowidget"

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 961
    :cond_9
    const-string v3, "com.android.calendar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 962
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v4, "com.sec.android.widgetapp.SPlannerAppWidget"

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 963
    :cond_a
    const-string v3, "com.samsung.android.app.episodes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 964
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v4, "com.samsung.android.app.storyalbumwidget"

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 396
    const/4 v1, 0x1

    const v2, 0x7f090bea

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 397
    .local v0, removeThisUser:Landroid/view/MenuItem;
    const v1, 0x7f020124

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 398
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 400
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 401
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 404
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 405
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 406
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->onRemoveUserClicked(I)V

    .line 410
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 447
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    .line 449
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 450
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 451
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    if-eqz v0, :cond_0

    .line 452
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$3;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 458
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 979
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 980
    if-eqz v0, :cond_1

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 981
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 983
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 984
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 986
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getRestrictions()Ljava/util/ArrayList;

    move-result-object v3

    .line 987
    if-eqz v3, :cond_1

    .line 988
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    .line 989
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 990
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 992
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 1011
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1012
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v0, v3, v1}, Lcom/android/settings/users/RestrictionUtils;->setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 1023
    :cond_1
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 996
    :pswitch_1
    check-cast p1, Landroid/preference/ListPreference;

    move-object v1, p2

    .line 997
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 998
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v1, v0, p2}, Lcom/android/settings/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1003
    :pswitch_2
    check-cast p2, Ljava/util/Set;

    .line 1004
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1005
    invoke-interface {p2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1006
    invoke-virtual {v0, v1}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_1

    .line 1014
    :cond_2
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v3}, Lcom/android/settings/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1233
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1234
    sget-object v3, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v3, "key_mobile_data"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1236
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mMobileData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1237
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "user_dependent_mobile_settings"

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1251
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pkg_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1252
    check-cast p1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 1253
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1254
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pkg_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1255
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v1

    .line 1256
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 1257
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    .line 1259
    iput-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 1260
    invoke-direct {p0, v0, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    .line 1264
    :cond_2
    :goto_1
    return v1

    .line 1239
    :cond_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->createDialog(I)V

    goto :goto_0

    .line 1241
    :cond_4
    const-string v3, "key_location_access"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1242
    const-string v0, "no_share_location"

    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->getRestrictionEntry(Ljava/lang/String;)Landroid/content/RestrictionEntry;

    move-result-object v0

    .line 1243
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 1244
    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->setRestrictionEntry(Landroid/content/RestrictionEntry;)V

    goto :goto_0

    .line 1245
    :cond_5
    const-string v3, "key_incoming_calls"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIncomingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 1247
    if-eqz v0, :cond_6

    move v0, v1

    .line 1248
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "guest_incoming_call_enabled"

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 1247
    goto :goto_2

    :cond_7
    move v1, v2

    .line 1264
    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 424
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 426
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 429
    .local v2, packageFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    const-string v4, "package"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->makeExcludeAppInfos()V

    .line 436
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 437
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v4}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v4, v5, :cond_1

    .line 438
    :cond_0
    new-instance v4, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$1;)V

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    .line 441
    :cond_1
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 442
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 443
    .local v1, d:Landroid/graphics/drawable/Drawable;
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 391
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    return-void
.end method
