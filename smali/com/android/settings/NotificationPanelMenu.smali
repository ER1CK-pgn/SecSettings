.class public Lcom/android/settings/NotificationPanelMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
    }
.end annotation


# static fields
.field private static mListView:Landroid/widget/ListView;


# instance fields
.field private idxGap:I

.field private mActiveAppsMinNum:I

.field private mActiveAppsNum:I

.field private mActiveNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAvailBtnLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableBtnArea:Landroid/widget/LinearLayout;

.field private mBrightness:Landroid/preference/CheckBoxPreference;

.field private mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

.field private mCandidateNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertPanelItemstring:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFooterView:Landroid/view/View;

.field private mCurrentOrientation:I

.field mHandler:Landroid/os/Handler;

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Landroid/view/View;

.field private mNotificationPanelArea:Landroid/widget/LinearLayout;

.field private mNotificationPanelLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field mPanelBarDragListener:Landroid/view/View$OnDragListener;

.field private mRecommendedApps:Landroid/preference/SwitchPreferenceScreen;

.field private mSalesCode:Ljava/lang/String;

.field mSetKeyListenerRunnable:Ljava/lang/Runnable;

.field private mShadowBuilder:Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

.field private mStartFromSearch:Z

.field mfakePanelDragListener:Landroid/view/View$OnDragListener;

.field private resetBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    .line 97
    iput-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    .line 100
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    .line 101
    iput v1, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    .line 102
    iput v1, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    .line 114
    iput-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;

    .line 118
    iput-boolean v1, p0, Lcom/android/settings/NotificationPanelMenu;->mStartFromSearch:Z

    .line 120
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/NotificationPanelMenu$1;-><init>(Lcom/android/settings/NotificationPanelMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    .line 127
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$2;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 137
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$3;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$3;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    .line 193
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$4;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$4;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    .line 294
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mHandler:Landroid/os/Handler;

    .line 295
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$5;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$5;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mSetKeyListenerRunnable:Ljava/lang/Runnable;

    .line 810
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NotificationPanelMenu;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/NotificationPanelMenu;)Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/NotificationPanelMenu;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    sput-object p0, Lcom/android/settings/NotificationPanelMenu;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/NotificationPanelMenu;Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;)Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/NotificationPanelMenu;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->resetBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/NotificationPanelMenu;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/NotificationPanelMenu;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->resetPanel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/NotificationPanelMenu;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/NotificationPanelMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/NotificationPanelMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByPanel(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByBar(Landroid/view/View;)V

    return-void
.end method

.method private changeQuickSettingsByBar(Landroid/view/View;)V
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 629
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 630
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    move-object v1, v0

    .line 631
    :goto_0
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-lt v2, v0, :cond_1

    .line 632
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    sub-int v0, v2, v0

    move v2, v0

    move v3, v4

    .line 639
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 640
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-ge v7, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    move-object v6, v0

    .line 641
    :goto_2
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-lt v7, v0, :cond_3

    .line 642
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    sub-int v0, v7, v0

    move v7, v0

    move v0, v4

    .line 648
    :goto_3
    const-string v8, "NotificationPanelMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeQuickSettingsByBar() - longClickedIdx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / dropIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    if-nez v3, :cond_4

    if-ne v0, v4, :cond_4

    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    iget v3, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    if-lt v0, v3, :cond_4

    .line 651
    const v0, 0x7f091413

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 664
    :goto_4
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_0

    :cond_1
    move v3, v5

    .line 635
    goto :goto_1

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    move-object v6, v0

    goto :goto_2

    :cond_3
    move v0, v5

    .line 645
    goto :goto_3

    .line 656
    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 657
    if-ge v2, v7, :cond_5

    if-ne v1, v6, :cond_5

    .line 658
    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v6, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 663
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->saveAppslist()V

    goto :goto_4

    .line 660
    :cond_5
    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5
.end method

.method private changeQuickSettingsByPanel(Landroid/view/View;)V
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 669
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 670
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    move-object v1, v0

    .line 671
    :goto_0
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-lt v2, v0, :cond_1

    .line 672
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    sub-int v0, v2, v0

    move v2, v0

    move v3, v4

    .line 679
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 680
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-ge v7, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    move-object v6, v0

    .line 681
    :goto_2
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-lt v7, v0, :cond_3

    .line 682
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    sub-int v0, v7, v0

    move v7, v4

    .line 688
    :goto_3
    const-string v8, "NotificationPanelMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeQuickSettingsByPanel() - longClickedIdx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / dropIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-direct {p0, v6, v0}, Lcom/android/settings/NotificationPanelMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 691
    if-nez v3, :cond_4

    if-ne v7, v4, :cond_4

    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    iget v3, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    if-lt v0, v3, :cond_4

    .line 692
    const v0, 0x7f091413

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 703
    :goto_4
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_0

    :cond_1
    move v3, v5

    .line 675
    goto :goto_1

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    move-object v6, v0

    goto :goto_2

    :cond_3
    move v0, v7

    move v7, v5

    .line 685
    goto :goto_3

    .line 696
    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 697
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->saveAppslist()V

    goto :goto_4

    .line 700
    :cond_5
    invoke-direct {p0, v1, v2, v6, v0}, Lcom/android/settings/NotificationPanelMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto :goto_5
.end method

.method private displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 24
    .parameter "mode"
    .parameter "oneLinePanelNum"
    .parameter "totalPanelLines"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p4, panelLayoutList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .local p5, panelViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, panelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v21, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 466
    .local v9, inflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 468
    .local v13, packageName:Ljava/lang/String;
    mul-int v20, p2, p3

    .line 469
    .local v20, totalPanelNum:I
    if-nez p1, :cond_0

    const/4 v6, 0x0

    .line 471
    .local v6, gap:I
    :goto_0
    const/4 v7, 0x0

    .line 472
    .local v7, idx:I
    const/4 v7, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v7, v0, :cond_5

    .line 473
    const v21, 0x7f040176

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 474
    .local v19, panelView:Landroid/view/View;
    const v21, 0x7f0b02c6

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 475
    .local v14, panel:Landroid/widget/LinearLayout;
    const v21, 0x7f0b02b8

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 476
    .local v16, panelImageView:Landroid/widget/ImageView;
    const v21, 0x7f0b02ba

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 478
    .local v18, panelTextView:Landroid/widget/TextView;
    const v21, 0x7f040177

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 479
    .local v12, overlayedPanelView:Landroid/view/View;
    const v21, 0x7f0b02c8

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 480
    .local v15, panelBar:Landroid/widget/ImageView;
    const v21, 0x7f0b02c9

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 483
    .local v5, fakePanel:Landroid/view/View;
    add-int v21, v7, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 484
    add-int v21, v7, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 485
    add-int v21, v7, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 486
    const-string v21, "NotificationPanelMenu"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "idx: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v21, "NotificationPanelMenu"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "gap: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v21, "NotificationPanelMenu"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "tag: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int v23, v7, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v7}, Lcom/android/settings/NotificationPanelMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 491
    const v21, 0x7f02042c

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 512
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 515
    div-int v4, v7, p2

    .line 516
    .local v4, containerIdx:I
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 517
    .local v3, container:Landroid/widget/FrameLayout;
    const v21, 0x7f0b03c1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 518
    .local v11, notificationPanelLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 519
    const v21, 0x7f0b03c2

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 520
    .local v10, notificationPanelBarLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 522
    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 469
    .end local v3           #container:Landroid/widget/FrameLayout;
    .end local v4           #containerIdx:I
    .end local v5           #fakePanel:Landroid/view/View;
    .end local v6           #gap:I
    .end local v7           #idx:I
    .end local v10           #notificationPanelBarLayout:Landroid/widget/LinearLayout;
    .end local v11           #notificationPanelLayout:Landroid/widget/LinearLayout;
    .end local v12           #overlayedPanelView:Landroid/view/View;
    .end local v14           #panel:Landroid/widget/LinearLayout;
    .end local v15           #panelBar:Landroid/widget/ImageView;
    .end local v16           #panelImageView:Landroid/widget/ImageView;
    .end local v18           #panelTextView:Landroid/widget/TextView;
    .end local v19           #panelView:Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    goto/16 :goto_0

    .line 493
    .restart local v5       #fakePanel:Landroid/view/View;
    .restart local v6       #gap:I
    .restart local v7       #idx:I
    .restart local v12       #overlayedPanelView:Landroid/view/View;
    .restart local v14       #panel:Landroid/widget/LinearLayout;
    .restart local v15       #panelBar:Landroid/widget/ImageView;
    .restart local v16       #panelImageView:Landroid/widget/ImageView;
    .restart local v18       #panelTextView:Landroid/widget/TextView;
    .restart local v19       #panelView:Landroid/view/View;
    :cond_1
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 497
    .local v17, panelText:Ljava/lang/String;
    move-object/from16 v8, v17

    .line 498
    .local v8, imgResourceName:Ljava/lang/String;
    const-string v21, "notification_panel_nfc"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 499
    const-string v21, "ATT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mSalesCode:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string v21, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mSalesCode:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 500
    :cond_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_att"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 506
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "drawable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "string"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto/16 :goto_2

    .line 501
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 502
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_kor"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 524
    .end local v5           #fakePanel:Landroid/view/View;
    .end local v8           #imgResourceName:Ljava/lang/String;
    .end local v12           #overlayedPanelView:Landroid/view/View;
    .end local v14           #panel:Landroid/widget/LinearLayout;
    .end local v15           #panelBar:Landroid/widget/ImageView;
    .end local v16           #panelImageView:Landroid/widget/ImageView;
    .end local v17           #panelText:Ljava/lang/String;
    .end local v18           #panelTextView:Landroid/widget/TextView;
    .end local v19           #panelView:Landroid/view/View;
    :cond_5
    return-void
.end method

.method private isEmptyPanel(Ljava/util/ArrayList;I)Z
    .locals 2
    .parameter
    .parameter "idx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 707
    .local v0, value:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 708
    const/4 v0, 0x1

    .line 710
    :cond_0
    return v0
.end method

.method private loadAppslist()V
    .locals 6

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_active_app_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_panel_active_number_of_apps"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    .line 594
    const-string v1, "NotificationPanelMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppslist() - active_app_list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v1, "NotificationPanelMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppslist() - mActiveAppsNum : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    if-nez v0, :cond_0

    .line 624
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 602
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 605
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 606
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    if-ge v1, v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 608
    if-eqz v0, :cond_1

    .line 609
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 613
    :cond_2
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppslist() - mActiveNotificationList.size():  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    move v1, v0

    :goto_2
    array-length v0, v2

    if-ge v1, v0, :cond_4

    .line 616
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 617
    const-string v3, "NotificationPanelMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertPanelString:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    if-eqz v0, :cond_3

    .line 619
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 623
    :cond_4
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAppslist() - mCandidateNotificationList.size():  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private makeConvertPanelName()V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Wifi"

    const-string v2, "notification_panel_wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Location"

    const-string v2, "notification_panel_gps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SilentMode"

    const-string v2, "notification_panel_sound"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AutoRotate"

    const-string v2, "notification_panel_screen_rotation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    const-string v2, "notification_panel_bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MobileData"

    const-string v2, "notification_panel_mobile_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Apn"

    const-string v2, "notification_panel_apn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DormantMode"

    const-string v2, "notification_panel_blocking_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PowerSaving"

    const-string v2, "notification_panel_powersaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AllShareCast"

    const-string v2, "notification_panel_mobile_allshare_cast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MultiWindow"

    const-string v2, "notification_panel_multiwindows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "WiFiHotspot"

    const-string v2, "notification_panel_wifihotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SBeam"

    const-string v2, "notification_panel_sbeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Nfc"

    const-string v2, "notification_panel_nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DrivingMode"

    const-string v2, "notification_panel_driving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartStay"

    const-string v2, "notification_panel_smartstay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Sync"

    const-string v2, "notification_panel_sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirplaneMode"

    const-string v2, "notification_airplane_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Ebook"

    const-string v2, "notification_panel_e_reading"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PenOnly"

    const-string v2, "notification_panel_pen_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirView"

    const-string v2, "notification_panel_air_view"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartScroll"

    const-string v2, "notification_panel_smartscroll"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartPause"

    const-string v2, "notification_panel_smartpause"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirGesture"

    const-string v2, "notification_panel_air_gesture"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartNetwork"

    const-string v2, "notification_panel_smartnetwork"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PersonalMode"

    const-string v2, "notification_panel_personalmode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "ToddlerMode"

    const-string v2, "notification_panel_toddlermode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DataRoaming"

    const-string v2, "notification_panel_dataroaming"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifi"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_gps"

    const-string v2, "Location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sound"

    const-string v2, "SilentMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_screen_rotation"

    const-string v2, "AutoRotate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_bluetooth"

    const-string v2, "Bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_data"

    const-string v2, "MobileData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_apn"

    const-string v2, "Apn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_blocking_mode"

    const-string v2, "DormantMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_powersaving"

    const-string v2, "PowerSaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_allshare_cast"

    const-string v2, "AllShareCast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_multiwindows"

    const-string v2, "MultiWindow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifihotspot"

    const-string v2, "WiFiHotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sbeam"

    const-string v2, "SBeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_nfc"

    const-string v2, "Nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_driving"

    const-string v2, "DrivingMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartstay"

    const-string v2, "SmartStay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sync"

    const-string v2, "Sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_airplane_mode"

    const-string v2, "AirplaneMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_e_reading"

    const-string v2, "Ebook"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_pen_mode"

    const-string v2, "PenOnly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_air_view"

    const-string v2, "AirView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartscroll"

    const-string v2, "SmartScroll"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartpause"

    const-string v2, "SmartPause"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_air_gesture"

    const-string v2, "AirGesture"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartnetwork"

    const-string v2, "SmartNetwork"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_personalmode"

    const-string v2, "PersonalMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_toddlermode"

    const-string v2, "ToddlerMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_dataroaming"

    const-string v2, "DataRoaming"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    return-void
.end method

.method private refreshUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 746
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    .line 748
    const-string v1, "NotificationPanelMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshUI() - isRemoved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 752
    const v1, 0x7f040178

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 753
    const v0, 0x7f0b02ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    .line 754
    const v0, 0x7f0b02d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    .line 755
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V

    .line 758
    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 759
    const v2, 0x7f0913f6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 762
    const v0, 0x1020010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 763
    const v2, 0x7f0913f7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 772
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 773
    iget v2, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    if-lt v2, v0, :cond_1

    .line 774
    const v0, 0x7f0b02cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/PanelTextView;

    .line 775
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 776
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 779
    :cond_1
    const v0, 0x7f0b02cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->resetBtn:Landroid/widget/Button;

    .line 780
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->resetBtn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/NotificationPanelMenu$6;

    invoke-direct {v2, p0}, Lcom/android/settings/NotificationPanelMenu$6;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 807
    iput-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    .line 808
    return-void
.end method

.method private resetPanel()V
    .locals 5

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 284
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v3, "notification_panel_active_app_list_for_reset"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, activeApps:Ljava/lang/String;
    const-string v3, "notification_panel_active_number_of_apps_for_reset"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 287
    .local v1, activeAppsNum:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_panel_active_app_list"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 288
    const-string v3, "notification_panel_active_number_of_apps"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->loadAppslist()V

    .line 291
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V

    .line 292
    return-void
.end method

.method private saveAppslist()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 720
    const-string v0, ""

    move v1, v2

    move-object v3, v0

    .line 724
    :goto_0
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 726
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 724
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 729
    :cond_0
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAppslist() -  activeApps: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :goto_1
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 731
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 736
    :cond_1
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAppslist() -  activeApps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_active_number_of_apps"

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 739
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_active_app_list"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 741
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_active_number_of_apps"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    .line 742
    return-void
.end method

.method private swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V
    .locals 2
    .parameter
    .parameter "longClickedIdx"
    .parameter
    .parameter "dropIdx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 714
    .local p1, longClickedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, dropList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 715
    .local v0, temp:Ljava/lang/String;
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 716
    invoke-virtual {p3, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 717
    return-void
.end method

.method private updateQuickSettingsList()V
    .locals 15

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 412
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 413
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 415
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 416
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 417
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 420
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 421
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 425
    .local v2, oneLinePanelNum:I
    :goto_0
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - oneLinePanelNum: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int v3, v0, v2

    .line 429
    .local v3, notiPanelLines:I
    :goto_1
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - notiPanelLines: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    mul-int v0, v2, v3

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    .line 434
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 435
    .local v13, inflater:Landroid/view/LayoutInflater;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v3, :cond_2

    .line 436
    const v0, 0x7f040175

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 437
    .local v11, container:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 435
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 423
    .end local v2           #oneLinePanelNum:I
    .end local v3           #notiPanelLines:I
    .end local v11           #container:Landroid/widget/FrameLayout;
    .end local v12           #i:I
    .end local v13           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .restart local v2       #oneLinePanelNum:I
    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v2

    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    .line 442
    .restart local v3       #notiPanelLines:I
    .restart local v12       #i:I
    .restart local v13       #inflater:Landroid/view/LayoutInflater;
    :cond_2
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/NotificationPanelMenu;->displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 445
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int v7, v0, v2

    .line 447
    .local v7, availBtnlLines:I
    :goto_3
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - availBtnlLines: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-nez v7, :cond_3

    .line 450
    const/4 v7, 0x1

    .line 452
    :cond_3
    const/4 v14, 0x0

    .local v14, j:I
    :goto_4
    if-ge v14, v7, :cond_5

    .line 453
    const v0, 0x7f040175

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 454
    .restart local v11       #container:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 452
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 445
    .end local v7           #availBtnlLines:I
    .end local v11           #container:Landroid/widget/FrameLayout;
    .end local v14           #j:I
    :cond_4
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v2

    add-int/lit8 v7, v0, 0x1

    goto :goto_3

    .line 458
    .restart local v7       #availBtnlLines:I
    .restart local v14       #j:I
    :cond_5
    const/4 v5, 0x1

    iget-object v8, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    move-object v4, p0

    move v6, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/NotificationPanelMenu;->displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 460
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    .line 316
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated() - mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/NotificationPanelMenu;->mListView:Landroid/widget/ListView;

    .line 320
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mSetKeyListenerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->refreshUI()V

    .line 323
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 324
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 402
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - newConfig.orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 404
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    .line 405
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->refreshUI()V

    .line 407
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 228
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mSalesCode:Ljava/lang/String;

    .line 230
    const v1, 0x7f07007f

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 231
    const-string v1, "brightness_adjustment"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    .line 232
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0913f5

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 234
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0913f4

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 236
    :cond_0
    const-string v1, "recommended_apps"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mRecommendedApps:Landroid/preference/SwitchPreferenceScreen;

    .line 237
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mRecommendedApps:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 239
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_panel_active_number_of_apps"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    .line 242
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->makeConvertPanelName()V

    .line 243
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->loadAppslist()V

    .line 246
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.pagebuddynotisvc"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 247
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mRecommendedApps:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mRecommendedApps:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v1, :cond_2

    .line 262
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v1, p0, Lcom/android/settings/NotificationPanelMenu;->mStartFromSearch:Z

    .line 265
    :cond_2
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mRecommendedApps:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mRecommendedApps:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 270
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 272
    const-string v1, "NotificationPanelMenu"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "direct_quickpanel"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 276
    .local v0, isFromQuickPanel:Z
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "direct_quickpanel"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    .end local v0           #isFromQuickPanel:Z
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 371
    iput-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;

    .line 373
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    .line 391
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 393
    .local v1, value:I
    :goto_0
    const-string v3, "recommended_apps"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "recommended_apps_setting"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    :cond_0
    return v2

    .line 392
    .end local v1           #value:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 385
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_panel_brightness_adjustment"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    .end local v0           #value:Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 385
    .restart local v0       #value:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 328
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    iget-boolean v3, p0, Lcom/android/settings/NotificationPanelMenu;->mStartFromSearch:Z

    if-eqz v3, :cond_0

    .line 330
    iget-boolean v3, p0, Lcom/android/settings/NotificationPanelMenu;->mStartFromSearch:Z

    if-nez v3, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 333
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 334
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "notification_panel_brightness_adjustment"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 335
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mRecommendedApps:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_1

    .line 336
    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mRecommendedApps:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "recommended_apps_setting"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "notification_panel_brightness_adjustment"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 341
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 342
    iget-boolean v3, p0, Lcom/android/settings/NotificationPanelMenu;->mStartFromSearch:Z

    if-eqz v3, :cond_3

    .line 343
    iget-boolean v3, p0, Lcom/android/settings/NotificationPanelMenu;->mStartFromSearch:Z

    iput-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 344
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 345
    iput-boolean v5, p0, Lcom/android/settings/NotificationPanelMenu;->mStartFromSearch:Z

    .line 346
    sget v3, Lcom/android/settings/NotificationPanelMenu;->mSettingValue:I

    if-eq v3, v8, :cond_3

    .line 347
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 348
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, targetKey:Ljava/lang/String;
    sget v3, Lcom/android/settings/NotificationPanelMenu;->mSettingValue:I

    if-ne v3, v4, :cond_7

    move v2, v4

    .line 351
    .local v2, value:Z
    :goto_3
    const-string v3, "recommended_apps"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mRecommendedApps:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mRecommendedApps:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 354
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mRecommendedApps:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/NotificationPanelMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 357
    :cond_2
    sput v8, Lcom/android/settings/NotificationPanelMenu;->mSettingValue:I

    .line 362
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v1           #targetKey:Ljava/lang/String;
    .end local v2           #value:Z
    :cond_3
    return-void

    :cond_4
    move v3, v5

    .line 330
    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 334
    goto :goto_1

    :cond_6
    move v3, v5

    .line 336
    goto :goto_2

    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v1       #targetKey:Ljava/lang/String;
    :cond_7
    move v2, v5

    .line 350
    goto :goto_3
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mSetKeyListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 378
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 379
    return-void
.end method
