.class public Lcom/android/settings/myplace/MyPlaceListDelelete;
.super Landroid/app/ListFragment;
.source "MyPlaceListDelelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mItem_cancel:Landroid/view/MenuItem;

.field private static mItem_del:Landroid/view/MenuItem;

.field private static mListItem:[Ljava/lang/String;

.field private static mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private static mlistView:Landroid/widget/ListView;


# instance fields
.field private mButtonSellectAll:Landroid/view/View;

.field private mCustomListDel:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private AddAccessPointToList()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 232
    const-string v0, "MyPlaceSettings"

    const-string v1, "AddAccessPointToList(), there is no safety zone, return false"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0

    .line 236
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v7, v0, -0x3

    .line 237
    .local v7, count:I
    new-array v0, v7, [Ljava/lang/String;

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    .line 238
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v7, :cond_2

    .line 239
    add-int/lit8 v0, v8, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    const-string v1, "profile_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 238
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 244
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 246
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ToggleAllCheck(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 98
    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 99
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 100
    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 101
    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 99
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 104
    return-void
.end method

.method public static checkDeleteButtonstate()V
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 217
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02011c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 222
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02011e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public customlistdelete()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 251
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v7

    .line 252
    .local v7, count:I
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v13

    .line 253
    .local v13, selectedCount:I
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customlistdelete(),  count is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", selected item count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-array v8, v13, [I

    .line 257
    .local v8, deleteList:[I
    if-lez v7, :cond_2

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 259
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, i:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 260
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    add-int/lit8 v0, v9, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 263
    .local v10, id:I
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 264
    aput v10, v8, v12

    .line 265
    add-int/lit8 v12, v12, 0x1

    .line 259
    .end local v10           #id:I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 269
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 274
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.settings.MYPLACE_DELETED"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v11, intent:Landroid/content/Intent;
    const-string v0, "deleteList"

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #i:I
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #j:I
    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    .line 59
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    .line 62
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mCustomListDel:Landroid/view/View;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mButtonSellectAll:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mButtonSellectAll:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->AddAccessPointToList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0401aa

    sget-object v4, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 76
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 79
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->setHasOptionsMenu(Z)V

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 93
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 94
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->ToggleAllCheck(Z)V

    .line 95
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 210
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v6, 0x7f090195

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 110
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const v0, 0x7f120001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 112
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    .line 113
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f090a6f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 114
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    .line 115
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 129
    :goto_0
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 130
    return-void

    .line 118
    :cond_0
    invoke-interface {p1, v2, v4, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020118

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 121
    const v0, 0x7f090a6f

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 125
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    .line 126
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 48
    const v0, 0x7f040191

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 84
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 85
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 86
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 201
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 168
    :sswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090a6f

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 170
    sget-object v5, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    .line 172
    .local v2, count:I
    if-ne v2, v4, :cond_0

    .line 173
    const v5, 0x7f09173b

    invoke-virtual {p0, v5}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, tempStr:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 178
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/myplace/MyPlaceListDelelete$1;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$1;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/settings/myplace/MyPlaceListDelelete$2;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$2;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 192
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 175
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v3           #tempStr:Ljava/lang/String;
    :cond_0
    const v5, 0x7f09173c

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #tempStr:Ljava/lang/String;
    goto :goto_1

    .line 197
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #count:I
    .end local v3           #tempStr:Ljava/lang/String;
    :sswitch_1
    const-string v5, "MyPlaceSettings"

    const-string v6, "MENU_CANCEL is clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 163
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7f0b0672 -> :sswitch_1
        0x7f0b0673 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 54
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 55
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f02011e

    const v5, 0x7f02011c

    const v4, 0x7f020118

    const/4 v3, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 138
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 140
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 141
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 142
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 144
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 145
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 148
    :cond_2
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 152
    :cond_3
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 153
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 156
    :cond_4
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method
