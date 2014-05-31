.class public Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;
.super Landroid/app/AlertDialog;
.source "WifiAutoNetworkSwitchDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# instance fields
.field private check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckBoxVisible:Z

.field private final mContext:Landroid/content/Context;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "checkBoxVisible"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mCheckBoxVisible:Z

    .line 56
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 58
    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mCheckBoxVisible:Z

    .line 59
    return-void
.end method


# virtual methods
.method public WifiAutoNetworkSwitchCheckBoxChecked()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1
    .parameter "view"
    .parameter "isChecked"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->playSoundEffect(I)V

    .line 109
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 112
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040222

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 64
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->setView(Landroid/view/View;)V

    .line 65
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->setInverseBackgroundForced(Z)V

    .line 70
    const v5, 0x7f0904b2

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->setTitle(I)V

    .line 73
    const v5, 0x7f0b058c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 75
    const-string v5, "USA"

    const-string v6, "KOR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    const v5, 0x7f0b05c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    .local v3, textView:Landroid/widget/TextView;
    const v5, 0x7f0904bb

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 85
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_0
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mCheckBoxVisible:Z

    if-eqz v5, :cond_1

    .line 86
    iget-object v5, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 87
    iget-object v5, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 97
    :goto_0
    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0907d2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 101
    return-void

    .line 89
    :cond_1
    const/high16 v0, 0x41a0

    .line 90
    .local v0, paddingBottomDips:F
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .local v2, scale:F
    mul-float v5, v0, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 92
    .local v1, paddingBottomPixels:I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 94
    iget-object v5, p0, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_0
.end method
