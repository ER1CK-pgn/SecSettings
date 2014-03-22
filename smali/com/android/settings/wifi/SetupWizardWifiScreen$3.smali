.class Lcom/android/settings/wifi/SetupWizardWifiScreen$3;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen;->initializeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 157
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " OnClick : Launch the Next Screen "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 160
    return-void
.end method
