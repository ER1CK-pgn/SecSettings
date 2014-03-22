.class public final Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;
.super Landroid/app/Activity;
.source "WifiP2pDummyPickerActivity.java"


# instance fields
.field blankLayout:Landroid/widget/LinearLayout;

.field center:Landroid/widget/RelativeLayout;

.field left:Landroid/widget/RelativeLayout;

.field private mIsGrandeDisplay:Z

.field private mIsLandscape:Z

.field right:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsGrandeDisplay:Z

    return-void
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 5
    .parameter

    .prologue
    .line 162
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 166
    :try_start_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 167
    const-class v2, Landroid/view/Display;

    const-string v3, "getRawWidth"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 169
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 173
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 175
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method private setGrandeDisplayView(Z)V
    .locals 9
    .parameter "land"

    .prologue
    const/16 v8, 0x28

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 126
    const v3, 0x7f0b057a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    .line 127
    const v3, 0x7f0b057b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    .line 128
    const v3, 0x7f0b057d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    .line 129
    const v3, 0x7f0b057c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    .line 131
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 137
    .local v1, leftParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 138
    .local v2, rightParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x4100

    invoke-direct {v0, v6, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 140
    .local v0, centerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .end local v0           #centerParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #leftParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #rightParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 156
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    return-void

    .line 144
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v1, leftParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x9

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v2, rightParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getDisplayWidth(Landroid/content/Context;)I

    move-result v3

    add-int/lit8 v3, v3, -0x50

    invoke-direct {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v0, centerParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 112
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    .line 115
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsGrandeDisplay:Z

    if-eqz v0, :cond_1

    .line 116
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->setGrandeDisplayView(Z)V

    .line 119
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f040215

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 88
    const-string v0, "grande"

    const-string v1, "ro.build.scafe.size"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsGrandeDisplay:Z

    .line 89
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    .line 92
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsGrandeDisplay:Z

    if-eqz v0, :cond_0

    .line 93
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->setGrandeDisplayView(Z)V

    .line 95
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    return-void
.end method
