.class public Lcom/android/settings/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$Callbacks;)V
    .locals 1
    .parameter
    .parameter "callbacks"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 481
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    .line 490
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    .line 491
    return-void
.end method


# virtual methods
.method handleRebuildList()V
    .locals 12

    .prologue
    .line 558
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    .line 559
    :try_start_0
    iget-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v8, :cond_0

    .line 560
    monitor-exit v9

    .line 616
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 564
    .local v3, filter:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 565
    .local v1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 566
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 567
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 568
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    const/4 v8, -0x2

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 572
    if-eqz v3, :cond_1

    .line 573
    invoke-interface {v3}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->init()V

    .line 577
    :cond_1
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v8, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 578
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 579
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 581
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v4, filteredApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const-string v8, "ApplicationsState"

    const-string v9, "Rebuilding..."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 584
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 585
    .local v6, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_2

    invoke-interface {v3, v6}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 586
    :cond_2
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v8, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 587
    :try_start_2
    const-string v8, "ApplicationsState"

    const-string v10, "rebuild acquired lock"

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v8, v6}, Lcom/android/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 589
    .local v2, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 590
    const-string v8, "ApplicationsState"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    const-string v8, "ApplicationsState"

    const-string v10, "rebuild releasing lock"

    invoke-static {v8, v10}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 583
    .end local v2           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 568
    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v3           #filter:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    .end local v4           #filteredApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v5           #i:I
    .end local v6           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 579
    .restart local v1       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .restart local v3       #filter:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :catchall_1
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 593
    .restart local v0       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v4       #filteredApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .restart local v5       #i:I
    .restart local v6       #info:Landroid/content/pm/ApplicationInfo;
    :catchall_2
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    .line 597
    .end local v6           #info:Landroid/content/pm/ApplicationInfo;
    :cond_4
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 599
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    .line 600
    :try_start_6
    iget-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v8, :cond_5

    .line 601
    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    .line 602
    iget-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v8, :cond_6

    .line 603
    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 604
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 613
    :cond_5
    :goto_2
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 615
    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 606
    :cond_6
    :try_start_7
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 607
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 609
    .local v7, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v7}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 613
    .end local v7           #msg:Landroid/os/Message;
    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v8
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 506
    const-string v0, "ApplicationsState"

    const-string v1, "pause about to acquire lock..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 508
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    .line 510
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/applications/ApplicationsState;->mSessionsChanged:Z

    .line 511
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 512
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->doPauseIfNeededLocked()V

    .line 514
    :cond_0
    const-string v0, "ApplicationsState"

    const-string v2, "...pause releasing lock"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    monitor-exit v1

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebuild(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 11
    .parameter "filter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v6

    .line 521
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v7, v5, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 522
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 524
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 525
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 526
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 527
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 528
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 529
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 531
    .local v0, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v5, v0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 533
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0xfa

    add-long v3, v7, v9

    .line 538
    .local v3, waitend:J
    :goto_0
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 540
    .local v1, now:J
    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    .line 549
    .end local v1           #now:J
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 551
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v5

    .line 533
    .end local v3           #waitend:J
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 552
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 544
    .restart local v1       #now:J
    .restart local v3       #waitend:J
    :cond_2
    :try_start_5
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    sub-long v7, v3, v1

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 545
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 494
    const-string v0, "ApplicationsState"

    const-string v1, "resume about to acquire lock..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 496
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    .line 498
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/applications/ApplicationsState;->mSessionsChanged:Z

    .line 499
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 501
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    const-string v0, "ApplicationsState"

    const-string v1, "...resume releasing lock"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void

    .line 501
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method