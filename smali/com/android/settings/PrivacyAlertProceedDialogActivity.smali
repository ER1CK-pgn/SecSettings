.class public Lcom/android/settings/PrivacyAlertProceedDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PrivacyAlertProceedDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private CarrierLegalEnPath:Ljava/lang/String;

.field private CarrierLegalEnURL:Ljava/lang/String;

.field private CarrierLegalEsPath:Ljava/lang/String;

.field private CarrierLegalEsURL:Ljava/lang/String;

.field private CarrierLegalKoPath:Ljava/lang/String;

.field private CarrierLegalKoURL:Ljava/lang/String;

.field private CarrierLegalViPath:Ljava/lang/String;

.field private CarrierLegalViURL:Ljava/lang/String;

.field private CarrierLegalZhPath:Ljava/lang/String;

.field private CarrierLegalZhURL:Ljava/lang/String;

.field bFileExist:Ljava/lang/Boolean;

.field bTest:Ljava/lang/Boolean;

.field private mView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 53
    const-string v0, "/carrier/data/app/Settings/privacy_en.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    .line 54
    const-string v0, "/carrier/data/app/Settings/privacy_es.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    .line 55
    const-string v0, "/carrier/data/app/Settings/privacy_ko.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoPath:Ljava/lang/String;

    .line 56
    const-string v0, "/carrier/data/app/Settings/privacy_vi.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViPath:Ljava/lang/String;

    .line 57
    const-string v0, "/carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhPath:Ljava/lang/String;

    .line 60
    const-string v0, "file:///carrier/data/app/Settings/privacy_en.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    .line 61
    const-string v0, "file:///carrier/data/app/Settings/privacy_es.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    .line 62
    const-string v0, "file:///carrier/data/app/Settings/privacy_ko.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoURL:Ljava/lang/String;

    .line 63
    const-string v0, "file:///carrier/data/app/Settings/privacy_vi.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViURL:Ljava/lang/String;

    .line 64
    const-string v0, "file:///carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhURL:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bTest:Ljava/lang/Boolean;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 11

    .prologue
    const v10, 0x7f0913cc

    const/4 v9, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040042

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 89
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0b00c0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    .local v0, contentView:Landroid/widget/TextView;
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    .line 93
    const-string v4, ""

    .line 95
    .local v4, sales_code:Ljava/lang/String;
    :try_start_0
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    const-string v6, "ril.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 102
    :cond_0
    :goto_0
    const-string v6, "PrivacyAlertProceedDialogActivity"

    const-string v7, "createView : "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_UseChameleon"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 105
    const-string v6, "PrivacyAlertProceedDialogActivity"

    const-string v7, "TAG_CSCFEATURE_COMMON_USECHAMELEON : true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, currentLang:Ljava/lang/String;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentLang : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bTest:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 109
    const-string v6, "/mnt/sdcard/Download/privacy_en.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    .line 110
    const-string v6, "/mnt/sdcard/Download/privacy_es.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    .line 111
    const-string v6, "/mnt/sdcard/Download/privacy_ko.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoPath:Ljava/lang/String;

    .line 112
    const-string v6, "/carrier/data/app/Settings/privacy_vi.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViPath:Ljava/lang/String;

    .line 113
    const-string v6, "/carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhPath:Ljava/lang/String;

    .line 115
    const-string v6, "file:///mnt/sdcard/Download/privacy_en.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    .line 116
    const-string v6, "file:///mnt/sdcard/Download/privacy_es.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    .line 117
    const-string v6, "file:///mnt/sdcard/Download/privacy_ko.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoURL:Ljava/lang/String;

    .line 118
    const-string v6, "file:///carrier/data/app/Settings/privacy_vi.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViURL:Ljava/lang/String;

    .line 119
    const-string v6, "file:///carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhURL:Ljava/lang/String;

    .line 121
    :cond_1
    const-string v6, "es"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 122
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, mfile:Ljava/io/File;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists1 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 173
    .end local v1           #currentLang:Ljava/lang/String;
    .end local v3           #mfile:Ljava/io/File;
    :goto_1
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_f

    .line 174
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bFileExist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v6, "SPR"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0913ca

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0913cb

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v10}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0913cd

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .end local v5           #view:Landroid/view/View;
    :goto_2
    return-object v5

    .line 99
    .restart local v5       #view:Landroid/view/View;
    :catch_0
    move-exception v2

    .line 100
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    const-string v7, "Reading failed for sales code"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 128
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #currentLang:Ljava/lang/String;
    .restart local v3       #mfile:Ljava/io/File;
    :cond_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 130
    .end local v3           #mfile:Ljava/io/File;
    :cond_3
    const-string v6, "ko"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 131
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v3       #mfile:Ljava/io/File;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists2 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 134
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    :cond_4
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 139
    .end local v3           #mfile:Ljava/io/File;
    :cond_5
    const-string v6, "vi"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 140
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v3       #mfile:Ljava/io/File;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists3 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 143
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 146
    :cond_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 148
    .end local v3           #mfile:Ljava/io/File;
    :cond_7
    const-string v6, "zh"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 149
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .restart local v3       #mfile:Ljava/io/File;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists4 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 152
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 155
    :cond_8
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 158
    .end local v3           #mfile:Ljava/io/File;
    :cond_9
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .restart local v3       #mfile:Ljava/io/File;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists5 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 161
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 164
    :cond_a
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 168
    .end local v1           #currentLang:Ljava/lang/String;
    .end local v3           #mfile:Ljava/io/File;
    :cond_b
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 177
    :cond_c
    const-string v6, "BST"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0913d2

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0913d3

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v10}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0913d4

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 179
    :cond_d
    const-string v6, "VMU"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0913d6

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0913d7

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0913d8

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0913d9

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 182
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0913ce

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0913cf

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v10}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0913d0

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 185
    :cond_f
    iget-object v5, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    goto/16 :goto_2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 205
    packed-switch p2, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 208
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->finish()V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 77
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0913c6

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 83
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->setupAlert()V

    .line 85
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 194
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 198
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 202
    return-void
.end method
