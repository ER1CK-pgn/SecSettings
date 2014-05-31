.class Lcom/android/settings/myplace/MyPlaceProfileSettings$3;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "selected"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 707
    const-string v1, "MyPlaceSettings"

    const-string v2, "Select method item is clicked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mOlderPosition:I
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mFlag:Z
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #setter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mFlag:Z
    invoke-static {v1, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1502(Lcom/android/settings/myplace/MyPlaceProfileSettings;Z)Z

    .line 711
    if-nez p2, :cond_4

    .line 712
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->checkNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09158d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    const-string v1, "MyPlaceSettings"

    const-string v2, "map is clicked. start mapview"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.myplace.SELECT_MAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v1

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v2

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 725
    :cond_2
    const-string v1, "location"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v2

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    :cond_3
    const-string v1, "map_latitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v2

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    const-string v1, "map_longtitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    move-result-object v2

    #getter for: Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:I
    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 733
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 736
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    if-ne p2, v4, :cond_5

    .line 737
    const-string v1, "MyPlaceSettings"

    const-string v2, "wifi is clicked. start wifi network picker"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1, v0, v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 743
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    if-ne p2, v5, :cond_6

    .line 744
    const-string v1, "MyPlaceSettings"

    const-string v2, "bt is clicked. start bt device picker"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1, v0, v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 751
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 752
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;

    .line 753
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    #calls: Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V
    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->access$1800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    .line 754
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0
.end method
