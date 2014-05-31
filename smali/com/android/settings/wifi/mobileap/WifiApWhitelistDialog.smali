.class public Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
.super Landroid/app/AlertDialog;
.source "WifiApWhitelistDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mButtonOk:Landroid/widget/Button;

.field private mDeviceName:Ljava/lang/String;

.field private mEtDeviceName:Landroid/widget/EditText;

.field private mEtMac:Landroid/widget/LinearLayout;

.field private mEtMacArray:[Landroid/widget/EditText;

.field private mEtMacId:[I

.field private mIsTalkBackEnabled:Z

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMac:Ljava/lang/String;

.field private mMacFilter:Landroid/text/InputFilter;

.field private mSelectedFontSize:I

.field private mTempSsid:Ljava/lang/String;

.field private mTextNoChange:Ljava/lang/Boolean;

.field private mTvMac:Landroid/widget/TextView;

.field private mType:I

.field private mView:Landroid/view/View;

.field nameWatcher:Landroid/text/TextWatcher;

.field private sToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "WifiApWhitelistDialog"

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "type"
    .parameter "name"
    .parameter "mac"
    .parameter "listener"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 98
    const v0, 0x7f10003d

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    .line 73
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mIsTalkBackEnabled:Z

    .line 75
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacId:[I

    .line 84
    new-array v0, v2, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    .line 88
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMacFilter:Landroid/text/InputFilter;

    .line 259
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    .line 99
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;

    .line 100
    iput p2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    .line 101
    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    .line 103
    iput-object p5, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mSelectedFontSize:I

    .line 105
    return-void

    .line 75
    nop

    :array_0
    .array-data 0x4
        0x3et 0x5t 0xbt 0x7ft
        0x3ft 0x5t 0xbt 0x7ft
        0x40t 0x5t 0xbt 0x7ft
        0x41t 0x5t 0xbt 0x7ft
        0x42t 0x5t 0xbt 0x7ft
        0x43t 0x5t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mIsTalkBackEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->sToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;

    return-object v0
.end method

.method private validate()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, enabled:Z
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 296
    const/4 v0, 0x1

    .line 302
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-ne v2, v4, :cond_2

    .line 303
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 304
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v2, v4, :cond_5

    .line 305
    const/4 v0, 0x0

    .line 311
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 312
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    :cond_3
    return-void

    .line 298
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 299
    const/4 v0, 0x1

    goto :goto_0

    .line 303
    .restart local v1       #i:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x7f090430

    const/4 v11, 0x0

    const v10, 0x7f0b053b

    const/4 v9, 0x1

    const/16 v8, 0x8

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0401fd

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    .line 114
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setView(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setInverseBackgroundForced(Z)V

    .line 117
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b053c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    .line 118
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b0505

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    .line 119
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b0544

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    .line 120
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, SalesCode:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x6

    if-ge v1, v4, :cond_3

    .line 122
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacId:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    aput-object v4, v5, v1

    .line 123
    const-string v4, "BRI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CHN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CHM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CHU"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CTC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CHC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "TGY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/text/InputFilter;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMacFilter:Landroid/text/InputFilter;

    aput-object v6, v5, v11

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 129
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    const/16 v5, 0x91

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 130
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 131
    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mSelectedFontSize:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 132
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    const/high16 v5, 0x4160

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 121
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 126
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;-><init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;I)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 136
    :cond_3
    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-nez v4, :cond_4

    .line 137
    const v4, 0x7f090429

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 138
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    const v5, 0x7f0b053e

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 175
    :goto_2
    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0907d2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 177
    const/4 v4, -0x2

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0904d3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 180
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    .line 184
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mIsTalkBackEnabled:Z

    .line 185
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    .line 186
    return-void

    .line 142
    :cond_4
    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-ne v4, v9, :cond_5

    .line 143
    const v4, 0x7f090429

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 144
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 149
    :cond_5
    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 150
    const v4, 0x7f09042e

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 151
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 154
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b053a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v3

    .line 157
    .local v3, whiteList:Landroid/net/wifi/WifiApWhiteList;
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b053d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b053d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 161
    .end local v3           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    :cond_6
    const v4, 0x7f090388

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 162
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090107

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 167
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 168
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    const v5, 0x7f0b053e

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 169
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, strMac:[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_3
    const/4 v4, 0x6

    if-ge v1, v4, :cond_7

    .line 171
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 172
    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_2
.end method

.method public show()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 193
    :cond_1
    return-void
.end method
