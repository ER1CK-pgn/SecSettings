.class public Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;
.super Landroid/preference/Preference;
.source "SyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/SyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Add_AccountPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/SyncSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/SyncSettings;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings/accounts/SyncSettings$Add_AccountPreference;->this$0:Lcom/android/settings/accounts/SyncSettings;

    .line 268
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 269
    const v0, 0x7f0201cf

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 270
    const v0, 0x7f090a61

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 271
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 277
    const v5, 0x1020006

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 278
    .local v0, icon:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 281
    .local v1, iconSize:I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int v3, v5, v6

    .line 282
    .local v3, paddingLR:I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int v4, v5, v6

    .line 284
    .local v4, paddingTB:I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 285
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    add-int v5, v1, v3

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 286
    add-int v5, v1, v4

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 287
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    .end local v1           #iconSize:I
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #paddingLR:I
    .end local v4           #paddingTB:I
    :cond_0
    return-void
.end method
