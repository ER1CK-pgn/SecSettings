.class Lcom/android/settings/wifi/mobileap/WifiApWarning$13;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1100(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 483
    return-void
.end method
