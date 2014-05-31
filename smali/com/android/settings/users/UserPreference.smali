.class public Lcom/android/settings/users/UserPreference;
.super Landroid/preference/Preference;
.source "UserPreference.java"


# instance fields
.field private delOption:Z

.field private mContext:Landroid/content/Context;

.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mSerialNumber:I

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const/16 v3, -0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "userId"
    .parameter "showDelete"
    .parameter "deleteListener"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    .line 45
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/users/UserPreference;->mContext:Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/UserPreference;->delOption:Z

    .line 57
    iput-object p1, p0, Lcom/android/settings/users/UserPreference;->mContext:Landroid/content/Context;

    .line 60
    const v0, 0x7f040165

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserPreference;->setWidgetLayoutResource(I)V

    .line 61
    iput-object p5, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 64
    iput-boolean p4, p0, Lcom/android/settings/users/UserPreference;->delOption:Z

    .line 65
    iput p3, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 66
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserPreference;->mUserManager:Landroid/os/UserManager;

    .line 67
    return-void
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .parameter "user"

    .prologue
    .line 70
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "another"

    .prologue
    const/4 v0, 0x1

    .line 144
    instance-of v1, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result v1

    check-cast p1, Lcom/android/settings/users/UserPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getSerialNumber()I
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_1

    .line 131
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    .line 136
    :goto_0
    return v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    .line 134
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    goto :goto_0

    .line 136
    :cond_1
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    goto :goto_0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    const/16 v12, 0x8

    .line 76
    const v10, 0x7f0b03b3

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, deleteView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 78
    iget-object v10, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v6

    .line 82
    .local v6, mum:Landroid/app/enterprise/multiuser/MultiUserManager;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/app/enterprise/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 88
    .end local v6           #mum:Landroid/app/enterprise/multiuser/MultiUserManager;
    :cond_0
    iget-object v10, p0, Lcom/android/settings/users/UserPreference;->mUserManager:Landroid/os/UserManager;

    iget v11, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 89
    .local v8, user:Landroid/content/pm/UserInfo;
    invoke-direct {p0, v8}, Lcom/android/settings/users/UserPreference;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 90
    :cond_1
    const v10, 0x7f0b03b2

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, dividerDelete:Landroid/view/View;
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .end local v1           #dividerDelete:Landroid/view/View;
    :cond_2
    iget-boolean v10, p0, Lcom/android/settings/users/UserPreference;->delOption:Z

    if-nez v10, :cond_4

    .line 97
    const v10, 0x7f0b03b0

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 98
    .local v2, dividerView:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_3
    const v10, 0x7f0b03b1

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 102
    .local v4, imgView:Landroid/widget/ImageView;
    if-eqz v4, :cond_4

    .line 103
    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    .end local v2           #dividerView:Landroid/view/View;
    .end local v4           #imgView:Landroid/widget/ImageView;
    :cond_4
    const v10, 0x1020006

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 118
    .local v3, imageView:Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/android/settings/users/UserPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 119
    .local v7, resources:Landroid/content/res/Resources;
    const v10, 0x7f0f005b

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 120
    .local v9, viewSize:I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    add-int/lit8 v10, v9, -0x14

    add-int/lit8 v11, v9, -0xa

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v5, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 126
    return-void
.end method
