.class public Lcom/android/settings/ModePreviewTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static mModePreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutomatic:Landroid/widget/CheckedTextView;

.field mCurrentSelection:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ModePreviewTablet;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/ModePreviewTablet;->setEnabledItems(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ModePreviewTablet;)Landroid/widget/CheckedTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ModePreviewTablet;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private setEnabledItems(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 171
    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 172
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, v:Landroid/view/View;
    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 175
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 177
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentSelection()I
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x1

    .line 223
    packed-switch p2, :pswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 225
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 230
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->finish()V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_1

    .line 235
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->finish()V

    goto :goto_0

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 223
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 82
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090b6a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090b6b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090b6d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v3, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090b6c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    if-nez v3, :cond_0

    .line 94
    new-instance v3, Lcom/android/settings/ModePreviewAdapter;

    sget-object v4, Lcom/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v6, v6, v4}, Lcom/android/settings/ModePreviewAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    .line 97
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreviewTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 101
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b68

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 102
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400dd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 103
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 104
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 105
    const v3, 0x7f090173

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 106
    const v3, 0x7f090ad8

    invoke-virtual {p0, v3}, Lcom/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 108
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b0148

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    .line 109
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/android/settings/ModePreviewAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->setupAlert()V

    .line 115
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b024d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    .line 116
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    const v4, 0x1030042

    invoke-virtual {v3, p0, v4}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 117
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v6}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 118
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b024e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, mDivider:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 121
    if-eqz p1, :cond_1

    .line 122
    const-string v3, "auto_state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 126
    .local v1, isChecked:I
    :goto_0
    if-ne v1, v7, :cond_2

    .line 127
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 128
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/settings/ModePreviewTablet$1;

    invoke-direct {v4, p0}, Lcom/android/settings/ModePreviewTablet$1;-><init>(Lcom/android/settings/ModePreviewTablet;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 143
    :goto_1
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    new-instance v4, Lcom/android/settings/ModePreviewTablet$3;

    invoke-direct {v4, p0}, Lcom/android/settings/ModePreviewTablet$3;-><init>(Lcom/android/settings/ModePreviewTablet;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getCurrentSelection()I

    move-result v3

    iput v3, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    .line 161
    iget v3, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 162
    const-string v3, "ModePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate() positoin : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v3, v4, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 164
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 167
    :goto_2
    return-void

    .line 124
    .end local v1           #isChecked:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #isChecked:I
    goto :goto_0

    .line 135
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 136
    iget-object v3, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/settings/ModePreviewTablet$2;

    invoke-direct {v4, p0}, Lcom/android/settings/ModePreviewTablet$2;-><init>(Lcom/android/settings/ModePreviewTablet;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 166
    :cond_3
    const-string v3, "ModePreview"

    const-string v4, "onCreate() positoin : -1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 214
    .local v0, currentValue:I
    iget-object v1, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 215
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 218
    .end local v0           #currentValue:I
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 219
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 202
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {p3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 203
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 245
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 252
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 189
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 183
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    const-string v1, "auto_state"

    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet;->mAutomatic:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
