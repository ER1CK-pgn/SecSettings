.class public Lcom/android/settings/RecommendedAppsMenu;
.super Landroid/app/Fragment;
.source "RecommendedAppsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private editDockingsBtn:Landroid/widget/Button;

.field private editEarphonesBtn:Landroid/widget/Button;

.field private editRoamingBtn:Landroid/widget/Button;

.field private layoutMostUsedDocking:Landroid/widget/LinearLayout;

.field private layoutMostUsedRoaming:Landroid/widget/LinearLayout;

.field private mAllAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDockingIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDockingLayout:Landroid/widget/LinearLayout;

.field private mEarphonesIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mEarphonesLayout:Landroid/widget/LinearLayout;

.field private mEditButtonListener:Landroid/view/View$OnClickListener;

.field private mFragment:Landroid/app/Fragment;

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

.field private mIconSize:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRoamingIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mRoamingLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconCache:Ljava/util/HashMap;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconSize:I

    .line 255
    new-instance v0, Lcom/android/settings/RecommendedAppsMenu$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RecommendedAppsMenu$1;-><init>(Lcom/android/settings/RecommendedAppsMenu;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RecommendedAppsMenu;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/RecommendedAppsMenu;)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/RecommendedAppsMenu;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/RecommendedAppsMenu;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "iconResId"
    .parameter "activityInfo"

    .prologue
    .line 305
    const/4 v5, 0x0

    .line 306
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 307
    .local v7, packageName:Ljava/lang/String;
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 309
    .local v0, activityName:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mPm:Landroid/content/pm/PackageManager;

    iget v9, p2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v9, :cond_1

    .end local v0           #activityName:Ljava/lang/String;
    :goto_0
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 310
    .local v2, cscIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 311
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 328
    .end local v2           #cscIcon:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-object v5

    .restart local v0       #activityName:Ljava/lang/String;
    :cond_1
    move-object v0, v7

    .line 309
    goto :goto_0

    .line 313
    .end local v0           #activityName:Ljava/lang/String;
    .restart local v2       #cscIcon:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 314
    .local v1, appRes:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 315
    .local v6, iconDpi:I
    if-eqz v1, :cond_0

    .line 316
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v8

    invoke-virtual {v1, p1, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 317
    .local v3, d:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v3}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_1

    .line 320
    .end local v1           #appRes:Landroid/content/res/Resources;
    .end local v2           #cscIcon:Landroid/graphics/drawable/Drawable;
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #iconDpi:I
    :catch_0
    move-exception v4

    .line 321
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "RecommendedAppsMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAppIcon : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 322
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 323
    .local v4, e:Landroid/content/res/Resources$NotFoundException;
    const-string v8, "RecommendedAppsMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v8, "RecommendedAppsMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAppIcon : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "appInfoDB"

    .prologue
    .line 333
    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 334
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 335
    const/4 v5, 0x0

    .line 343
    :goto_0
    return-object v5

    :cond_0
    move-object v3, v2

    .line 337
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 338
    .local v3, iconBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    .local v0, b:Landroid/graphics/Bitmap;
    sget-object v5, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0245

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 340
    .local v1, height:I
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x1

    invoke-static {v0, v1, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 341
    .local v4, scaledBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    move-object v2, v4

    move-object v5, v2

    .line 343
    goto :goto_0
.end method

.method private refreshUI()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    const v4, 0x3f19999a

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 212
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 218
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 232
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 233
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 236
    :cond_3
    return-void
.end method

.method private restoreAllAppsIconInfo()V
    .locals 6

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mPm:Landroid/content/pm/PackageManager;

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, LauncherIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    .line 202
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 203
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v5

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v5, v2}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 240
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_3

    .line 241
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommended_apps_automatically_dockings"

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsMenu;->refreshUI()V

    .line 253
    return-void

    :cond_1
    move v0, v2

    .line 241
    goto :goto_0

    :cond_2
    move v1, v2

    .line 242
    goto :goto_1

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedRoaming:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_6

    .line 244
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommended_apps_automatically_roaming"

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_5

    :goto_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v0, v2

    .line 244
    goto :goto_3

    :cond_5
    move v1, v2

    .line 245
    goto :goto_4

    .line 246
    :cond_6
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-ne p1, v0, :cond_8

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommended_apps_automatically_dockings"

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_7

    :goto_5
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_5

    .line 248
    :cond_8
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-ne p1, v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommended_apps_automatically_roaming"

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_9

    :goto_6
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_6
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    .line 74
    iput-object p0, p0, Lcom/android/settings/RecommendedAppsMenu;->mFragment:Landroid/app/Fragment;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0f0245

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconSize:I

    .line 78
    new-instance v1, Lcom/android/settings/lockscreenshortcut/IconResizer;

    sget-object v2, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconCache:Ljava/util/HashMap;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsMenu;->restoreAllAppsIconInfo()V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 25
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 102
    const v21, 0x7f040180

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 104
    .local v11, recommendedSettingsView:Landroid/view/View;
    const v21, 0x7f0b03f8

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v21, 0x7f0b03fc

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v21, 0x7f0b0402

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v21, 0x7f0b03ff

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 112
    const v21, 0x7f0b0405

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 113
    const v21, 0x7f0b03fe

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    .line 114
    const v21, 0x7f0b0404

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedRoaming:Landroid/widget/LinearLayout;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v22, v0

    sget-object v21, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v23, "recommended_apps_automatically_dockings"

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    const/16 v21, 0x1

    :goto_0
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v22, v0

    sget-object v21, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v23, "recommended_apps_automatically_roaming"

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedRoaming:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "recommended_apps_list_earphones"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 127
    .local v19, savedApplistEarphones:Ljava/lang/String;
    const-string v21, ";"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 128
    .local v16, savedAppInfoEarphones:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_3

    .line 129
    const v21, 0x7f0b03f9

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    .line 130
    const v21, 0x7f0400ec

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 131
    .local v9, earphonesIconLayout:Landroid/view/View;
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0f0244

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 132
    const v21, 0x7f0b0266

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 133
    .local v8, earphonesIcon:Landroid/widget/ImageView;
    aget-object v21, v16, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 134
    .local v4, d:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_2

    .line 128
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 116
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .end local v8           #earphonesIcon:Landroid/widget/ImageView;
    .end local v9           #earphonesIconLayout:Landroid/view/View;
    .end local v10           #i:I
    .end local v16           #savedAppInfoEarphones:[Ljava/lang/String;
    .end local v19           #savedApplistEarphones:Ljava/lang/String;
    :cond_0
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 117
    :cond_1
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 135
    .restart local v4       #d:Landroid/graphics/drawable/Drawable;
    .restart local v8       #earphonesIcon:Landroid/widget/ImageView;
    .restart local v9       #earphonesIconLayout:Landroid/view/View;
    .restart local v10       #i:I
    .restart local v16       #savedAppInfoEarphones:[Ljava/lang/String;
    .restart local v19       #savedApplistEarphones:Ljava/lang/String;
    :cond_2
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 141
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .end local v8           #earphonesIcon:Landroid/widget/ImageView;
    .end local v9           #earphonesIconLayout:Landroid/view/View;
    :cond_3
    const v21, 0x7f0b03fa

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 142
    .local v5, dockingLayout:Landroid/widget/RelativeLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "recommended_apps_list_dockings"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 143
    .local v18, savedApplistDockings:Ljava/lang/String;
    const-string v21, ";"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 144
    .local v15, savedAppInfoDockings:[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_4
    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_5

    .line 145
    const v21, 0x7f0b03fd

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    .line 146
    const v21, 0x7f0400ec

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 147
    .local v7, dockingsIconLayout:Landroid/view/View;
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0f0244

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 148
    const v21, 0x7f0b0266

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 149
    .local v6, dockingsIcon:Landroid/widget/ImageView;
    aget-object v21, v15, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 150
    .restart local v4       #d:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_4

    .line 144
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 151
    :cond_4
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 157
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #dockingsIcon:Landroid/widget/ImageView;
    .end local v7           #dockingsIconLayout:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/high16 v22, 0x7f0c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 166
    :goto_6
    const v21, 0x7f0b0400

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 167
    .local v14, roamingLayout:Landroid/widget/RelativeLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "recommended_apps_list_roaming"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 168
    .local v20, savedApplistRoaming:Ljava/lang/String;
    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 169
    .local v17, savedAppInfoRoaming:[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_8

    .line 170
    const v21, 0x7f0b0403

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    .line 171
    const v21, 0x7f0400ec

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 172
    .local v13, roamingIconLayout:Landroid/view/View;
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0f0244

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 173
    const v21, 0x7f0b0266

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 174
    .local v12, roamingIcon:Landroid/widget/ImageView;
    aget-object v21, v17, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 175
    .restart local v4       #d:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_7

    .line 169
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 158
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .end local v12           #roamingIcon:Landroid/widget/ImageView;
    .end local v13           #roamingIconLayout:Landroid/view/View;
    .end local v14           #roamingLayout:Landroid/widget/RelativeLayout;
    .end local v17           #savedAppInfoRoaming:[Ljava/lang/String;
    .end local v20           #savedApplistRoaming:Ljava/lang/String;
    :cond_6
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 176
    .restart local v4       #d:Landroid/graphics/drawable/Drawable;
    .restart local v12       #roamingIcon:Landroid/widget/ImageView;
    .restart local v13       #roamingIconLayout:Landroid/view/View;
    .restart local v14       #roamingLayout:Landroid/widget/RelativeLayout;
    .restart local v17       #savedAppInfoRoaming:[Ljava/lang/String;
    .restart local v20       #savedApplistRoaming:Ljava/lang/String;
    :cond_7
    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 189
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .end local v12           #roamingIcon:Landroid/widget/ImageView;
    .end local v13           #roamingIconLayout:Landroid/view/View;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->refreshUI()V

    .line 190
    return-object v11
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 96
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 91
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 86
    return-void
.end method
