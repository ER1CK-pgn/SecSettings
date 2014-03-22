.class public Lcom/android/settings/wifi/hs20/Hs20AccessPoint;
.super Landroid/preference/Preference;
.source "Hs20AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;
    }
.end annotation


# static fields
.field static final DBG:Z

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I


# instance fields
.field Hotspot20Available:Z

.field bssid:Ljava/lang/String;

.field frequency:I

.field hessid:Ljava/lang/String;

.field private isHS20AP:I

.field keyMgmts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCWErrorReason:I

.field private mCWState:I

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field networkId:I

.field operatorName:Ljava/lang/String;

.field pskType:Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->DBG:Z

    .line 89
    new-array v0, v2, [I

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->STATE_SECURED:[I

    .line 95
    new-array v0, v1, [I

    sput-object v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->STATE_NONE:[I

    return-void

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/Hs20ScanResult;)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 459
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 145
    iput-boolean v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->wpsAvailable:Z

    .line 147
    iput-boolean v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->Hotspot20Available:Z

    .line 151
    sget-object v0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->pskType:Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;

    .line 171
    iput v1, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mCWState:I

    .line 173
    iput v1, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mCWErrorReason:I

    .line 461
    const v0, 0x7f040167

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 463
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->loadResult(Landroid/net/wifi/Hs20ScanResult;)V

    .line 465
    invoke-direct {p0}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->refresh()V

    .line 467
    return-void
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;
    .locals 5
    .parameter "result"

    .prologue
    .line 401
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 403
    .local v0, wpa:Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 405
    .local v1, wpa2:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 407
    sget-object v2, Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;

    .line 421
    :goto_0
    return-object v2

    .line 409
    :cond_0
    if-eqz v1, :cond_1

    .line 411
    sget-object v2, Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;->WPA2:Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;

    goto :goto_0

    .line 413
    :cond_1
    if-eqz v0, :cond_2

    .line 415
    sget-object v2, Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;->WPA:Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;

    goto :goto_0

    .line 419
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sget-object v2, Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 3
    .parameter "result"

    .prologue
    const/4 v0, 0x3

    .line 257
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    const/4 v0, 0x1

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    const/4 v0, 0x2

    goto :goto_0

    .line 265
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "CCKM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/Hs20ScanResult;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x2

    .line 611
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->ssid:Ljava/lang/String;

    .line 613
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->bssid:Ljava/lang/String;

    .line 615
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->HESSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->hessid:Ljava/lang/String;

    .line 617
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->frequency:I

    .line 619
    invoke-static {p1}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->security:I

    .line 621
    iget v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->wpsAvailable:Z

    .line 623
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "HS20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->Hotspot20Available:Z

    .line 625
    iget v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->security:I

    if-ne v0, v2, :cond_0

    .line 627
    invoke-static {p1}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->pskType:Lcom/android/settings/wifi/hs20/Hs20AccessPoint$PskType;

    .line 629
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->networkId:I

    .line 631
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mRssi:I

    .line 633
    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 635
    iget-object v0, p1, Landroid/net/wifi/Hs20ScanResult;->operatorName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->operatorName:Ljava/lang/String;

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 639
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_2
    return-void

    .line 621
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const v6, 0x7f090393

    .line 985
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 989
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_2

    .line 993
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#ff"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, color:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1011
    .end local v0           #color:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_4

    .line 1013
    iget v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->isHS20AP:I

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    .line 1199
    :cond_1
    :goto_1
    return-void

    .line 997
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_3

    .line 999
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#ff"

    const-string v5, "#"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1001
    .restart local v0       #color:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1005
    .end local v0           #color:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1025
    :cond_4
    iget v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_5

    .line 1027
    const v3, 0x7f090399

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1029
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v7, :cond_6

    .line 1031
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1083
    :pswitch_0
    const v3, 0x7f090391

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1037
    :pswitch_1
    const v3, 0x7f090398

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1045
    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1051
    :pswitch_3
    const v3, 0x7f090390

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1057
    :pswitch_4
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1063
    :pswitch_5
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1069
    :pswitch_6
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1075
    :pswitch_7
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1089
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1097
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->Hotspot20Available:Z

    if-eqz v3, :cond_7

    .line 1099
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->operatorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1031
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 733
    instance-of v4, p1, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;

    if-nez v4, :cond_1

    move v2, v3

    .line 783
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 739
    check-cast v1, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;

    .line 743
    .local v1, other:Lcom/android/settings/wifi/hs20/Hs20AccessPoint;
    iget-object v4, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, v1, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v4, v5, :cond_2

    .line 745
    iget-object v4, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 751
    :cond_2
    iget v4, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mRssi:I

    iget v5, v1, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mRssi:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_3

    .line 753
    iget v4, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 759
    :cond_3
    iget v4, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->networkId:I

    iget v5, v1, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->networkId:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_4

    .line 761
    iget v4, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->networkId:I

    if-ne v4, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 767
    :cond_4
    const-string v2, "rssi"

    const-string v3, "ssid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 769
    iget v2, v1, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mRssi:I

    iget v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 771
    .local v0, difference:I
    if-eqz v0, :cond_5

    move v2, v0

    .line 773
    goto :goto_0

    .line 783
    .end local v0           #difference:I
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 887
    iget v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 889
    const/4 v0, -0x1

    .line 893
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 663
    const v7, 0x1020016

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mTitleText:Landroid/widget/TextView;

    .line 665
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mSummaryText:Landroid/widget/TextView;

    .line 669
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mTitleText:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 671
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 675
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x7f0700e3

    :try_start_0
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 677
    .local v6, xpp:Landroid/content/res/XmlResourceParser;
    invoke-static {v3, v6}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 679
    .local v1, csl:Landroid/content/res/ColorStateList;
    iget-object v7, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v6           #xpp:Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 699
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 701
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0043

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 703
    .local v5, signalStrength:[Ljava/lang/String;
    const v7, 0x7f0b03af

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 707
    .local v4, signal:Landroid/widget/ImageView;
    iget v7, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mRssi:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_1

    .line 709
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 725
    :goto_1
    return-void

    .line 681
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #signal:Landroid/widget/ImageView;
    .end local v5           #signalStrength:[Ljava/lang/String;
    .restart local v3       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 683
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "Settings.AccessPoint"

    const-string v8, "onBindView(), XmlResourceParser exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 713
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #res:Landroid/content/res/Resources;
    .restart local v0       #context:Landroid/content/Context;
    .restart local v4       #signal:Landroid/widget/ImageView;
    .restart local v5       #signalStrength:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->getLevel()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 715
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f09037b

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->getLevel()I

    move-result v8

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 717
    const v7, 0x7f0205e6

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 719
    iget v7, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->security:I

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->STATE_SECURED:[I

    :goto_2
    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->STATE_NONE:[I

    goto :goto_2
.end method

.method public update(Landroid/net/wifi/WifiInfo;)V
    .locals 2
    .parameter "wifiInfo"

    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 851
    .local v0, reorder:Z
    :goto_0
    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 853
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 855
    invoke-direct {p0}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->refresh()V

    .line 857
    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 863
    :cond_0
    return-void

    .line 849
    .end local v0           #reorder:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 867
    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_1

    move v3, v1

    :goto_0
    if-nez p1, :cond_2

    :goto_1
    xor-int v0, v3, v1

    .line 869
    .local v0, reorder:Z
    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 871
    iput-object p2, p0, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 873
    invoke-direct {p0}, Lcom/android/settings/wifi/hs20/Hs20AccessPoint;->refresh()V

    .line 875
    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 881
    :cond_0
    return-void

    .end local v0           #reorder:Z
    :cond_1
    move v3, v2

    .line 867
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
