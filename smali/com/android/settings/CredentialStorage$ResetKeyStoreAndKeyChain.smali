.class Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;
.super Landroid/os/AsyncTask;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyStoreAndKeyChain"
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
.field final synthetic this$0:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8

    const/4 v6, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {v1, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const-string v7, "knox_ccm_policy"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v7

    # setter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v5, v7}, Lcom/android/settings/CredentialStorage;->access$502(Lcom/android/settings/CredentialStorage;Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v5}, Lcom/android/settings/CredentialStorage;->access$500(Lcom/android/settings/CredentialStorage;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v5}, Lcom/android/settings/CredentialStorage;->access$500(Lcom/android/settings/CredentialStorage;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v5, "3.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v5}, Lcom/android/settings/CredentialStorage;->access$500(Lcom/android/settings/CredentialStorage;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->isAccessControlMethodPassword(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v5}, Lcom/android/settings/CredentialStorage;->access$500(Lcom/android/settings/CredentialStorage;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->keychainMarkedReset(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v5, "CredentialStorage"

    const-string v7, "Successfully deleted certificates from CCM"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v5}, Lcom/android/settings/CredentialStorage;->access$600(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/KeyStore;->reset()Z

    :try_start_1
    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v5}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    invoke-interface {v5}, Landroid/security/IKeyChainService;->reset()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    :try_start_3
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    return-object v5

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_4
    const-string v5, "CredentialStorage"

    const-string v7, "Error deleting certificates from CCM"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v4, 0x0

    const-string v5, "CredentialStorage"

    const-string v7, "Failed at ClientCertificateManager reset API"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    :catch_1
    move-exception v2

    const/4 v5, 0x0

    :try_start_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    :try_start_6
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_3

    :catchall_0
    move-exception v5

    :try_start_7
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v5
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f090aeb

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings/CredentialStorage;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f090aec

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
