.class public Lcom/android/settings/Utils$LengthFilter;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthFilter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextLimitToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1986
    iput-object p1, p0, Lcom/android/settings/Utils$LengthFilter;->mContext:Landroid/content/Context;

    .line 1987
    return-void
.end method

.method private makeTextLimitToast(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 1999
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2000
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f0903a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2001
    .local v0, limitStr:Ljava/lang/String;
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Utils$LengthFilter;->mTextLimitToast:Landroid/widget/Toast;

    .line 2002
    return-void
.end method

.method private showTextLimitMessage()V
    .locals 1

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/settings/Utils$LengthFilter;->mTextLimitToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1991
    iget-object v0, p0, Lcom/android/settings/Utils$LengthFilter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/Utils$LengthFilter;->makeTextLimitToast(Landroid/content/Context;)V

    .line 1993
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Utils$LengthFilter;->mTextLimitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 1994
    iget-object v0, p0, Lcom/android/settings/Utils$LengthFilter;->mTextLimitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1996
    :cond_1
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 2006
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    sub-int v2, p6, p5

    sub-int/2addr v1, v2

    rsub-int/lit8 v0, v1, 0x20

    .line 2007
    .local v0, keep:I
    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2008
    invoke-direct {p0}, Lcom/android/settings/Utils$LengthFilter;->showTextLimitMessage()V

    .line 2010
    :cond_0
    if-gtz v0, :cond_1

    .line 2011
    const-string v1, ""

    .line 2018
    :goto_0
    return-object v1

    .line 2012
    :cond_1
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_2

    .line 2013
    const/4 v1, 0x0

    goto :goto_0

    .line 2015
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 2016
    invoke-direct {p0}, Lcom/android/settings/Utils$LengthFilter;->showTextLimitMessage()V

    .line 2018
    :cond_3
    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method
