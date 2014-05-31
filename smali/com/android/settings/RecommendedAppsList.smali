.class public Lcom/android/settings/RecommendedAppsList;
.super Landroid/app/ListFragment;
.source "RecommendedAppsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RecommendedAppsList$AlphaComparator;,
        Lcom/android/settings/RecommendedAppsList$AppListAdapter;
    }
.end annotation


# static fields
.field static MAX_RECOMMENDED_APPS:I

.field private static list_view:Landroid/widget/ListView;

.field private static mEditDirect:I

.field private static mEditValue:Ljava/lang/String;


# instance fields
.field private SavedApplist:Ljava/lang/String;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListAdapter:Lcom/android/settings/RecommendedAppsList$AppListAdapter;

.field private mExtraAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mMenuCancel:Landroid/view/MenuItem;

.field mMenuDone:Landroid/view/MenuItem;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSavedApplist:[Ljava/lang/String;

.field private mSavedApplist_Activity:[Ljava/lang/String;

.field private mSavedApplist_Package:[Ljava/lang/String;

.field private mSavedRecommendedAppsNums:I

.field private mTempApplist:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempCheckedApplist:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mapp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x5

    sput v0, Lcom/android/settings/RecommendedAppsList;->MAX_RECOMMENDED_APPS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/RecommendedAppsList;->mSavedRecommendedAppsNums:I

    .line 83
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    .line 85
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    .line 86
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mExtraList:Ljava/util/List;

    .line 87
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    .line 88
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    .line 89
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mapp:Ljava/util/List;

    .line 90
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Package:[Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Activity:[Ljava/lang/String;

    .line 354
    return-void
.end method

.method private SavedRecommendedAppsList()V
    .locals 6

    .prologue
    .line 369
    const-string v2, ""

    .line 370
    .local v2, mTempAppinfo:Ljava/lang/String;
    const-string v1, ""

    .line 371
    .local v1, mTempAppList:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 373
    .local v0, CheckedApplistData:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mTempAppinfo:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 375
    .restart local v2       #mTempAppinfo:Ljava/lang/String;
    const-string v3, "RecommendedAppList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTempCheckedApplist.get("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 380
    :cond_1
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 382
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mTempAppinfo:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 384
    .restart local v2       #mTempAppinfo:Ljava/lang/String;
    const-string v3, "RecommendedAppList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTempCheckedApplist.get("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 389
    :cond_3
    const-string v3, "RecommendedAppList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SavedRecommendedAppList mTempAppList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v3, "earphones"

    sget-object v4, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "recommended_apps_list_earphones"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 400
    :cond_4
    :goto_2
    return-void

    .line 395
    :cond_5
    const-string v3, "docking"

    sget-object v4, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "recommended_apps_list_dockings"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 397
    :cond_6
    const-string v3, "roaming"

    sget-object v4, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "recommended_apps_list_roaming"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/settings/RecommendedAppsList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsList;->getCheckedRecommendedAppNum()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/RecommendedAppsList;)Lcom/android/settings/RecommendedAppsList$AppListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppListAdapter:Lcom/android/settings/RecommendedAppsList$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/RecommendedAppsList;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/RecommendedAppsList;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/RecommendedAppsList;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getCheckedRecommendedAppNum()I
    .locals 6

    .prologue
    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, mCheckedAppNum:I
    const-string v2, ""

    .line 405
    .local v2, mCheckedAppinfo:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 407
    .local v0, CheckedData:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mCheckedAppinfo:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 409
    .restart local v2       #mCheckedAppinfo:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    :cond_1
    const-string v3, "RecommendedAppList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCheckedRecommendedAppNum mCheckedAppNum :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 145
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mPm:Landroid/content/pm/PackageManager;

    .line 148
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v6, LauncherIntent:Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraList:Ljava/util/List;

    .line 151
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    .line 156
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 158
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    const-string v1, "com.nttdocomo.android.docomo_market"

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "com.felicanetworks.mfm"

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 165
    .local v11, mAppinfo:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
    .end local v11           #mAppinfo:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    .line 168
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 167
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 168
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 176
    .end local v10           #j:I
    :cond_5
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    new-instance v7, Lcom/android/settings/RecommendedAppsList$AlphaComparator;

    invoke-direct {v7, p0}, Lcom/android/settings/RecommendedAppsList$AlphaComparator;-><init>(Lcom/android/settings/RecommendedAppsList;)V

    .line 179
    .local v7, alphaComparator:Lcom/android/settings/RecommendedAppsList$AlphaComparator;
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 181
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    .line 183
    const/4 v9, 0x0

    :goto_4
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_a

    .line 184
    const/4 v8, 0x0

    .line 185
    .local v8, checkedpackage:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 186
    .restart local v11       #mAppinfo:Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_5
    iget v0, p0, Lcom/android/settings/RecommendedAppsList;->mSavedRecommendedAppsNums:I

    if-ge v10, v0, :cond_8

    .line 187
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Package:[Ljava/lang/String;

    aget-object v1, v0, v10

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Activity:[Ljava/lang/String;

    aget-object v1, v0, v10

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v12, :cond_7

    .line 189
    :cond_6
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v8, 0x1

    .line 186
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 195
    :cond_8
    if-nez v8, :cond_9

    .line 196
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 199
    .end local v8           #checkedpackage:Z
    .end local v10           #j:I
    .end local v11           #mAppinfo:Ljava/lang/String;
    :cond_a
    new-instance v0, Lcom/android/settings/RecommendedAppsList$AppListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04017d

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/RecommendedAppsList$AppListAdapter;-><init>(Lcom/android/settings/RecommendedAppsList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppListAdapter:Lcom/android/settings/RecommendedAppsList$AppListAdapter;

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/RecommendedAppsList;->list_view:Landroid/widget/ListView;

    .line 202
    sget-object v0, Lcom/android/settings/RecommendedAppsList;->list_view:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mAppListAdapter:Lcom/android/settings/RecommendedAppsList$AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    sget-object v0, Lcom/android/settings/RecommendedAppsList;->list_view:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/RecommendedAppsList$1;

    invoke-direct {v1, p0}, Lcom/android/settings/RecommendedAppsList$1;-><init>(Lcom/android/settings/RecommendedAppsList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 234
    invoke-virtual {p0, v12}, Lcom/android/settings/RecommendedAppsList;->setHasOptionsMenu(Z)V

    .line 235
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 104
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "edit_value"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    .line 105
    const-string v5, "edit_direct"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/settings/RecommendedAppsList;->mEditDirect:I

    .line 107
    const-string v5, "earphones"

    sget-object v6, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "recommended_apps_list_earphones"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    .line 115
    :cond_0
    :goto_0
    const-string v5, "RecommendedAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SavedApplist :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 117
    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    .line 118
    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    array-length v5, v5

    iput v5, p0, Lcom/android/settings/RecommendedAppsList;->mSavedRecommendedAppsNums:I

    .line 121
    :cond_1
    iget v5, p0, Lcom/android/settings/RecommendedAppsList;->mSavedRecommendedAppsNums:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Package:[Ljava/lang/String;

    .line 122
    iget v5, p0, Lcom/android/settings/RecommendedAppsList;->mSavedRecommendedAppsNums:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Activity:[Ljava/lang/String;

    .line 123
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v5, p0, Lcom/android/settings/RecommendedAppsList;->mSavedRecommendedAppsNums:I

    if-ge v2, v5, :cond_4

    .line 124
    const/4 v3, 0x0

    .line 125
    .local v3, package_index:I
    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/16 v6, 0x2f

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 126
    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, package_name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    aget-object v5, v5, v2

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, activity_name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Package:[Ljava/lang/String;

    aput-object v4, v5, v2

    .line 129
    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Activity:[Ljava/lang/String;

    aput-object v0, v5, v2

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    .end local v0           #activity_name:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #package_index:I
    .end local v4           #package_name:Ljava/lang/String;
    :cond_2
    const-string v5, "docking"

    sget-object v6, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "recommended_apps_list_dockings"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    goto/16 :goto_0

    .line 111
    :cond_3
    const-string v5, "roaming"

    sget-object v6, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "recommended_apps_list_roaming"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    .restart local v2       #i:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 132
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 242
    .local v0, isTablet:Z
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 244
    const/4 v1, 0x2

    const v2, 0x7f090198

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mMenuCancel:Landroid/view/MenuItem;

    .line 245
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 247
    const v1, 0x7f0914db

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mMenuDone:Landroid/view/MenuItem;

    .line 248
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 249
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 136
    const v1, 0x7f04017c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, mView:Landroid/view/View;
    const v1, 0x7f0b03f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 274
    const-string v1, "RecommendedAppList"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    sget v1, Lcom/android/settings/RecommendedAppsList;->mEditDirect:I

    if-ne v1, v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 302
    :goto_0
    return v0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 287
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 288
    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsList;->SavedRecommendedAppsList()V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    sget v1, Lcom/android/settings/RecommendedAppsList;->mEditDirect:I

    if-ne v1, v0, :cond_3

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 297
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 302
    :cond_5
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 313
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 308
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 319
    return-void
.end method
