.class Lcom/android/settings/wifi/mobileap/WifiApWarning$3;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x1

    .line 200
    const/4 v2, 0x0

    .line 202
    .local v2, wifiSavedState:I
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;->val$cr:Landroid/content/ContentResolver;

    const-string v4, "wifi_saved_state"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 206
    :goto_0
    if-ne v2, v6, :cond_1

    .line 208
    const-wide/16 v3, 0x258

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 214
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;->val$cr:Landroid/content/ContentResolver;

    const-string v4, "wifi_saved_state"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 217
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 219
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v3

    if-eq v3, v6, :cond_3

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v0, dsaIntent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    const-string v3, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v3, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v3, "com.sprint.dsa.source"

    const-string v4, "hotspot"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$200(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    .end local v0           #dsaIntent:Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 229
    return-void

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 203
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
