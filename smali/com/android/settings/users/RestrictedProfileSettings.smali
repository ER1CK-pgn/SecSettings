.class public Lcom/android/settings/users/RestrictedProfileSettings;
.super Lcom/android/settings/users/AppRestrictionsFragment;
.source "RestrictedProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;
    }
.end annotation


# instance fields
.field private mEditUserInfoDialog:Landroid/app/Dialog;

.field private mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

.field private mHeaderView:Landroid/view/View;

.field private mSavedPhoto:Landroid/graphics/Bitmap;

.field private mUserIconView:Landroid/widget/ImageView;

.field private mUserNameView:Landroid/widget/TextView;

.field private mWaitingForActivityResult:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;-><init>()V

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/RestrictedProfileSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->clearEditUserInfoDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/users/RestrictedProfileSettings;)Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/users/RestrictedProfileSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/users/RestrictedProfileSettings;->removeDialog(I)V

    return-void
.end method

.method private clearEditUserInfoDialog()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 280
    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 281
    return-void
.end method

.method private getExistingUser(Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;
    .locals 5
    .parameter "thisUser"

    .prologue
    .line 148
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 149
    .local v2, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 150
    .local v1, user:Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 154
    .end local v1           #user:Landroid/content/pm/UserInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401d3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;

    .line 113
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mWaitingForActivityResult:Z

    .line 168
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/RestrictedProfileSettings;->showDialog(I)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    const-string v0, "pending_photo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 91
    const-string v0, "awaiting_result"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mWaitingForActivityResult:Z

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/users/RestrictedProfileSettings;->init(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "dialogId"

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    .line 185
    if-ne p1, v11, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 191
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04008d

    invoke-virtual {v8, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 193
    .local v6, content:Landroid/view/View;
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 195
    .local v9, info:Landroid/content/pm/UserInfo;
    const v0, 0x7f0b0183

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 196
    .local v10, userNameView:Landroid/widget/EditText;
    iget-object v0, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const v0, 0x7f0b0182

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 199
    .local v2, userPhotoView:Landroid/widget/ImageView;
    const/4 v4, 0x0

    .line 200
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mSavedPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mSavedPhoto:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/settings/users/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/users/CircleFramedDrawable;

    move-result-object v4

    .line 208
    :cond_2
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    new-instance v0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    iget-object v3, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mSavedPhoto:Landroid/graphics/Bitmap;

    iget-boolean v5, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mWaitingForActivityResult:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;-><init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    .line 212
    const v7, 0x7f0901d2

    .line 216
    .local v7, dialogTitleId:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020244

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lcom/android/settings/users/RestrictedProfileSettings$2;

    invoke-direct {v3, p0, v10}, Lcom/android/settings/users/RestrictedProfileSettings$2;-><init>(Lcom/android/settings/users/RestrictedProfileSettings;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v3, Lcom/android/settings/users/RestrictedProfileSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/users/RestrictedProfileSettings$1;-><init>(Lcom/android/settings/users/RestrictedProfileSettings;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 269
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 203
    .end local v7           #dialogTitleId:I
    :cond_3
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 204
    if-nez v4, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getCircularUserIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->onResume()V

    .line 134
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, v1}, Lcom/android/settings/users/RestrictedProfileSettings;->getExistingUser(Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 135
    .local v0, info:Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->finishFragment()V

    .line 145
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/users/RestrictedProfileSettings;->getCircularUserIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "pending_photo"

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    invoke-virtual {v1}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mWaitingForActivityResult:Z

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "awaiting_result"

    iget-boolean v1, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    :cond_1
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/RestrictedProfileSettings;->mWaitingForActivityResult:Z

    .line 160
    invoke-super {p0, p1, p2}, Lcom/android/settings/users/AppRestrictionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    return-void
.end method
