.class public Lcom/android/settings/wifi/WifiAdvancedVzwSetupActivity;
.super Landroid/app/Activity;
.source "WifiAdvancedVzwSetupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 44
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, frame:Landroid/widget/FrameLayout;
    const v3, 0x7f0b04f5

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 46
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;-><init>()V

    .line 47
    .local v0, advancedWifiSettings:Lcom/android/settings/wifi/AdvancedWifiSettings;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 48
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 49
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 50
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0401eb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAdvancedVzwSetupActivity;->initialize()V

    .line 41
    return-void
.end method
