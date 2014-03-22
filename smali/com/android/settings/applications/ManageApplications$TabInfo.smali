.class public Lcom/android/settings/applications/ManageApplications$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


# instance fields
.field private mAppStorage:J

.field public mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field public final mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field public final mClickListener:Lcom/android/settings/applications/AppClickListener;

.field private mColorBar:Lcom/android/settings/applications/LinearColorBar;

.field public final mComputingSizeStr:Ljava/lang/CharSequence;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field public final mFilter:I

.field private mFreeStorage:J

.field private mFreeStorageText:Landroid/widget/TextView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public final mLabel:Ljava/lang/CharSequence;

.field private mLastFreeStorage:J

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field public final mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field public final mOwner:Lcom/android/settings/applications/ManageApplications;

.field public mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

.field private final mSavedInstanceState:Landroid/os/Bundle;

.field private mStorageChartLabel:Landroid/widget/TextView;

.field private mTotalStorage:J

.field private mUsedStorageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V
    .locals 2
    .parameter "owner"
    .parameter "apps"
    .parameter "label"
    .parameter "listType"
    .parameter "clickListener"
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v0, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    iput-wide v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 245
    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$TabInfo$1;-><init>(Lcom/android/settings/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 254
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    .line 255
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 256
    iput-object p3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 257
    iput p4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    .line 258
    packed-switch p4, :pswitch_data_0

    .line 263
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    .line 265
    :goto_0
    iput-object p5, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settings/applications/AppClickListener;

    .line 266
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0907b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 267
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0907b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 268
    iput-object p6, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    .line 269
    return-void

    .line 259
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 260
    :pswitch_2
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 261
    :pswitch_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 262
    :pswitch_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method applyCurrentStorage()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    .line 451
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 455
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 456
    .local v0, bidiFormatter:Landroid/text/BidiFormatter;
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    iget-wide v5, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iget-wide v7, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    iget-wide v6, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    long-to-float v6, v6

    iget-wide v7, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    iget-wide v7, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    long-to-float v7, v7

    iget-wide v8, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 458
    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iget-wide v6, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    sub-long v2, v4, v6

    .line 459
    .local v2, usedStorage:J
    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    .line 460
    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    .line 461
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, sizeStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907d6

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v1, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    .end local v1           #sizeStr:Ljava/lang/String;
    :cond_2
    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    iget-wide v6, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 467
    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    .line 468
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .restart local v1       #sizeStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907d5

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v1, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 474
    .end local v0           #bidiFormatter:Landroid/text/BidiFormatter;
    .end local v1           #sizeStr:Ljava/lang/String;
    .end local v2           #usedStorage:J
    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    invoke-virtual {v4, v10, v10, v10}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 475
    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4

    .line 476
    iput-wide v8, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    .line 477
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :cond_4
    iget-wide v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 480
    iput-wide v8, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    .line 481
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "contentParent"
    .parameter "contentChild"

    .prologue
    const/4 v4, 0x1

    .line 277
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 324
    :goto_0
    return-object v2

    .line 281
    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 282
    iget v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, v4, :cond_4

    const v2, 0x7f0400f9

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 285
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0275

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    .line 286
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0270

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    .line 288
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, emptyView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 292
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 295
    :cond_1
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 296
    invoke-virtual {v1, v4}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 297
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 298
    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 299
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    .line 300
    new-instance v2, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iget v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplications$TabInfo;I)V

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 301
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 302
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 303
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0b0271

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/LinearColorBar;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    .line 304
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0b0273

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    .line 305
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0b0272

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    .line 306
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0b0274

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    .line 309
    iget v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 310
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0900ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    .line 318
    .end local v0           #emptyView:Landroid/view/View;
    .end local v1           #lv:Landroid/widget/ListView;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0279

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningProcessesView;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    .line 320
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v2, :cond_3

    .line 321
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 324
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    .line 282
    :cond_4
    const v2, 0x7f0400f6

    goto/16 :goto_1

    .line 313
    .restart local v0       #emptyView:Landroid/view/View;
    .restart local v1       #lv:Landroid/widget/ListView;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09079a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public detachView()V
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 330
    .local v0, group:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 334
    .end local v0           #group:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 496
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 498
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settings/applications/AppClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/settings/applications/AppClickListener;->onItemClick(Lcom/android/settings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 489
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 358
    :cond_1
    return-void
.end method

.method public resume(I)V
    .locals 5
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x0

    .line 337
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 342
    .local v0, haveData:Z
    if-eqz v0, :cond_2

    .line 343
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    .end local v0           #haveData:Z
    :cond_1
    :goto_0
    return-void

    .line 346
    .restart local v0       #haveData:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContainerService(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .parameter "containerService"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 274
    return-void
.end method

.method updateStorageUsage()V
    .locals 23

    .prologue
    .line 361
    const/4 v8, 0x0

    .line 362
    .local v8, extPath:Ljava/lang/String;
    const/4 v13, 0x0

    .line 364
    .local v13, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    if-nez v17, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 368
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 369
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 370
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "storage"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageManager;

    .line 377
    .local v12, sm:Landroid/os/storage/StorageManager;
    if-nez v12, :cond_2

    .line 378
    const-string v17, "ManageApplications"

    const-string v18, "Couldn\'t get StorageManager Service"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual {v12}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v16

    .line 383
    .local v16, storageVolumes:[Landroid/os/storage/StorageVolume;
    move-object/from16 v5, v16

    .local v5, arr$:[Landroid/os/storage/StorageVolume;
    array-length v11, v5

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_4

    aget-object v15, v5, v10

    .line 384
    .local v15, storageVolume:Landroid/os/storage/StorageVolume;
    const-string v17, "sd"

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 385
    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 386
    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 383
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 395
    .end local v15           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    const-string v17, "mounted"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 396
    const-string v17, "ManageApplications"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "It is mounted("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v14

    .line 400
    .local v14, stats:[J
    const/16 v17, 0x0

    aget-wide v17, v14, v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 401
    const/16 v17, 0x1

    aget-wide v17, v14, v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    .end local v14           #stats:[J
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    .line 412
    .local v3, N:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v3, :cond_a

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 414
    .local v4, ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    move-wide/from16 v19, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 412
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 402
    .end local v3           #N:I
    .end local v4           #ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v9           #i:I
    :catch_0
    move-exception v6

    .line 403
    .local v6, e:Ljava/lang/IllegalStateException;
    const-string v17, "ManageApplications"

    const-string v18, "Problem in function getFileSystemStats(String path)"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 405
    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    .line 406
    .local v6, e:Landroid/os/RemoteException;
    const-string v17, "ManageApplications"

    const-string v18, "Problem in container service"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 419
    .end local v5           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v6           #e:Landroid/os/RemoteException;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #sm:Landroid/os/storage/StorageManager;
    .end local v16           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 421
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v14

    .line 423
    .restart local v14       #stats:[J
    const/16 v17, 0x0

    aget-wide v17, v14, v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 424
    const/16 v17, 0x1

    aget-wide v17, v14, v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 431
    .end local v14           #stats:[J
    :cond_7
    :goto_4
    const/4 v7, 0x0

    .line 433
    .local v7, emulatedStorage:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    .line 435
    .restart local v3       #N:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_5
    if-ge v9, v3, :cond_9

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 437
    .restart local v4       #ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    move-wide/from16 v19, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 438
    if-eqz v7, :cond_8

    .line 439
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    move-wide/from16 v19, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 435
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 425
    .end local v3           #N:I
    .end local v4           #ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v7           #emulatedStorage:Z
    .end local v9           #i:I
    :catch_2
    move-exception v6

    .line 426
    .restart local v6       #e:Landroid/os/RemoteException;
    const-string v17, "ManageApplications"

    const-string v18, "Problem in container service"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 443
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v7       #emulatedStorage:Z
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v19

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 446
    .end local v7           #emulatedStorage:Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    goto/16 :goto_0
.end method
