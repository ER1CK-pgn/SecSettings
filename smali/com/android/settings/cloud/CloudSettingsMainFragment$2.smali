.class Lcom/android/settings/cloud/CloudSettingsMainFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "CloudSettingsMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cloud/CloudSettingsMainFragment;->registerCloudReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 749
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 752
    .local v5, action:Ljava/lang/String;
    const-string v14, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_CLOUD_STATUS"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 754
    const-string v14, "CloudSettings"

    const-string v15, "Received current cloud settings - CloudSettingsMainFragment"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V
    invoke-static {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const-string v15, "cloudSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/cloud/CloudSettings;->getInstance(Landroid/os/Bundle;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v15

    #setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v14, v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$102(Lcom/android/settings/cloud/CloudSettingsMainFragment;Lcom/android/settings/cloud/CloudSettings;)Lcom/android/settings/cloud/CloudSettings;

    .line 760
    const-string v14, "CloudSettings"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/settings/cloud/CloudSettings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/settings/cloud/CloudSettingsMainFragment;->updatePreferences()V
    invoke-static {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$200(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudStorageUsage()V
    invoke-static {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$300(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    .line 868
    .end local v5           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 763
    .restart local v5       #action:Ljava/lang/String;
    :cond_1
    const-string v14, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 764
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v15

    #setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z
    invoke-static {v14, v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$402(Lcom/android/settings/cloud/CloudSettingsMainFragment;Z)Z

    goto :goto_0

    .line 765
    :cond_2
    const-string v14, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_STORAGE_USAGE"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 767
    const-string v14, "CloudSettings"

    const-string v15, "Received current cloud storage usage - CloudSettingsMainFragment"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V
    invoke-static {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v15

    #setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v14, v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$102(Lcom/android/settings/cloud/CloudSettingsMainFragment;Lcom/android/settings/cloud/CloudSettings;)Lcom/android/settings/cloud/CloudSettings;

    .line 771
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 772
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/cloud/CloudSettings;->isAccountSet()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 773
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v14

    const-string v15, "cloudSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/settings/cloud/CloudSettings;->setStorageUsage(Landroid/os/Bundle;)V

    .line 776
    :cond_3
    const-string v14, "CloudSettings"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/settings/cloud/CloudSettings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/cloud/CloudSettings;->getStorageUsage()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;
    invoke-static {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$500(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 779
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/settings/cloud/CloudSettings;->getStorageUsage()Ljava/lang/String;

    move-result-object v15

    #setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$602(Lcom/android/settings/cloud/CloudSettingsMainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 780
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;
    invoke-static {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$500(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$600(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 785
    :cond_4
    const-string v14, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 787
    const-string v14, "result_code"

    const/16 v15, -0x3e7

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 788
    .local v12, resultCode:I
    const-string v14, "client_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 792
    .local v7, clientId:Ljava/lang/String;
    const/4 v14, -0x1

    if-ne v12, v14, :cond_b

    .line 794
    :try_start_0
    const-string v14, "validation_result"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 795
    .local v13, validationResult:Ljava/lang/Boolean;
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 797
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const/4 v15, 0x0

    #setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I
    invoke-static {v14, v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$702(Lcom/android/settings/cloud/CloudSettingsMainFragment;I)I

    .line 798
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showAllPreference()V

    .line 857
    .end local v13           #validationResult:Ljava/lang/Boolean;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "SamsungAccount"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 858
    .local v11, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 859
    .local v9, editor:Landroid/content/SharedPreferences$Editor;
    const-string v14, "validation_status"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I
    invoke-static {v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$700(Lcom/android/settings/cloud/CloudSettingsMainFragment;)I

    move-result v15

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 860
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 862
    .end local v9           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v11           #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v8

    .line 864
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 802
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v13       #validationResult:Ljava/lang/Boolean;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const/4 v15, 0x1

    #setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I
    invoke-static {v14, v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$702(Lcom/android/settings/cloud/CloudSettingsMainFragment;I)I

    .line 803
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showVerifyAccountPreference()V

    .line 805
    const-string v14, "check_list"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 807
    .local v6, checklist:I
    const/4 v4, 0x2

    .line 809
    .local v4, MASK_REQUIRE_TNC:I
    const/4 v3, 0x4

    .line 811
    .local v3, MASK_REQUIRE_NAME:I
    const/16 v1, 0x8

    .line 813
    .local v1, MASK_REQUIRE_EMAIL:I
    const/16 v2, 0x10

    .line 815
    .local v2, MASK_REQUIRE_MANDATORY:I
    and-int/lit8 v14, v6, 0x2

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 816
    const-string v14, "test"

    const-string v15, "require Tnc Agreement"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_7
    and-int/lit8 v14, v6, 0x4

    const/4 v15, 0x4

    if-ne v14, v15, :cond_8

    .line 819
    const-string v14, "test"

    const-string v15, "require Name Verification"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_8
    and-int/lit8 v14, v6, 0x8

    const/16 v15, 0x8

    if-ne v14, v15, :cond_9

    .line 822
    const-string v14, "test"

    const-string v15, "require  E-mail Certificate"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_9
    and-int/lit8 v14, v6, 0x10

    const/16 v15, 0x10

    if-ne v14, v15, :cond_a

    .line 825
    const-string v14, "test"

    const-string v15, "need to fill out required fields"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_a
    if-lez v6, :cond_5

    .line 829
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const-string v15, "REQUIRED_PROCESS_ACTION"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/settings/cloud/CloudSettingsMainFragment;->processAction:Ljava/lang/String;

    goto/16 :goto_1

    .line 840
    .end local v1           #MASK_REQUIRE_EMAIL:I
    .end local v2           #MASK_REQUIRE_MANDATORY:I
    .end local v3           #MASK_REQUIRE_NAME:I
    .end local v4           #MASK_REQUIRE_TNC:I
    .end local v6           #checklist:I
    .end local v13           #validationResult:Ljava/lang/Boolean;
    :cond_b
    const/4 v14, 0x1

    if-ne v12, v14, :cond_c

    .line 842
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$800(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 843
    const-string v14, "error_message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 844
    .local v10, errorMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const v16, 0x7f09097e

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 846
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->finish()V

    .line 847
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const/4 v15, 0x1

    #setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I
    invoke-static {v14, v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$702(Lcom/android/settings/cloud/CloudSettingsMainFragment;I)I

    goto/16 :goto_1

    .line 849
    .end local v10           #errorMessage:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$800(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 850
    const-string v14, "error_message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 851
    .restart local v10       #errorMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const v16, 0x7f09097e

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 853
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v14}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->finish()V

    .line 854
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const/4 v15, 0x1

    #setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mValidationStatus:I
    invoke-static {v14, v15}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$702(Lcom/android/settings/cloud/CloudSettingsMainFragment;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
