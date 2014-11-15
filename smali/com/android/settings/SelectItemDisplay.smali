.class public Lcom/android/settings/SelectItemDisplay;
.super Landroid/app/Activity;
.source "SelectItemDisplay.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SelectItemDisplay$ViewHolder;,
        Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;
    }
.end annotation


# instance fields
.field private isKeepDisplay:Z

.field private mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNetworkPopup:Landroid/widget/LinearLayout;

.field private mOpenCoverPopup:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SelectItemDisplay;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public CoverOpen()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "walk_mate"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "SelectItemDisplay"

    const-string v2, "CoverOpen walk_mate(1): sendBroadcast com.sec.android.app.shealth.COVER"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.shealth.COVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "visibility"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "type"

    const-string v2, "WALKMATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SelectInfoCoverSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SelectItemDisplay;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    goto :goto_0
.end method

.method public checkNetwork()Z
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectItemDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 11

    const/16 v10, 0x77

    const/16 v9, 0x6b

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_use_all"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    if-ne v3, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_random"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    :cond_0
    :goto_0
    const/16 v4, 0xef

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "s_vew_cover_background_color"

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 27

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->requestWindowFeature(I)Z

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v23, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/LayoutInflater;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v15, 0x4080000

    const/high16 v22, 0x400000

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "automatic_unlock"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v23, "keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/KeyguardManager;

    invoke-virtual/range {v18 .. v18}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_0

    or-int v15, v15, v22

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v24, v0

    const/high16 v25, 0x100000

    or-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v23

    const-wide/16 v24, 0x1770

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v23

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/16 v24, -0x1

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v23

    new-instance v24, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v23, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    const v23, 0x7f040050

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->setContentView(I)V

    const v23, 0x7f0b010a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/settings/SelectItemDisplay$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$1;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v23, 0x7f0b010c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/settings/SelectItemDisplay$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$2;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v23, 0x7f0b0105

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    const v23, 0x7f0b0106

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "sview_color_wallpaper"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v23, 0x4d

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Landroid/graphics/Color;->argb(IIII)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    const v23, 0x7f0b0107

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    const v23, 0x7f090d99

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v23, 0x7f0b00b0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    new-instance v23, Lcom/android/settings/SelectItemDisplay$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$3;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v23, 0x7f0b0108

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    const/16 v20, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string v24, "com.sec.android.app.shealth"

    const/16 v25, 0x5

    invoke-virtual/range {v23 .. v25}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v16, 0x1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string v24, "com.bst.airmessage"

    const/16 v25, 0x5

    invoke-virtual/range {v23 .. v25}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-eqz v20, :cond_6

    if-eqz v16, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    if-nez v23, :cond_6

    const-string v23, "com.sec.android.app.shealth.CHECK_INIT"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v12, v0, [I

    const/16 v23, 0x0

    const v24, 0x7f090d97

    aput v24, v12, v23

    const/16 v23, 0x1

    const v24, 0x7f090d9a

    aput v24, v12, v23

    const/16 v23, 0x2

    const v24, 0x7f090d9c

    aput v24, v12, v23

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v11, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090d98

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v23

    const/16 v23, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090d9b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v23

    const/16 v23, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090d9c

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v23

    :goto_3
    new-instance v23, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-direct {v0, v1, v12, v11, v2}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;-><init>(Lcom/android/settings/SelectItemDisplay;[I[Ljava/lang/String;Z)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v19, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct/range {v19 .. v19}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    const/4 v14, 0x1

    :try_start_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_4
    if-eqz v14, :cond_2

    new-instance v23, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v23, Lcom/android/settings/SelectItemDisplay$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$4;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    :cond_2
    return-void

    :cond_3
    packed-switch v3, :pswitch_data_0

    const v23, 0x7f020698

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :goto_5
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Landroid/graphics/Color;->argb(IIII)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    :pswitch_0
    const v23, 0x7f020699

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    :pswitch_1
    const v23, 0x7f02069a

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    :pswitch_2
    const v23, 0x7f02069b

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    :pswitch_3
    const v23, 0x7f02069c

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    :pswitch_4
    const v23, 0x7f02069d

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    :pswitch_5
    const v23, 0x7f02069e

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    :pswitch_6
    const v23, 0x7f02069f

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getBackgroundColor()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "sview_color_wallpaper"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-eqz v23, :cond_5

    const/16 v17, 0x1

    :goto_6
    if-eqz v17, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v23, 0x4d

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Landroid/graphics/Color;->argb(IIII)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_5
    const/16 v17, 0x0

    goto :goto_6

    :catch_0
    move-exception v4

    const/16 v20, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v4

    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_6
    if-eqz v20, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    if-nez v23, :cond_7

    const-string v23, "com.sec.android.app.shealth.CHECK_INIT"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v12, v0, [I

    const/16 v23, 0x0

    const v24, 0x7f090d97

    aput v24, v12, v23

    const/16 v23, 0x1

    const v24, 0x7f090d9a

    aput v24, v12, v23

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v11, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090d98

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v23

    const/16 v23, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090d9b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v23

    goto/16 :goto_3

    :cond_7
    if-eqz v16, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    if-nez v23, :cond_8

    const-string v23, "com.sec.android.app.shealth.CHECK_INIT"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v12, v0, [I

    const/16 v23, 0x0

    const v24, 0x7f090d97

    aput v24, v12, v23

    const/16 v23, 0x1

    const v24, 0x7f090d9c

    aput v24, v12, v23

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v11, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090d98

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v23

    const/16 v23, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090d9c

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v23

    goto/16 :goto_3

    :cond_8
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v12, v0, [I

    const/16 v23, 0x0

    const v24, 0x7f090d97

    aput v24, v12, v23

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v11, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090d98

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v23

    goto/16 :goto_3

    :catch_2
    move-exception v4

    const/4 v14, 0x0

    goto/16 :goto_4

    :catch_3
    move-exception v4

    const/4 v14, 0x0

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-wide/32 v6, 0x7f090d97

    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v8, p3}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->getItemId(I)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "weather_cover"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "weather_cover"

    if-nez v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->checkNetwork()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/settings/SelectItemDisplay$5;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectItemDisplay$5;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "START"

    if-nez v3, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "PACKAGE"

    const-string v7, "com.sec.android.sviewcover"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "CP"

    const-string v7, "Kweather"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    :goto_3
    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v6}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->notifyDataSetChanged()V

    :goto_4
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "START"

    if-nez v3, :cond_5

    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "PACKAGE"

    const-string v7, "com.sec.android.sviewcover"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "CP"

    const-string v7, "Cmaweather"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "START"

    if-nez v3, :cond_7

    const/4 v6, 0x1

    :goto_6
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "PACKAGE"

    const-string v7, "com.sec.android.sviewcover"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "CP"

    const-string v7, "Accuweather"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    goto :goto_6

    :cond_8
    const-wide/32 v6, 0x7f090d9c

    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v8, p3}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->getItemId(I)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_message"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_9

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_message"

    if-nez v0, :cond_a

    const/4 v6, 0x1

    :goto_8
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    goto :goto_8

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "shealth_pedometer_status_running"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "shealth_profile_initialized"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "walk_mate"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_c

    const/4 v2, 0x1

    :goto_9
    const-string v6, "SelectItemDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick - walk_mate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " shealth_pedometer_status_running:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " shealth_profile_initialized:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "walk_mate"

    if-nez v2, :cond_d

    const/4 v6, 0x1

    :goto_a
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "SelectItemDisplay"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick pedometerstatus-1 walk_mate-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_e

    const/4 v6, 0x1

    :goto_b
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":sendBroadcast "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.shealth.COVER"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "visibility"

    if-nez v2, :cond_f

    const/4 v6, 0x1

    :goto_c
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "type"

    const-string v7, "WALKMATE"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x0

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    goto :goto_a

    :cond_e
    const/4 v6, 0x0

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    goto :goto_c

    :cond_10
    if-nez v2, :cond_12

    if-nez v5, :cond_11

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    :goto_d
    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v6}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->notifyDataSetChanged()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    goto/16 :goto_4

    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "walk_mate"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "SelectItemDisplay"

    const-string v7, "onItemClick walk_mate(1): sendBroadcast com.sec.android.app.shealth.COVER"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.shealth.COVER"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "visibility"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "type"

    const-string v7, "WALKMATE"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_d

    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "walk_mate"

    if-nez v2, :cond_13

    const/4 v6, 0x1

    :goto_e
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "SelectItemDisplay"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick walk_mate-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_14

    const/4 v6, 0x1

    :goto_f
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": sendBroadcast "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.shealth.COVER"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "visibility"

    if-nez v2, :cond_15

    const/4 v6, 0x1

    :goto_10
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "type"

    const-string v7, "WALKMATE"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_13
    const/4 v6, 0x0

    goto :goto_e

    :cond_14
    const/4 v6, 0x0

    goto :goto_f

    :cond_15
    const/4 v6, 0x0

    goto :goto_10
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->CoverOpen()V

    goto :goto_0
.end method
