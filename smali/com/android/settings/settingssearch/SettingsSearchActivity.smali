.class public Lcom/android/settings/settingssearch/SettingsSearchActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsSearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;
    }
.end annotation


# static fields
.field private static RESTORE_DB:Z

.field private static mArrayResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mKeyWord:Ljava/lang/String;

.field private static mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

.field private static mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;


# instance fields
.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field mSearchViewOnKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    sput-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;

    .line 49
    sput-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->RESTORE_DB:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    .line 39
    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    .line 78
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$1;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$2;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 220
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$3;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchViewOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private SearchDB()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 342
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v0}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_searchinfo()I

    move-result v0

    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v1}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_titleinfo()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v0}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_titleinfo()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 343
    :cond_0
    const-string v0, "SearchMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " searchinfo count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v2}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_searchinfo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " title count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    invoke-virtual {v2}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getCount_titleinfo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESTORE_SEARCH_DB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 345
    sput-boolean v3, Lcom/android/settings/settingssearch/SettingsSearchActivity;->RESTORE_DB:Z

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->RESTORE_DB:Z

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-object p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100()Lcom/android/settings/settingssearch/SettingsSearchManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/settingssearch/SettingsSearchManager;)Lcom/android/settings/settingssearch/SettingsSearchManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-object p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    return-object p0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-object p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/settingssearch/SettingsSearchActivity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-boolean p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->RESTORE_DB:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->displayProgressDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/settings/settingssearch/SettingsSearchListAdapter;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private dismisProgressDialog()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 331
    :cond_0
    return-void
.end method

.method private displayProgressDialog()V
    .locals 1

    .prologue
    .line 334
    sget-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->RESTORE_DB:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->showProgressDialog()V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->dismisProgressDialog()V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 320
    const-string v0, ""

    const v1, 0x7f0915f0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 321
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 324
    :cond_0
    return-void
.end method

.method private updateList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "keyWord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/settingssearch/SettingsSearchItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Lcom/android/settings/settingssearch/SettingsSearchItem;

    .line 275
    .local v3, searchResultItem:[Lcom/android/settings/settingssearch/SettingsSearchItem;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 276
    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    :goto_0
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 279
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/settingssearch/SettingsSearchItem;

    aput-object v4, v3, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 281
    :cond_1
    new-instance v4, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    sget-object v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f04019a

    invoke-direct {v4, v5, v6, v3, p2}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;-><init>(Landroid/content/Context;I[Lcom/android/settings/settingssearch/SettingsSearchItem;Ljava/lang/String;)V

    sput-object v4, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    .line 283
    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090921

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v2, Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    const v5, 0x1090003

    invoke-direct {v2, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 287
    .local v2, mNoResult:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 289
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #mNoResult:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    sget-object v5, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListAdapter:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    sput-object p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 99
    .local v0, actionBar:Landroid/app/ActionBar;
    sget-object v6, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 101
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 106
    :goto_0
    new-instance v6, Landroid/widget/SearchView;

    sget-object v7, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    .line 107
    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v8}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 108
    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    const v7, 0x7f090598

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 110
    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 112
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 113
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040198

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 114
    .local v3, row:Landroid/view/View;
    const v6, 0x7f0b042c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 115
    .local v4, searchLayout:Landroid/widget/LinearLayout;
    const v6, 0x7f0b042d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 116
    .local v5, searchViewLayout:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchViewOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 119
    const v6, 0x102038b

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 120
    .local v2, listHeader:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 122
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    .line 123
    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 126
    new-instance v6, Lcom/android/settings/settingssearch/SettingsSearchManager;

    sget-object v7, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchManager;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    .line 127
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->SearchDB()V

    .line 128
    return-void

    .line 103
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #listHeader:Landroid/widget/LinearLayout;
    .end local v3           #row:Landroid/view/View;
    .end local v4           #searchLayout:Landroid/widget/LinearLayout;
    .end local v5           #searchViewLayout:Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 163
    const-string v0, "SearchMain"

    const-string v1, "onDestory() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 258
    const-string v1, "SearchMain"

    const-string v2, "onKeyDown() return true"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 264
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 265
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 270
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v3
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 232
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 233
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_window_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 234
    .local v0, multiWindowValue:I
    if-ne v0, v1, :cond_0

    .line 235
    const-string v2, "SearchMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyLongPress() multiWindowValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0           #multiWindowValue:I
    :goto_0
    return v1

    .line 238
    .restart local v0       #multiWindowValue:I
    :cond_0
    const-string v1, "SearchMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyLongPress() multiWindowValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0           #multiWindowValue:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 246
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 247
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const-string v0, "SearchMain"

    const-string v1, "onKeyUp() call onToBackMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->onToBackMenu()V

    .line 250
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 174
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 171
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->onToBackMenu()V

    .line 172
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 152
    const-string v1, "SearchMain"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 155
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 156
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 158
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .parameter "keyWord"

    .prologue
    .line 304
    sput-object p1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    .line 305
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;-><init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V

    .line 306
    .local v0, mThread:Lcom/android/settings/settingssearch/SettingsSearchActivity$UpdateListThread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 307
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 309
    const/4 v1, 0x0

    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 132
    const-string v1, "SearchMain"

    const-string v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 134
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.SETTING_SEARCH_DB_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 139
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 142
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 143
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 144
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchManger:Lcom/android/settings/settingssearch/SettingsSearchManager;

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchManager;->getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;

    .line 145
    sget-object v1, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mArrayResultList:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mKeyWord:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->displayProgressDialog()V

    .line 148
    return-void
.end method

.method public onToBackMenu()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 178
    sget-object v4, Lcom/android/settings/settingssearch/SettingsSearchActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 180
    .local v2, mSettingActivity:Z
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    const-string v4, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_listui"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 185
    .local v1, isGridView:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 186
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.GridSettings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    .end local v1           #isGridView:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void

    :cond_0
    move v1, v3

    .line 183
    goto :goto_0

    .line 188
    .restart local v1       #isGridView:Z
    :cond_1
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 191
    .end local v1           #isGridView:Z
    :cond_2
    if-eqz v2, :cond_3

    .line 192
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 194
    :cond_3
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.SettingsTabActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
