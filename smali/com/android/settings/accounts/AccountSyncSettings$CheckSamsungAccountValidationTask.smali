.class Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;
.super Landroid/os/AsyncTask;
.source "AccountSyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckSamsungAccountValidationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mIntentToStartActivity:Landroid/content/Intent;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

.field private mValidationStatus:I

.field final synthetic this$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 902
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 906
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mValidationStatus:I

    .line 908
    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mIntentToStartActivity:Landroid/content/Intent;

    .line 910
    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 912
    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;Lcom/android/settings/accounts/AccountSyncSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 902
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 902
    iput p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mValidationStatus:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 902
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mIntentToStartActivity:Landroid/content/Intent;

    return-object p1
.end method

.method private registerSamsungAccountReceiver()V
    .locals 3

    .prologue
    .line 1016
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 1017
    new-instance v2, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$2;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$2;-><init>(Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;)V

    iput-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 1085
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1086
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1087
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1088
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 1089
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1091
    :cond_1
    return-void
.end method

.method private unregisterSamsungAccountReceiver()V
    .locals 2

    .prologue
    .line 1094
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1095
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1097
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mSamsungAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 1099
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .parameter "arg0"

    .prologue
    .line 930
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 931
    .local v0, activity:Landroid/app/Activity;
    const-string v1, "s5d189ajvs"

    .line 932
    .local v1, clientId:Ljava/lang/String;
    const-string v2, "E8781246E4A0F6E9E213178CC003DE6A"

    .line 933
    .local v2, clientSecret:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 934
    .local v8, packageName:Ljava/lang/String;
    :goto_0
    const-string v7, "OSP_02"

    .line 935
    .local v7, ospVersion:Ljava/lang/String;
    const-string v6, "VALIDATION_CHECK"

    .line 938
    .local v6, mode:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->registerSamsungAccountReceiver()V

    .line 941
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.msc.action.VALIDATION_CHECK_REQUEST"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 942
    .local v5, intentToRequest:Landroid/content/Intent;
    const-string v9, "client_id"

    const-string v10, "s5d189ajvs"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    const-string v9, "client_secret"

    const-string v10, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    const-string v9, "mypackage"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    const-string v9, "OSP_VER"

    const-string v10, "OSP_02"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    const-string v9, "MODE"

    const-string v10, "VALIDATION_CHECK"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {v0, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 952
    :cond_0
    const/4 v3, 0x0

    .line 953
    .local v3, count:I
    :goto_1
    iget v9, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mValidationStatus:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 955
    const/16 v9, 0x3c

    if-le v3, v9, :cond_3

    .line 956
    :try_start_0
    const-string v9, "AccountSettings"

    const-string v10, "no response from Samsung account"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->unregisterSamsungAccountReceiver()V

    .line 970
    iget v9, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mValidationStatus:I

    if-nez v9, :cond_4

    .line 971
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 973
    :goto_2
    return-object v9

    .line 933
    .end local v3           #count:I
    .end local v5           #intentToRequest:Landroid/content/Intent;
    .end local v6           #mode:Ljava/lang/String;
    .end local v7           #ospVersion:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    :cond_2
    const-string v8, "com.android.settings"

    goto :goto_0

    .line 960
    .restart local v3       #count:I
    .restart local v5       #intentToRequest:Landroid/content/Intent;
    .restart local v6       #mode:Ljava/lang/String;
    .restart local v7       #ospVersion:Ljava/lang/String;
    .restart local v8       #packageName:Ljava/lang/String;
    :cond_3
    const-wide/16 v9, 0x3e8

    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 961
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 962
    :catch_0
    move-exception v4

    .line 963
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 973
    .end local v4           #e:Ljava/lang/InterruptedException;
    :cond_4
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 902
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1011
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->unregisterSamsungAccountReceiver()V

    .line 1012
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1013
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "validated"

    .prologue
    .line 979
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 982
    .local v0, activity:Landroid/app/Activity;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 983
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 984
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 987
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 988
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mIntentToStartActivity:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 989
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mIntentToStartActivity:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 994
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 1007
    :cond_1
    :goto_1
    return-void

    .line 991
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    const v3, 0x7f090a5c

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 996
    :catch_0
    move-exception v1

    .line 997
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 998
    if-eqz v0, :cond_1

    .line 999
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1001
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1002
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1003
    if-eqz v0, :cond_1

    .line 1004
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 902
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 916
    new-instance v0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$1;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$1;-><init>(Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 922
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    const v2, 0x7f090a5b

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 923
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 924
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 925
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 926
    return-void
.end method
