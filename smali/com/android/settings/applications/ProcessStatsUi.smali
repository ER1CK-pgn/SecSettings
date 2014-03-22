.class public Lcom/android/settings/applications/ProcessStatsUi;
.super Landroid/preference/PreferenceFragment;
.source "ProcessStatsUi.java"


# static fields
.field public static final BACKGROUND_AND_SYSTEM_PROC_STATES:[I

.field public static final CACHED_PROC_STATES:[I

.field public static final FOREGROUND_PROC_STATES:[I

.field private static sDurationLabels:[I

.field private static sDurations:[J

.field static final sEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Lcom/android/internal/app/ProcessStats;


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mDuration:J

.field private mDurationMenus:[Landroid/view/MenuItem;

.field private mLastDuration:J

.field mMaxWeight:J

.field mMemState:I

.field private mMemStatusPref:Landroid/preference/Preference;

.field mProcessStats:Lcom/android/internal/app/IProcessStats;

.field private mShowSystem:Z

.field private mShowSystemMenu:Landroid/view/MenuItem;

.field mStats:Lcom/android/internal/app/ProcessStats;

.field private mStatsType:I

.field mTotalTime:J

.field private mTypeBackgroundMenu:Landroid/view/MenuItem;

.field private mTypeCachedMenu:Landroid/view/MenuItem;

.field private mTypeForegroundMenu:Landroid/view/MenuItem;

.field mUm:Landroid/os/UserManager;

.field private mUseUss:Z

.field private mUseUssMenu:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 72
    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsUi$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    .line 116
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    .line 120
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurationLabels:[I

    .line 306
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    .line 313
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    .line 317
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    return-void

    .line 116
    :array_0
    .array-data 0x8
        0xc0t 0x65t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x31t 0xf7t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xc8t 0x40t 0x2t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xf6t 0xd3t 0x4t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 120
    :array_1
    .array-data 0x4
        0x8bt 0x9t 0x9t 0x7ft
        0x8ct 0x9t 0x9t 0x7ft
        0x8dt 0x9t 0x9t 0x7ft
        0x8et 0x9t 0x9t 0x7ft
    .end array-data

    .line 306
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 317
    :array_3
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/MenuItem;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    return-void
.end method

.method private load()V
    .locals 6

    .prologue
    .line 475
    :try_start_0
    iget-wide v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    iput-wide v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mLastDuration:J

    .line 476
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    invoke-interface {v3}, Lcom/android/internal/app/IProcessStats;->getCurrentMemoryState()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    .line 477
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-interface {v3, v4, v5}, Lcom/android/internal/app/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 478
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    new-instance v3, Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 479
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 480
    .local v1, is:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 485
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 486
    const-string v3, "ProcessStatsUi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure reading process stats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, v5, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 491
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_1
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ProcessStatsUi"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 483
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private refreshStats()V
    .locals 46

    .prologue
    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->updateMenus()V

    .line 325
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mLastDuration:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 326
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->load()V

    .line 331
    :cond_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_2

    .line 332
    sget-object v40, Lcom/android/settings/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    .line 333
    .local v40, stats:[I
    const v41, 0x7f090989

    .line 343
    .local v41, statsLabel:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 344
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 346
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOrder(I)V

    .line 347
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v7, v7, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v9, v9, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v7, v9

    long-to-double v7, v7

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v16

    .line 351
    .local v16, durationString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0099

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v26

    .line 352
    .local v26, memStates:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    if-ltz v6, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    move-object/from16 v0, v26

    array-length v7, v0

    if-ge v6, v7, :cond_5

    .line 353
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    aget-object v27, v26, v6

    .line 357
    .local v27, memString:Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f090980

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v9, v10

    const/4 v10, 0x1

    aput-object v16, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f090981

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v27, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    new-instance v42, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v6, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-direct {v0, v6, v7, v1}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 375
    .local v42, totals:Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 377
    .local v11, now:J
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    .line 379
    .local v33, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v8, v8, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v9, v9, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    invoke-static/range {v5 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    .line 382
    new-instance v15, Lcom/android/settings/applications/LinearColorPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v15, v6}, Lcom/android/settings/applications/LinearColorPreference;-><init>(Landroid/content/Context;)V

    .line 383
    .local v15, colors:Lcom/android/settings/applications/LinearColorPreference;
    const/4 v6, -0x1

    invoke-virtual {v15, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 386
    const/4 v6, 0x4

    new-array v0, v6, [J

    move-object/from16 v28, v0

    .line 387
    .local v28, memTimes:[J
    const/16 v22, 0x0

    .local v22, iscreen:I
    :goto_2
    const/16 v6, 0x8

    move/from16 v0, v22

    if-ge v0, v6, :cond_7

    .line 388
    const/16 v19, 0x0

    .local v19, imem:I
    :goto_3
    const/4 v6, 0x4

    move/from16 v0, v19

    if-ge v0, v6, :cond_6

    .line 389
    add-int v39, v19, v22

    .line 390
    .local v39, state:I
    aget-wide v6, v28, v19

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    aget-wide v8, v8, v39

    add-long/2addr v6, v8

    aput-wide v6, v28, v19

    .line 388
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 334
    .end local v11           #now:J
    .end local v15           #colors:Lcom/android/settings/applications/LinearColorPreference;
    .end local v16           #durationString:Ljava/lang/String;
    .end local v19           #imem:I
    .end local v22           #iscreen:I
    .end local v26           #memStates:[Ljava/lang/CharSequence;
    .end local v27           #memString:Ljava/lang/CharSequence;
    .end local v28           #memTimes:[J
    .end local v33           #pm:Landroid/content/pm/PackageManager;
    .end local v39           #state:I
    .end local v40           #stats:[I
    .end local v41           #statsLabel:I
    .end local v42           #totals:Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :cond_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    .line 335
    sget-object v40, Lcom/android/settings/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    .line 336
    .restart local v40       #stats:[I
    const v41, 0x7f090987

    .restart local v41       #statsLabel:I
    goto/16 :goto_0

    .line 338
    .end local v40           #stats:[I
    .end local v41           #statsLabel:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-eqz v6, :cond_4

    sget-object v40, Lcom/android/settings/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    .line 340
    .restart local v40       #stats:[I
    :goto_4
    const v41, 0x7f090988

    .restart local v41       #statsLabel:I
    goto/16 :goto_0

    .line 338
    .end local v40           #stats:[I
    .end local v41           #statsLabel:I
    :cond_4
    sget-object v40, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    goto :goto_4

    .line 355
    .restart local v16       #durationString:Ljava/lang/String;
    .restart local v26       #memStates:[Ljava/lang/CharSequence;
    .restart local v40       #stats:[I
    .restart local v41       #statsLabel:I
    :cond_5
    const-string v27, "?"

    .restart local v27       #memString:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 387
    .restart local v11       #now:J
    .restart local v15       #colors:Lcom/android/settings/applications/LinearColorPreference;
    .restart local v19       #imem:I
    .restart local v22       #iscreen:I
    .restart local v28       #memTimes:[J
    .restart local v33       #pm:Landroid/content/pm/PackageManager;
    .restart local v42       #totals:Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :cond_6
    add-int/lit8 v22, v22, 0x4

    goto :goto_2

    .line 394
    .end local v19           #imem:I
    :cond_7
    const/4 v6, 0x3

    aget-wide v6, v28, v6

    long-to-float v6, v6

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    const/4 v7, 0x2

    aget-wide v7, v28, v7

    const/4 v9, 0x1

    aget-wide v9, v28, v9

    add-long/2addr v7, v9

    long-to-float v7, v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    long-to-float v8, v8

    div-float/2addr v7, v8

    const/4 v8, 0x0

    aget-wide v8, v28, v8

    long-to-float v8, v8

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    long-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v15, v6, v7, v8}, Lcom/android/settings/applications/LinearColorPreference;->setRatios(FFF)V

    .line 399
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v36, procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry;>;"
    new-instance v35, Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v6, v6, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move-object/from16 v0, v35

    invoke-direct {v0, v6}, Landroid/util/ArrayMap;-><init>(I)V

    .line 412
    .local v35, processes:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/applications/ProcStatsEntry;>;"
    const/16 v20, 0x0

    .local v20, ip:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v6, v6, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .local v13, N:I
    :goto_5
    move/from16 v0, v20

    if-ge v0, v13, :cond_a

    .line 413
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v6, v6, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/util/SparseArray;

    .line 414
    .local v44, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v23, 0x0

    .local v23, iu:I
    :goto_6
    invoke-virtual/range {v44 .. v44}, Landroid/util/SparseArray;->size()I

    move-result v6

    move/from16 v0, v23

    if-ge v0, v6, :cond_9

    .line 415
    new-instance v17, Lcom/android/settings/applications/ProcStatsEntry;

    move-object/from16 v0, v44

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v9, 0x8

    if-ne v7, v9, :cond_8

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-direct {v0, v6, v1, v8, v7}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;ZZ)V

    .line 417
    .local v17, ent:Lcom/android/settings/applications/ProcStatsEntry;
    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 415
    .end local v17           #ent:Lcom/android/settings/applications/ProcStatsEntry;
    :cond_8
    const/4 v7, 0x0

    goto :goto_7

    .line 412
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 422
    .end local v23           #iu:I
    .end local v44           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_a
    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    move-object/from16 v0, v36

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 423
    :goto_8
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x3c

    if-le v6, v7, :cond_b

    .line 424
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 427
    :cond_b
    const-wide/16 v24, 0x0

    .line 428
    .local v24, maxWeight:J
    const/16 v18, 0x0

    .local v18, i:I
    if-eqz v36, :cond_d

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_9
    move/from16 v0, v18

    if-ge v0, v13, :cond_e

    .line 429
    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ProcStatsEntry;

    .line 430
    .local v5, proc:Lcom/android/settings/applications/ProcStatsEntry;
    iget-wide v6, v5, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    cmp-long v6, v24, v6

    if-gez v6, :cond_c

    .line 431
    iget-wide v0, v5, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    move-wide/from16 v24, v0

    .line 428
    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .end local v5           #proc:Lcom/android/settings/applications/ProcStatsEntry;
    :cond_d
    const/4 v13, 0x0

    goto :goto_9

    .line 434
    :cond_e
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    .line 436
    const/16 v18, 0x0

    if-eqz v36, :cond_11

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_a
    move/from16 v0, v18

    if-ge v0, v13, :cond_f

    .line 437
    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ProcStatsEntry;

    .line 438
    .restart local v5       #proc:Lcom/android/settings/applications/ProcStatsEntry;
    iget-wide v6, v5, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    long-to-double v6, v6

    move-wide/from16 v0, v24

    long-to-double v8, v0

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4059

    mul-double v31, v6, v8

    .line 439
    .local v31, percentOfWeight:D
    iget-wide v6, v5, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    long-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    long-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4059

    mul-double v29, v6, v8

    .line 440
    .local v29, percentOfTime:D
    const-wide/high16 v6, 0x3ff0

    cmpg-double v6, v31, v6

    if-gez v6, :cond_12

    .line 456
    .end local v5           #proc:Lcom/android/settings/applications/ProcStatsEntry;
    .end local v29           #percentOfTime:D
    .end local v31           #percentOfWeight:D
    :cond_f
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_17

    .line 457
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v6, v6, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v13

    :goto_b
    move/from16 v0, v20

    if-ge v0, v13, :cond_17

    .line 458
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v6, v6, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/util/SparseArray;

    .line 459
    .local v43, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v23, 0x0

    .restart local v23       #iu:I
    :goto_c
    invoke-virtual/range {v43 .. v43}, Landroid/util/SparseArray;->size()I

    move-result v6

    move/from16 v0, v23

    if-ge v0, v6, :cond_16

    .line 460
    move-object/from16 v0, v43

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 461
    .local v37, ps:Lcom/android/internal/app/ProcessStats$PackageState;
    const/16 v21, 0x0

    .local v21, is:I
    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .local v14, NS:I
    :goto_d
    move/from16 v0, v21

    if-ge v0, v14, :cond_15

    .line 462
    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 463
    .local v38, ss:Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    if-eqz v6, :cond_10

    .line 464
    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/applications/ProcStatsEntry;

    .line 465
    .restart local v17       #ent:Lcom/android/settings/applications/ProcStatsEntry;
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcStatsEntry;->addService(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    .line 461
    .end local v17           #ent:Lcom/android/settings/applications/ProcStatsEntry;
    :cond_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_d

    .line 436
    .end local v14           #NS:I
    .end local v21           #is:I
    .end local v23           #iu:I
    .end local v37           #ps:Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v38           #ss:Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v43           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 441
    .restart local v5       #proc:Lcom/android/settings/applications/ProcStatsEntry;
    .restart local v29       #percentOfTime:D
    .restart local v31       #percentOfWeight:D
    :cond_12
    new-instance v34, Lcom/android/settings/applications/ProcessStatsPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v34

    invoke-direct {v0, v6, v7, v5}, Lcom/android/settings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 442
    .local v34, pref:Lcom/android/settings/applications/ProcessStatsPreference;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    sget-object v8, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x8

    if-ne v7, v10, :cond_14

    const/4 v10, 0x1

    :goto_e
    move-object/from16 v7, v42

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;ZZ)V

    .line 444
    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Lcom/android/settings/applications/ProcStatsEntry;->retrieveUiData(Landroid/content/pm/PackageManager;)V

    .line 445
    iget-object v6, v5, Lcom/android/settings/applications/ProcStatsEntry;->mUiLabel:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v6, v5, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_13

    .line 447
    iget-object v6, v5, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 449
    :cond_13
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 450
    move-object/from16 v0, v34

    move-wide/from16 v1, v31

    move-wide/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/ProcessStatsPreference;->setPercent(DD)V

    .line 451
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 452
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    const/16 v7, 0x3d

    if-gt v6, v7, :cond_f

    .line 436
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_a

    .line 442
    :cond_14
    const/4 v10, 0x0

    goto :goto_e

    .line 459
    .end local v5           #proc:Lcom/android/settings/applications/ProcStatsEntry;
    .end local v29           #percentOfTime:D
    .end local v31           #percentOfWeight:D
    .end local v34           #pref:Lcom/android/settings/applications/ProcessStatsPreference;
    .restart local v14       #NS:I
    .restart local v21       #is:I
    .restart local v23       #iu:I
    .restart local v37       #ps:Lcom/android/internal/app/ProcessStats$PackageState;
    .restart local v43       #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_15
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_c

    .line 457
    .end local v14           #NS:I
    .end local v21           #is:I
    .end local v37           #ps:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_16
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_b

    .line 471
    .end local v23           #iu:I
    .end local v43           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 127
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    if-eqz p1, :cond_0

    .line 130
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sStatsXfer:Lcom/android/internal/app/ProcessStats;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 133
    :cond_0
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 134
    const-string v0, "procstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IProcessStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    .line 136
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUm:Landroid/os/UserManager;

    .line 137
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "mem_status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    .line 139
    if-eqz p1, :cond_2

    const-string v0, "duration"

    sget-object v1, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v4, v1, v2

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    .line 140
    if-eqz p1, :cond_3

    const-string v0, "show_system"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    .line 141
    if-eqz p1, :cond_1

    const-string v0, "use_uss"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    .line 142
    if-eqz p1, :cond_4

    const-string v0, "stats_type"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 145
    return-void

    .line 139
    :cond_2
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v0, v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 140
    goto :goto_1

    :cond_4
    move v0, v3

    .line 142
    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 195
    const v3, 0x7f09097a

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0201dd

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x72

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    .line 198
    .local v1, refresh:Landroid/view/MenuItem;
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 200
    const v3, 0x7f09098a

    invoke-interface {p1, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 201
    .local v2, subMenu:Landroid/view/SubMenu;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    add-int/lit8 v4, v0, 0x2

    sget-object v5, Lcom/android/settings/applications/ProcessStatsUi;->sDurationLabels:[I

    aget v5, v5, v0

    invoke-interface {v2, v6, v4, v6, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v4

    aput-object v4, v3, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    const/4 v3, 0x6

    const v4, 0x7f09098f

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x73

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    .line 208
    const/4 v3, 0x7

    const v4, 0x7f090990

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x75

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    .line 211
    const v3, 0x7f090991

    invoke-interface {p1, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 212
    const/16 v3, 0x8

    const v4, 0x7f090992

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x62

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    .line 216
    const/16 v3, 0x9

    const v4, 0x7f090993

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x66

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    .line 220
    const/16 v3, 0xa

    const v4, 0x7f090994

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->updateMenus()V

    .line 233
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 170
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sStatsXfer:Lcom/android/internal/app/ProcessStats;

    .line 173
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 272
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 292
    :pswitch_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 293
    sget-object v2, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    add-int/lit8 v3, v0, -0x2

    aget-wide v2, v2, v3

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    .line 294
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    :cond_0
    move v2, v1

    .line 296
    :goto_0
    return v2

    .line 274
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 275
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    .line 278
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    .line 279
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    .line 282
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    .line 283
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    .line 288
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    .line 289
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 156
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 177
    instance-of v0, p2, Lcom/android/settings/applications/ProcessStatsPreference;

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return v6

    :cond_0
    move-object v0, p2

    .line 181
    check-cast v0, Lcom/android/settings/applications/ProcessStatsPreference;

    .line 182
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 183
    const-string v1, "entry"

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcessStatsPreference;->getEntry()Lcom/android/settings/applications/ProcStatsEntry;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 184
    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    const-string v0, "max_weight"

    iget-wide v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    invoke-virtual {v2, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 186
    const-string v0, "total_time"

    iget-wide v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    invoke-virtual {v2, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 187
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090949

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 190
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    .line 151
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    const-string v0, "duration"

    iget-wide v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 162
    const-string v0, "show_system"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    const-string v0, "stats_type"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    return-void
.end method

.method updateMenus()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, closestIndex:I
    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v9, v6, v8

    iget-wide v11, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 238
    .local v0, closestDelta:J
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    if-ge v5, v13, :cond_1

    .line 239
    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v9, v6, v5

    iget-wide v11, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 240
    .local v3, delta:J
    cmp-long v6, v3, v0

    if-gez v6, :cond_0

    .line 241
    move-wide v0, v3

    .line 242
    move v2, v5

    .line 238
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 245
    .end local v3           #delta:J
    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v13, :cond_4

    .line 246
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    aget-object v6, v6, v5

    if-eqz v6, :cond_2

    .line 247
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    aget-object v9, v6, v5

    if-ne v5, v2, :cond_3

    move v6, v7

    :goto_2
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 245
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v6, v8

    .line 247
    goto :goto_2

    .line 250
    :cond_4
    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v9, v6, v2

    iput-wide v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    .line 251
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_5

    .line 252
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    iget-boolean v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 253
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    if-ne v6, v14, :cond_a

    move v6, v7

    :goto_3
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 255
    :cond_5
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_6

    .line 256
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    iget-boolean v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 258
    :cond_6
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_7

    .line 259
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    if-ne v6, v14, :cond_b

    move v6, v7

    :goto_4
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 261
    :cond_7
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_8

    .line 262
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x9

    if-ne v6, v10, :cond_c

    move v6, v7

    :goto_5
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 264
    :cond_8
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_9

    .line 265
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    iget v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_d

    :goto_6
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 267
    :cond_9
    return-void

    :cond_a
    move v6, v8

    .line 253
    goto :goto_3

    :cond_b
    move v6, v8

    .line 259
    goto :goto_4

    :cond_c
    move v6, v8

    .line 262
    goto :goto_5

    :cond_d
    move v7, v8

    .line 265
    goto :goto_6
.end method
