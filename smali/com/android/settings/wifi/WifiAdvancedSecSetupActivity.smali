.class public Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;
.super Landroid/app/Activity;
.source "WifiAdvancedSecSetupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 52
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .local v1, frame:Landroid/widget/FrameLayout;
    const v3, 0x7f0b04ff

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 54
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;-><init>()V

    .line 55
    .local v0, advancedWifiSettings:Lcom/android/settings/wifi/AdvancedWifiSettings;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 56
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 57
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 58
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 72
    const/16 v0, 0x400

    .line 74
    .local v0, visibility:I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 78
    .local v1, wmLp:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x4000c00

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 79
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 43
    :cond_0
    const v0, 0x7f0401ec

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->initialize()V

    .line 47
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->setIndicatorTransparency()V

    .line 49
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 63
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 68
    return-void
.end method
