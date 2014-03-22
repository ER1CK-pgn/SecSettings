.class Lcom/android/settings/wfd/WifiDisplaySettings$1;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 795
    if-nez p1, :cond_0

    .line 796
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 798
    .local v1, li:Landroid/view/LayoutInflater;
    const v3, 0x7f0401c7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 803
    .end local v1           #li:Landroid/view/LayoutInflater;
    .local v2, v:Landroid/view/View;
    :goto_0
    const v3, 0x7f0b0311

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 804
    .local v0, b:Landroid/widget/Button;
    const v3, 0x7f0902cf

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 805
    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$1;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    const v3, 0x7f0b0310

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 813
    .restart local v0       #b:Landroid/widget/Button;
    const v3, 0x7f0902d0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 814
    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$1$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$1$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$1;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    return-object v2

    .line 800
    .end local v0           #b:Landroid/widget/Button;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    move-object v2, p1

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method
