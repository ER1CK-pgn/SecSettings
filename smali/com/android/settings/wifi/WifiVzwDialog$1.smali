.class Lcom/android/settings/wifi/WifiVzwDialog$1;
.super Ljava/lang/Object;
.source "WifiVzwDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiVzwDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiVzwDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiVzwDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    #getter for: Lcom/android/settings/wifi/WifiVzwDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiVzwDialog;->access$000(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/WifiVzwDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->access$002(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 555
    :cond_0
    return-void
.end method
