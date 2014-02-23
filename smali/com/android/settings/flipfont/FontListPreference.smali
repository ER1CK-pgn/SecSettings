.class public Lcom/android/settings/flipfont/FontListPreference;
.super Landroid/preference/ListPreference;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipfont/FontListPreference$LoadListTask;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static NO_CANCEL:Z

.field public static NO_WARNING_DIALOG:Z

.field public static REBOOT:Z

.field private static final apkNameList:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private isWidget:Ljava/lang/Boolean;

.field private mBuyButtonClicked:Z

.field private mCheckBadFont:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mDisplaySettings:Lcom/android/settings/DisplaySettings;

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

.field private mFontMenu:Lcom/android/settings/FontMenu;

.field private mListDialogIsActive:Z

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mRebootDialogIsActive:Z

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;

.field mState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    sput-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->REBOOT:Z

    .line 82
    sput-boolean v3, Lcom/android/settings/flipfont/FontListPreference;->NO_WARNING_DIALOG:Z

    .line 85
    sput-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    .line 87
    sput-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    .line 1051
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.monotype.android.font.cooljazz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.monotype.android.font.helvneuelt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.monotype.android.font.samsungsans"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.monotype.android.font.rosemary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.monotype.android.font.applemint"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.monotype.android.font.tinkerbell"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.monotype.android.font.maruberi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.monotype.android.font.mincho"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.monotype.android.font.arjpopb"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.monotype.android.font.kaiti"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.monotype.android.font.shaonv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.monotype.android.font.miao"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/flipfont/FontListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 269
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "FlipFont"

    const-string v1, "FontListPreference(Context context)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v8, 0x7f090a67

    const/16 v7, 0x14

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 98
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    .line 101
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 105
    iput v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 108
    iput v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 111
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 114
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    .line 117
    iput v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mQuestionDialogFontSize:I

    .line 120
    iput v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogLeftPadding:I

    .line 122
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogTopPadding:I

    .line 124
    iput v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogRightPadding:I

    .line 126
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogBottomPadding:I

    .line 130
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 131
    iput v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 134
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 135
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mListDialogIsActive:Z

    .line 136
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    .line 141
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 144
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    .line 153
    sget-boolean v3, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 154
    const-string v3, "FlipFont"

    const-string v4, "FontListPreference(Context context, AttributeSet attrs)"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 158
    const-string v3, "MONOTYPE"

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, v8}, Lcom/android/settings/flipfont/FontListPreference;->setTitle(I)V

    .line 162
    invoke-static {p1, v6}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, sPath:Ljava/lang/String;
    const-string v3, "MONOTYPE"

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, v8}, Lcom/android/settings/flipfont/FontListPreference;->setTitle(I)V

    .line 168
    invoke-static {p1, v6}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, sName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 170
    .local v2, temp:[Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1

    .line 172
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 176
    :goto_0
    if-nez v0, :cond_2

    .line 177
    const v3, 0x7f090a68

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setSummary(I)V

    .line 187
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 188
    sget-boolean v3, Lcom/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    if-eqz v3, :cond_5

    .line 194
    :goto_2
    const v3, 0x7f0200b5

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setDialogIcon(I)V

    .line 195
    return-void

    .line 174
    :cond_1
    invoke-static {p1, v6}, Landroid/graphics/Typeface;->getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_2
    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 180
    :cond_3
    const v3, 0x7f090a7b

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setSummary(I)V

    goto :goto_1

    .line 183
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->getFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 191
    :cond_5
    const/high16 v3, 0x104

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setNegativeButtonText(I)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/FontMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/DisplaySettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    return-object v0
.end method

.method private copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "fontWriter"
    .parameter "dir"
    .parameter "sPackageName"
    .parameter "sFileIn"
    .parameter "sFileOut"

    .prologue
    .line 496
    const/4 v0, 0x0

    .line 498
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/fonts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 505
    .local v3, uriFont:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 507
    .local v2, isFont:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 513
    invoke-virtual {p1, p2, v2, p5}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 516
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 519
    .end local v2           #isFont:Ljava/io/InputStream;
    .end local v3           #uriFont:Landroid/net/Uri;
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 508
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #isFont:Ljava/io/InputStream;
    .restart local v3       #uriFont:Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 509
    .restart local v1       #e:Ljava/lang/Exception;
    goto :goto_0

    .line 517
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 198
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 199
    .local v1, sbf:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fontName"

    .prologue
    const v3, 0x7f090a74

    const v2, 0x7f090a73

    const v1, 0x7f090a72

    .line 210
    const-string v0, "Rosemary"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .line 261
    .restart local p1
    :goto_0
    return-object p1

    .line 213
    :cond_0
    const-string v0, "Choco cooky"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 216
    :cond_1
    const-string v0, "Cool jazz"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 219
    :cond_2
    const-string v0, "HelveticaNeueRegular"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    const-string p1, "Helvetica S"

    goto :goto_0

    .line 222
    :cond_3
    const-string v0, "Samsung sans"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 223
    const-string p1, "Samsung Sans"

    goto :goto_0

    .line 225
    :cond_4
    const-string v0, "Apple mint"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a75

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto :goto_0

    .line 228
    :cond_5
    const-string v0, "Tinker bell"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 229
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a76

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 231
    :cond_6
    const-string v0, "Shao nv"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0910ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 234
    :cond_7
    const-string v0, "Kaiti"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 235
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0910bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 237
    :cond_8
    const-string v0, "Miao"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 238
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0910bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 240
    :cond_9
    const-string v0, "Maruberi"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 241
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a78

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 243
    :cond_a
    const-string v0, "Mincho"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 244
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a79

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 246
    :cond_b
    const-string v0, "Pop"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 247
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a7a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 249
    :cond_c
    const-string v0, "Cool"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 250
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 252
    :cond_d
    const-string v0, "Rose"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 253
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 255
    :cond_e
    const-string v0, "Choco"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 256
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .restart local p1
    goto/16 :goto_0

    .line 259
    :cond_f
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method


# virtual methods
.method protected RebootDialog()V
    .locals 4

    .prologue
    .line 978
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 979
    const-string v0, "FlipFont"

    const-string v1, "RebootDialog()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-eqz v0, :cond_1

    .line 1025
    :goto_0
    return-void

    .line 988
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 989
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 991
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->hideList()V

    .line 993
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 994
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090a7d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 996
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090a7c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090a7e

    new-instance v3, Lcom/android/settings/flipfont/FontListPreference$10;

    invoke-direct {v3, p0}, Lcom/android/settings/flipfont/FontListPreference$10;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/flipfont/FontListPreference$9;

    invoke-direct {v3, p0}, Lcom/android/settings/flipfont/FontListPreference$9;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1015
    new-instance v0, Lcom/android/settings/flipfont/FontListPreference$11;

    invoke-direct {v0, p0}, Lcom/android/settings/flipfont/FontListPreference$11;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1023
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1024
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected badFontDialog(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1143
    const v1, 0x7f090a83

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1146
    const v1, 0x7f090a84

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1149
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1152
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$12;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/flipfont/FontListPreference$12;-><init>(Lcom/android/settings/flipfont/FontListPreference;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1172
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$13;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$13;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1179
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1180
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1181
    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1070
    goto :goto_1

    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1071
    const-string v0, "FlipFont"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFont - checking apkname"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 1075
    :goto_0
    sget-object v3, Lcom/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 1076
    sget-object v3, Lcom/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1077
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1078
    const-string v0, "FlipFont"

    const-string v2, "**Apk name matches list**"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_1
    :goto_1
    return v1

    .line 1075
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1085
    :cond_3
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1086
    const-string v0, "FlipFont"

    const-string v3, "checkFont - check if valid certificate"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1094
    :goto_2
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1097
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 1098
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1101
    :try_start_1
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1108
    :goto_3
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1113
    :goto_4
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1114
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate issued by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The certificate is valid from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate SN# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const-string v2, "Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generated with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_5
    const-string v2, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 1124
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1126
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1127
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1128
    const-string v0, "FlipFont"

    const-string v2, "**Certificate data is correct**"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1092
    :catch_0
    move-exception v0

    move-object v0, v2

    goto/16 :goto_2

    .line 1102
    :catch_1
    move-exception v0

    .line 1104
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_3

    .line 1109
    :catch_2
    move-exception v0

    .line 1111
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_4

    .line 1132
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_1
.end method

.method public directFontList()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    .line 277
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 278
    return-void
.end method

.method protected dismissApp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 875
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 876
    const-string v0, "FlipFont"

    const-string v1, "dismissApp()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 881
    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 882
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 883
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->dismissList()V

    .line 884
    return-void
.end method

.method protected dismissList()V
    .locals 2

    .prologue
    .line 1027
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1028
    const-string v0, "FlipFont"

    const-string v1, "dismissList()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    :cond_1
    :goto_0
    return-void

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1035
    const-string v0, "FlipFont"

    const-string v1, "dismissList() - catch (Exception ex)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1185
    const/4 v0, 0x0

    .line 1186
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1188
    const-string v1, "selectedFont"

    const-string v2, "MONOTYPE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hideList()V
    .locals 2

    .prologue
    .line 1042
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1046
    const-string v0, "FlipFont"

    const-string v1, "hideList() - catch (Exception ex)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadPreferences()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 958
    .line 959
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v1, "prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 962
    const-string v1, "SelectDialogIsActive"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 963
    const-string v1, "RebootDialogIsActive"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 964
    const-string v1, "SavedClickedItem"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 965
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 966
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "flip_font_style"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 968
    if-ne v1, v3, :cond_0

    .line 969
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "flip_font_style"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 970
    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 976
    :goto_0
    return-void

    .line 973
    :cond_0
    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto :goto_0
.end method

.method public onCancelButtonPressed()V
    .locals 4

    .prologue
    .line 682
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 683
    const-string v2, "FlipFont"

    const-string v3, "onCancelButtonPressed() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 686
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 688
    .local v1, v:Landroid/widget/ListView;
    if-eqz v1, :cond_1

    .line 689
    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 693
    .end local v1           #v:Landroid/widget/ListView;
    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 703
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 704
    const-string v0, "FlipFont"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(DialogInterface dialog, int which) - which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 708
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-ne p2, v0, :cond_2

    .line 709
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 710
    const-string v0, "FlipFont"

    const-string v1, "onClick(DialogInterface dialog, int which) - exit "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_1
    :goto_0
    return-void

    .line 714
    :cond_2
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 715
    const-string v0, "FlipFont"

    const-string v1, "onClick(DialogInterface dialog, int which) after (which == mPreviousFont) "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_6

    .line 719
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 720
    const-string v0, "FlipFont"

    const-string v1, "onClick(DialogInterface dialog, int which) after (which == -2) "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_4
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 723
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 724
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 725
    iput-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 728
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->dismissApp()V

    .line 729
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 737
    :cond_6
    iput-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 738
    iput p2, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 739
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->checkFont(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    .line 741
    iget-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    if-eqz v1, :cond_7

    .line 742
    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->badFontDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_7
    if-ge p2, v5, :cond_8

    .line 747
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a6d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 760
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 761
    const v2, 0x7f090077

    new-instance v3, Lcom/android/settings/flipfont/FontListPreference$4;

    invoke-direct {v3, p0}, Lcom/android/settings/flipfont/FontListPreference$4;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090078

    new-instance v4, Lcom/android/settings/flipfont/FontListPreference$3;

    invoke-direct {v4, p0}, Lcom/android/settings/flipfont/FontListPreference$3;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 774
    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$5;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$5;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 781
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 782
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090a6e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 783
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 785
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 786
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 788
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 789
    iput-boolean v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 792
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-eqz v0, :cond_a

    .line 793
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->RebootDialog()V

    goto/16 :goto_0

    .line 751
    :cond_8
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a6c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 753
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v1, :cond_9

    .line 754
    new-instance v1, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 755
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 757
    :cond_9
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v1, v2}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 758
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 796
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->selectDialog()V

    goto/16 :goto_0
.end method

.method public onDialogClosed(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 892
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 895
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 897
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;

    invoke-virtual {v0}, Lcom/android/settings/FontMenu;->finish()V

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/DisplaySettings;->finish()V

    .line 906
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    if-eqz v0, :cond_3

    .line 908
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CHN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CU"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CHU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 913
    :cond_2
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a70

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 915
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 916
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 917
    const v0, 0x14000020

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 918
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 919
    iput-boolean v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 928
    :cond_3
    :goto_0
    return-void

    .line 921
    :cond_4
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a6f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 923
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 924
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 925
    iput-boolean v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    goto :goto_0
.end method

.method public onOkButtonPressed()Z
    .locals 32

    .prologue
    .line 528
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 531
    .local v5, apkname:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/flipfont/FontListPreference;->checkFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v15

    .line 535
    .local v15, d:Landroid/app/Dialog;
    invoke-virtual {v15}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ListView;

    .line 536
    .local v29, v:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 538
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 539
    const-string v2, "FlipFont"

    const-string v6, "**onOkButtonPressed - bad font**"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    const/4 v2, 0x0

    .line 675
    .end local v15           #d:Landroid/app/Dialog;
    .end local v29           #v:Landroid/widget/ListView;
    :goto_0
    return v2

    .line 544
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_4

    .line 545
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 549
    :goto_1
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_2

    .line 553
    new-instance v2, Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 557
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 560
    .local v27, selectedFont:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 563
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 566
    new-instance v3, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    .line 569
    .local v3, fontWriter:Lcom/android/settings/flipfont/FontWriter;
    if-eqz v27, :cond_3

    const-string v2, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 571
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v6, "sans.loc"

    const-string v7, "default#default"

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    if-nez v27, :cond_8

    .line 574
    const-string v2, "FontListPreference"

    const-string v6, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 547
    .end local v3           #fontWriter:Lcom/android/settings/flipfont/FontWriter;
    .end local v27           #selectedFont:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto/16 :goto_1

    .line 581
    .restart local v3       #fontWriter:Lcom/android/settings/flipfont/FontWriter;
    .restart local v27       #selectedFont:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v26

    .line 584
    .local v26, sansTypeface:Lcom/android/settings/flipfont/Typeface;
    move-object/from16 v25, v27

    .line 585
    .local v25, sFontDir:Ljava/lang/String;
    const-string v2, ".xml"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 586
    .local v21, index:I
    if-lez v21, :cond_6

    .line 587
    const/4 v2, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 589
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 592
    .local v4, fontDir:Ljava/io/File;
    const/16 v28, 0x0

    .line 593
    .local v28, tpf:Lcom/android/settings/flipfont/TypefaceFile;
    if-eqz v26, :cond_7

    .line 594
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_7

    .line 595
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28           #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    check-cast v28, Lcom/android/settings/flipfont/TypefaceFile;

    .line 598
    .restart local v28       #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 599
    .local v22, press_apkname:Ljava/lang/String;
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : Application name, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 601
    .local v12, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v2, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v23

    .line 604
    .local v23, res:Landroid/content/res/Resources;
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    .line 605
    .local v13, assetManager:Landroid/content/res/AssetManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fonts/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 607
    .local v20, in:Ljava/io/InputStream;
    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v12           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v13           #assetManager:Landroid/content/res/AssetManager;
    .end local v20           #in:Ljava/io/InputStream;
    .end local v22           #press_apkname:Ljava/lang/String;
    .end local v23           #res:Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 609
    :catch_0
    move-exception v17

    .line 610
    .local v17, ex:Ljava/lang/Exception;
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in file operation, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/flipfont/FontListPreference;->copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 618
    .end local v17           #ex:Ljava/lang/Exception;
    .end local v18           #i:I
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v6, "sans.loc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v30, "#"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 624
    .end local v4           #fontDir:Ljava/io/File;
    .end local v21           #index:I
    .end local v25           #sFontDir:Ljava/lang/String;
    .end local v26           #sansTypeface:Lcom/android/settings/flipfont/Typeface;
    .end local v28           #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    :cond_8
    :goto_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    .line 627
    .local v11, am:Landroid/app/IActivityManager;
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-nez v2, :cond_c

    .line 631
    const-wide/16 v6, 0x64

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 639
    :goto_5
    :try_start_3
    invoke-interface {v11}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 642
    .local v14, config:Landroid/content/res/Configuration;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/content/res/Configuration;->FlipFont:I

    .line 644
    invoke-interface {v11, v14}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 650
    .end local v14           #config:Landroid/content/res/Configuration;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 651
    .local v9, activityManager:Landroid/app/ActivityManager;
    const/16 v2, 0x32

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 652
    .local v10, allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v18, 0x1

    .line 653
    .restart local v18       #i:I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_9
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 654
    .local v8, aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 656
    .local v24, s:Ljava/lang/String;
    const-string v2, "com.android.settings"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "com.samsung.music"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "com.sec.android.app.music"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    .line 657
    const-string v2, "com.infraware.polarisoffice"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisoffice4"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisviewer4"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisoffice5"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisviewer5"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 661
    :cond_a
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 619
    .end local v8           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v9           #activityManager:Landroid/app/ActivityManager;
    .end local v10           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v11           #am:Landroid/app/IActivityManager;
    .end local v18           #i:I
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v24           #s:Ljava/lang/String;
    .restart local v4       #fontDir:Ljava/io/File;
    .restart local v21       #index:I
    .restart local v25       #sFontDir:Ljava/lang/String;
    .restart local v26       #sansTypeface:Lcom/android/settings/flipfont/Typeface;
    .restart local v28       #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    :catch_1
    move-exception v16

    .line 620
    .local v16, e:Ljava/lang/RuntimeException;
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 632
    .end local v4           #fontDir:Ljava/io/File;
    .end local v16           #e:Ljava/lang/RuntimeException;
    .end local v21           #index:I
    .end local v25           #sFontDir:Ljava/lang/String;
    .end local v26           #sansTypeface:Lcom/android/settings/flipfont/Typeface;
    .end local v28           #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    .restart local v11       #am:Landroid/app/IActivityManager;
    :catch_2
    move-exception v16

    .line 634
    .local v16, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 663
    .end local v16           #e:Ljava/lang/InterruptedException;
    .restart local v8       #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v9       #activityManager:Landroid/app/ActivityManager;
    .restart local v10       #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v18       #i:I
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v24       #s:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 672
    .end local v8           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v9           #activityManager:Landroid/app/ActivityManager;
    .end local v10           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v18           #i:I
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v24           #s:Ljava/lang/String;
    :cond_c
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->restartLater()V

    .line 675
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 646
    :catch_3
    move-exception v2

    goto/16 :goto_6
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6
    .parameter "builder"

    .prologue
    const v5, 0x7f090a6a

    .line 294
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, selectedFont:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a6b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    .local v0, okButton:Ljava/lang/String;
    :goto_0
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v2, "MONOTYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 311
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    if-eqz v2, :cond_3

    .line 314
    const-string v1, "HelveticaNeueRegular.xml"

    .line 315
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 316
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_1
    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-gez v2, :cond_0

    .line 336
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {p1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    const-string v2, "CHM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CMCC"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    if-eqz v2, :cond_5

    .line 342
    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$1;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    :cond_1
    :goto_2
    return-void

    .line 302
    .end local v0           #okButton:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0       #okButton:Ljava/lang/String;
    goto/16 :goto_0

    .line 321
    :cond_3
    const-string v1, "default"

    .line 322
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 323
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 329
    :cond_4
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 331
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 356
    :cond_5
    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$2;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2
.end method

.method public restartLater()V
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 488
    :cond_0
    return-void
.end method

.method public restartNow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 452
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.REBOOT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v1, i:Landroid/content/Intent;
    const-string v3, "nowait"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    const-string v3, "interval"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    const-string v3, "window"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 460
    iget-boolean v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    if-nez v3, :cond_1

    .line 471
    :cond_0
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 472
    return-void

    .line 463
    :cond_1
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method protected savePreferences()V
    .locals 3

    .prologue
    .line 940
    const/4 v0, 0x0

    .line 941
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 944
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 946
    const-string v1, "SelectDialogIsActive"

    iget-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 947
    const-string v1, "RebootDialogIsActive"

    iget-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 948
    const-string v1, "SavedClickedItem"

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 950
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 953
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flip_font_style"

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 954
    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1193
    const/4 v0, 0x0

    .line 1194
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1196
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1198
    const-string v1, "selectedFont"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1201
    return-void
.end method

.method public selectDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 802
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    iput-boolean v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 810
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->loadPreferences()V

    .line 811
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 813
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    if-ge v0, v5, :cond_3

    .line 814
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a6d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 822
    :goto_1
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->NO_WARNING_DIALOG:Z

    if-eqz v0, :cond_2

    .line 823
    iput-boolean v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 824
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 825
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->onOkButtonPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->dismissApp()V

    .line 832
    :cond_2
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-eqz v0, :cond_4

    .line 833
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 839
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 840
    new-instance v3, Lcom/android/settings/flipfont/FontListPreference$7;

    invoke-direct {v3, p0}, Lcom/android/settings/flipfont/FontListPreference$7;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x1040009

    new-instance v4, Lcom/android/settings/flipfont/FontListPreference$6;

    invoke-direct {v4, p0}, Lcom/android/settings/flipfont/FontListPreference$6;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 856
    new-instance v0, Lcom/android/settings/flipfont/FontListPreference$8;

    invoke-direct {v0, p0}, Lcom/android/settings/flipfont/FontListPreference$8;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 863
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->hideList()V

    .line 864
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 865
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a6e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 866
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 867
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 868
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 869
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 870
    iput-boolean v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 871
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    goto/16 :goto_0

    .line 817
    :cond_3
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a6c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 819
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v1, v2}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 820
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 836
    :cond_4
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090a7e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public setObject(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "displaySettings"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    .line 285
    return-void
.end method

.method public setObject(Lcom/android/settings/FontMenu;)V
    .locals 0
    .parameter "fontMenu"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;

    .line 282
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 417
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 418
    const-string v0, "FlipFont"

    const-string v1, "showDialog  (AlertDialog.Builder builder)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_2

    .line 420
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    .line 421
    new-instance v0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;-><init>(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListPreference$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 425
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-nez v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 431
    const v0, 0x7f090a71

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 433
    :cond_4
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->loadPreferences()V

    .line 435
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 436
    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->selectDialog()V

    .line 440
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 441
    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->RebootDialog()V

    goto :goto_0
.end method
