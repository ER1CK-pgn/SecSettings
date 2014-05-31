.class public Lcom/android/settings/myprofile/MyProfileActivity;
.super Landroid/app/Activity;
.source "MyProfileActivity.java"

# interfaces
.implements Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;,
        Lcom/android/settings/myprofile/MyProfileActivity$CustomSpinnerAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private btnTextColor:Landroid/widget/Button;

.field private btnTextColorBackground:Landroid/widget/Button;

.field private chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private isFirstInstance:Z

.field isFromUnlock:Z

.field private isMultiSIMDevice:Z

.field private isTextButtonSelected:Z

.field private lindseyFont:Landroid/graphics/Typeface;

.field private mClockHour01:Landroid/widget/ImageView;

.field private mClockHour02:Landroid/widget/ImageView;

.field private mClockHourDot:Landroid/widget/ImageView;

.field private mClockMin01:Landroid/widget/ImageView;

.field private mClockMin02:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFontFileNames:[Ljava/lang/String;

.field private mFontNames:[Ljava/lang/String;

.field private mFontStylePackageName:[Ljava/lang/String;

.field private mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

.field private mIsLiveWallpaper:Z

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mResources:Landroid/content/res/Resources;

.field private mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

.field private mSpinnerFontStyle:Landroid/widget/Spinner;

.field private mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

.field private mTypefaces:[Landroid/graphics/Typeface;

.field private selectodBackgroundColor:I

.field private selectodTextColor:I

.field private txtDate:Landroid/widget/TextView;

.field private txtTimeAmPm:Landroid/widget/TextView;

.field private txtTimeAmPmfirst:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    .line 145
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v2

    const-string v1, "com.monotype.android.font.cooljazz"

    aput-object v1, v0, v3

    const-string v1, "com.monotype.android.font.rosemary"

    aput-object v1, v0, v4

    const-string v1, "DroidSerif-Italic"

    aput-object v1, v0, v5

    const-string v1, "com.monotype.android.font.samsungsans"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 146
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fonts/Chococooky.ttf"

    aput-object v1, v0, v2

    const-string v1, "fonts/Cooljazz.ttf"

    aput-object v1, v0, v3

    const-string v1, "fonts/Rosemary.ttf"

    aput-object v1, v0, v4

    const-string v1, "DroidSerif-Italic"

    aput-object v1, v0, v5

    const-string v1, "fonts/Samsungsans.ttf"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 147
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Choco cooky"

    aput-object v1, v0, v2

    const-string v1, "Cool jazz"

    aput-object v1, v0, v3

    const-string v1, "Rosemary"

    aput-object v1, v0, v4

    const-string v1, "DroidSerif-Italic"

    aput-object v1, v0, v5

    const-string v1, "Samsung Sans"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->lindseyFont:Landroid/graphics/Typeface;

    .line 667
    new-instance v0, Lcom/android/settings/myprofile/MyProfileActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/MyProfileActivity$4;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1024
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/myprofile/MyProfileActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/myprofile/MyProfileActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->reflectSelectedTextFontColor(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/myprofile/MyProfileActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/myprofile/MyProfileActivity;)Lcom/android/settings/myprofile/SpLitColorPickerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/myprofile/MyProfileActivity;)[Landroid/graphics/Typeface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/myprofile/MyProfileActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/myprofile/MyProfileActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/myprofile/MyProfileActivity;)Lcom/android/settings/myprofile/EllipsisEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/myprofile/MyProfileActivity;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/myprofile/MyProfileActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/myprofile/MyProfileActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->getFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertClockTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1121
    const/16 v0, 0xc

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 1133
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v3, v0, [I

    .line 1134
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v4, v0, [I

    move v0, v1

    .line 1135
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1136
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v0

    .line 1135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1138
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1139
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v0

    .line 1138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1142
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 1143
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1144
    aget v0, v3, v1

    if-ne v0, v6, :cond_2

    .line 1145
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v3, v2, v7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1158
    :goto_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    const/16 v3, 0xa

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1159
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    aget v1, v4, v1

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1160
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    aget v1, v4, v6

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1161
    return-void

    .line 1147
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v3, v3, v1

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1150
    :cond_3
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1151
    aget v0, v3, v1

    if-ne v0, v6, :cond_4

    .line 1152
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    aget v5, v2, v7

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1156
    :goto_3
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v3, v3, v6

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1154
    :cond_4
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    aget v5, v3, v1

    aget v5, v2, v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1121
    nop

    :array_0
    .array-data 0x4
        0xb8t 0x3t 0x2t 0x7ft
        0xb9t 0x3t 0x2t 0x7ft
        0xbbt 0x3t 0x2t 0x7ft
        0xbct 0x3t 0x2t 0x7ft
        0xbdt 0x3t 0x2t 0x7ft
        0xbet 0x3t 0x2t 0x7ft
        0xbft 0x3t 0x2t 0x7ft
        0xc0t 0x3t 0x2t 0x7ft
        0xc1t 0x3t 0x2t 0x7ft
        0xc2t 0x3t 0x2t 0x7ft
        0xc3t 0x3t 0x2t 0x7ft
        0xbat 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method private getBackgroundColorValueFromDB()I
    .locals 4

    .prologue
    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -------DB BACKGROUND COLOR VALUE ----- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "my_profile_background_color"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_background_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 877
    :goto_0
    return v0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 877
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDeviceOrientation()I
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getDimension(I)F
    .locals 1
    .parameter "dim"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1069
    const-string v0, "Rosemary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b8e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1116
    :goto_0
    return-object v0

    .line 1072
    :cond_0
    const-string v0, "Choco cooky"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b8f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1075
    :cond_1
    const-string v0, "Cool jazz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b8d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1078
    :cond_2
    const-string v0, "DroidSerif-Italic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1079
    const-string v0, "DroidSerif-Italic"

    goto :goto_0

    .line 1080
    :cond_3
    const-string v0, "Lindsey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1081
    const-string v0, "Lindsey"

    goto :goto_0

    .line 1083
    :cond_4
    const-string v0, "Baikzongyul pen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1084
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b92

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1087
    :cond_5
    const-string v0, "UDRGothic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1088
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b93

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1090
    :cond_6
    const-string v0, "UDMincho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1091
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b94

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1093
    :cond_7
    const-string v0, "Pop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1094
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b95

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1097
    :cond_8
    const-string v0, "Shao nv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1098
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09123c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1100
    :cond_9
    const-string v0, "Kaiti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1101
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09123d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1103
    :cond_a
    const-string v0, "Miao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1104
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09123e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1107
    :cond_b
    const-string v0, "Apple mint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1108
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b90

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1110
    :cond_c
    const-string v0, "Tinker bell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1111
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b91

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private getProfileTextFromDB()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f091023

    const v3, 0x7f091019

    .line 823
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_information"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    if-nez v0, :cond_0

    .line 825
    const-string v0, ""

    .line 829
    :cond_0
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 830
    const-string v1, "Always with you\u200b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 846
    :cond_1
    :goto_0
    return-object v0

    .line 832
    :cond_2
    const-string v1, "Personal message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 837
    :cond_3
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Personal Banner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 838
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f091024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 839
    :cond_4
    const-string v1, "Life companion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 840
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 841
    :cond_5
    const-string v1, "Personal message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 842
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTextColorValueFromDB()I
    .locals 4

    .prologue
    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -------DB TEXT COLOR VALUE ----- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "my_profile_text_color"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 861
    :goto_0
    return v0

    .line 858
    :catch_0
    move-exception v0

    .line 859
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 861
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextSizeFromDB()Ljava/lang/String;
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_size"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValueFromDB(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 984
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 988
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 984
    goto :goto_0

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v1, v2

    .line 988
    goto :goto_0
.end method

.method private getViewID(Z)I
    .locals 1
    .parameter "isTextButtonSelected"

    .prologue
    .line 526
    if-eqz p1, :cond_0

    .line 527
    const v0, 0x7f0b02a2

    .line 529
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b02a3

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 407
    const v2, 0x7f0b025d

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/EllipsisEditText;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    .line 408
    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setNewActionPopupMenu(IZ)V

    .line 412
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v2, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setWritingBuddyEnabled(Z)V

    .line 415
    const v2, 0x7f0b02a2

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    .line 416
    const v2, 0x7f0b02a3

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    .line 417
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 418
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 422
    const v2, 0x7f0b0264

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/SpLitColorPickerView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    .line 423
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getDeviceOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDeviceOrientation(I)V

    .line 426
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->restoreDBColorValue()V

    .line 427
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setPreviewTextView()V

    .line 428
    const-string v2, "my_profile_is_text_button_selected"

    invoke-direct {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 429
    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getViewID(Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    .line 431
    const v2, 0x7f0b0297

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    .line 432
    const v2, 0x7f0b0298

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    .line 433
    const v2, 0x7f0b0299

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    .line 434
    const v2, 0x7f0b029a

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    .line 435
    const v2, 0x7f0b029b

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    .line 437
    const v2, 0x7f0b029c

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    .line 438
    const v2, 0x7f0b0296

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    .line 439
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    const v2, 0x7f0b029f

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    .line 441
    const v2, 0x7f0b029d

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 442
    const v2, 0x7f0b02a0

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 444
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v3, "show_clock"

    invoke-direct {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 445
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v3, "lock_screen_date_and_year"

    invoke-direct {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 446
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 447
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 449
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTimeAndDateIntoTextFields()V

    .line 450
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$1;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setOnColorChangedListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;)V

    .line 462
    const v2, 0x7f0b0265

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/GradientColorPickerView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    .line 465
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$2;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/GradientColorPickerView;->setOnColorChangedListener(Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;)V

    .line 478
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextOpecity()V

    .line 480
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 482
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->loadTypeFaces()V

    .line 484
    const v2, 0x7f0b02a4

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    .line 485
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 487
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "my_profile_font_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, selectedFontPackage:Ljava/lang/String;
    const/4 v0, 0x0

    .line 489
    .local v0, position:I
    if-eqz v1, :cond_1

    .line 490
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 491
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 496
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    .line 497
    :cond_2
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 499
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$3;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 523
    return-void

    .line 490
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadTypeFaces()V
    .locals 4

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    .line 997
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 998
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "Lindsey"

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "Baikzongyul pen"

    if-ne v0, v2, :cond_2

    .line 999
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    const-string v0, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->lindseyFont:Landroid/graphics/Typeface;

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->lindseyFont:Landroid/graphics/Typeface;

    aput-object v2, v0, v1

    .line 997
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1004
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "DroidSerif-Italic"

    if-ne v0, v2, :cond_4

    .line 1005
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    const-string v2, "/system/fonts/DroidSerif-Italic.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1018
    :catch_0
    move-exception v0

    .line 1022
    :cond_3
    return-void

    .line 1007
    :cond_4
    const/4 v0, 0x0

    .line 1009
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1013
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1014
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2, v0}, Lcom/android/settings/flipfont/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1015
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    aput-object v0, v2, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1010
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private refereshTextAndBackGroundColor(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 752
    if-eqz p1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    const v0, 0x7f0b025d

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private reflectSelectedTextFontColor(I)V
    .locals 3
    .parameter

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v1, " --------- INSIDE REFLECT COLOR ---------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setSelectodColor(I)V

    .line 924
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->refereshTextAndBackGroundColor(Z)V

    .line 926
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ***&&&&%%%### COLOR VALUE --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void
.end method

.method private restoreDBColorValue()V
    .locals 2

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    .line 938
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setBackgroundColor(I)V

    .line 939
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextColor(I)V

    .line 942
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 946
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, -0x100

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 947
    const v0, 0x7f0b025d

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 948
    return-void

    .line 937
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v0

    goto :goto_0

    .line 946
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    goto :goto_1

    .line 947
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    goto :goto_2
.end method

.method private saveBackgroundColorValueToDB(I)V
    .locals 3
    .parameter

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_background_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 898
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --BACKFROUND COLOR SETTING updated with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void
.end method

.method private saveProfileTextToDB(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_information"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 653
    return-void
.end method

.method private saveTextColorValueToDB(I)V
    .locals 3
    .parameter

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 888
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --TEXT COLOR SETTING updated with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void
.end method

.method private saveTextSizeToDB(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_size"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 813
    return-void
.end method

.method private setAmPm(Ljava/util/Calendar;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 1164
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 1165
    if-nez v0, :cond_1

    .line 1168
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1169
    const v0, 0x7f09138b

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1173
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    :goto_1
    return-void

    .line 1171
    :cond_0
    const v0, 0x7f09138c

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1176
    :cond_1
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1177
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setPreviewTextView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 572
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 573
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0e000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 574
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v6

    .line 575
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 576
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setScaledDensity(F)V

    .line 577
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setText(Ljava/lang/CharSequence;)V

    .line 578
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextSizeFromDB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/EllipsisEditText;->getMaxTextSize()F

    move-result v0

    .line 579
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const v2, 0x7f0f0115

    invoke-direct {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/myprofile/EllipsisEditText;->setMaxTextSize(F)V

    .line 581
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const/high16 v2, 0x40a0

    const/4 v3, 0x0

    const/high16 v4, 0x4040

    const/high16 v5, -0x6700

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/myprofile/EllipsisEditText;->setShadowLayer(FFFI)V

    .line 582
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    .line 583
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setSelection(II)V

    .line 584
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const-string v1, "inputType=option"

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/EllipsisEditText;->requestFocus()Z

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 589
    return-void

    .line 578
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextSizeFromDB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method private setTextOpecity()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f00

    .line 966
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 967
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 968
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 969
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 970
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 971
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 972
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 973
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 974
    return-void

    :cond_0
    move v0, v2

    .line 966
    goto :goto_0

    :cond_1
    move v0, v2

    .line 967
    goto :goto_1

    :cond_2
    move v0, v2

    .line 968
    goto :goto_2

    :cond_3
    move v0, v2

    .line 969
    goto :goto_3

    :cond_4
    move v0, v2

    .line 970
    goto :goto_4

    :cond_5
    move v0, v2

    .line 971
    goto :goto_5

    :cond_6
    move v0, v2

    .line 972
    goto :goto_6

    :cond_7
    move v1, v2

    .line 973
    goto :goto_7
.end method

.method private setTimeAndDateIntoTextFields()V
    .locals 4

    .prologue
    .line 532
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 534
    const-string v0, ""

    .line 535
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MM-dd-yyyy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 538
    :cond_0
    const v0, 0x7f09138a

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 543
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 547
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "kk"

    .line 548
    :goto_1
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 549
    const-string v2, "mm"

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 550
    invoke-direct {p0, v0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->convertClockTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 554
    :try_start_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 555
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 556
    const v2, 0x7f09138b

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f09138c

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setAmPm(Ljava/util/Calendar;)V

    .line 569
    return-void

    .line 539
    :cond_3
    const-string v3, "dd-MM-yyyy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 540
    const v0, 0x7f091389

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 547
    :cond_4
    const-string v0, "h"

    goto :goto_1

    .line 560
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 563
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private setValueIntoDatabase(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 977
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 978
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return-void

    .line 977
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setWalllpaper()V
    .locals 6

    .prologue
    .line 322
    const v4, 0x7f0b0292

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 323
    .local v0, background:Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 324
    .local v1, mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/android/settings/myprofile/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    .line 325
    iget-boolean v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 326
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 328
    .local v3, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 329
    .local v2, wallpaperInfo:Landroid/app/WallpaperInfo;
    if-eqz v2, :cond_1

    .line 330
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    .end local v0           #background:Landroid/widget/ImageView;
    .end local v1           #mDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #wallpaperInfo:Landroid/app/WallpaperInfo;
    .end local v3           #wallpaperManager:Landroid/app/WallpaperManager;
    :cond_0
    :goto_0
    return-void

    .line 337
    .restart local v0       #background:Landroid/widget/ImageView;
    .restart local v1       #mDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v4, Lcom/android/settings/myprofile/MyProfileWallpaper;

    invoke-direct {v4, p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    .end local v0           #background:Landroid/widget/ImageView;
    .end local v1           #mDrawable:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private showOnScreenKeyPad()V
    .locals 3

    .prologue
    .line 596
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 597
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 598
    return-void
.end method

.method private updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f020426

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0b02a3

    const v3, 0x7f0b02a2

    .line 687
    if-nez p1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 690
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 692
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 694
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020427

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 695
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020429

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 698
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 699
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02042a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 708
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 721
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 741
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->showOnScreenKeyPad()V

    goto :goto_0

    .line 710
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020428

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 711
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020429

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 714
    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02042b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 715
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 723
    :pswitch_6
    iput-boolean v6, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 725
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setLastIndexColorValue(IZ)V

    .line 726
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 727
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    goto :goto_2

    .line 731
    :pswitch_7
    iput-boolean v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 733
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0, v5, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setLastIndexColorValue(IZ)V

    .line 734
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 735
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    goto :goto_2

    .line 690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 692
    :pswitch_data_1
    .packed-switch 0x7f0b02a2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 708
    :pswitch_data_2
    .packed-switch 0x7f0b02a2
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 721
    :pswitch_data_3
    .packed-switch 0x7f0b02a2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getSelectodBackGroundColor()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    return v0
.end method

.method public getSelectodTextColor()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    return v0
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextOpecity()V

    .line 953
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 963
    :pswitch_0
    return-void

    .line 953
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b029d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 185
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v16, "onCreate()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "ro.product.name"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "u0lte"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 188
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/myprofile/MyProfileActivity;->setRequestedOrientation(I)V

    .line 189
    :cond_0
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 192
    .local v1, intent:Landroid/content/Intent;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    .line 193
    const-string v15, "direct_lockscren"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    .line 196
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v15, :cond_1

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/high16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    .line 198
    new-instance v15, Landroid/content/Intent;

    const-string v16, "intent.stop.app-in-app"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/myprofile/MyProfileActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    .line 203
    .local v14, sales_code:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 204
    const/4 v15, 0x2

    new-array v10, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "com.monotype.android.font.maruberi"

    aput-object v16, v10, v15

    const/4 v15, 0x1

    const-string v16, "com.monotype.android.font.mincho"

    aput-object v16, v10, v15

    .line 205
    .local v10, mJFontStylePackageName:[Ljava/lang/String;
    const/4 v15, 0x2

    new-array v8, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "fonts/Maruberi.ttf"

    aput-object v16, v8, v15

    const/4 v15, 0x1

    const-string v16, "fonts/Mincho.ttf"

    aput-object v16, v8, v15

    .line 206
    .local v8, mJFontFileNames:[Ljava/lang/String;
    const/4 v15, 0x2

    new-array v9, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "UDRGothic"

    aput-object v16, v9, v15

    const/4 v15, 0x1

    const-string v16, "UDMincho"

    aput-object v16, v9, v15

    .line 208
    .local v9, mJFontNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 209
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 210
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    .line 288
    .end local v8           #mJFontFileNames:[Ljava/lang/String;
    .end local v9           #mJFontNames:[Ljava/lang/String;
    .end local v10           #mJFontStylePackageName:[Ljava/lang/String;
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/myprofile/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    .line 289
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 290
    const v15, 0x103013c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/myprofile/MyProfileActivity;->setTheme(I)V

    .line 293
    :cond_2
    const v15, 0x7f040108

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/myprofile/MyProfileActivity;->setContentView(I)V

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setWalllpaper()V

    .line 298
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 305
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->init()V

    .line 306
    return-void

    .line 211
    :cond_3
    const-string v15, "CHN"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "CHM"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "CHU"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "CHC"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 212
    :cond_4
    const/4 v15, 0x3

    new-array v7, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "com.monotype.android.font.shaonv"

    aput-object v16, v7, v15

    const/4 v15, 0x1

    const-string v16, "com.monotype.android.font.kaiti"

    aput-object v16, v7, v15

    const/4 v15, 0x2

    const-string v16, "com.monotype.android.font.miao"

    aput-object v16, v7, v15

    .line 213
    .local v7, mCFontStylePackageName:[Ljava/lang/String;
    const/4 v15, 0x3

    new-array v5, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "fonts/Shaonv.ttf"

    aput-object v16, v5, v15

    const/4 v15, 0x1

    const-string v16, "fonts/Kaiti.ttf"

    aput-object v16, v5, v15

    const/4 v15, 0x2

    const-string v16, "fonts/Miao.ttf"

    aput-object v16, v5, v15

    .line 214
    .local v5, mCFontFileNames:[Ljava/lang/String;
    const/4 v15, 0x3

    new-array v6, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Shao nv"

    aput-object v16, v6, v15

    const/4 v15, 0x1

    const-string v16, "Kaiti"

    aput-object v16, v6, v15

    const/4 v15, 0x2

    const-string v16, "Miao"

    aput-object v16, v6, v15

    .line 216
    .local v6, mCFontNames:[Ljava/lang/String;
    const-string v15, "ro.product.name"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "cs02"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 217
    const/4 v15, 0x1

    new-array v7, v15, [Ljava/lang/String;

    .line 218
    const/4 v15, 0x0

    const-string v16, "com.monotype.android.font.kaiti"

    aput-object v16, v7, v15

    .line 219
    const/4 v15, 0x1

    new-array v5, v15, [Ljava/lang/String;

    .line 220
    const/4 v15, 0x0

    const-string v16, "fonts/Kaiti.ttf"

    aput-object v16, v5, v15

    .line 221
    const/4 v15, 0x1

    new-array v6, v15, [Ljava/lang/String;

    .line 222
    const/4 v15, 0x0

    const-string v16, "Kaiti"

    aput-object v16, v6, v15

    .line 225
    :cond_5
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 226
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 227
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    .line 228
    .end local v5           #mCFontFileNames:[Ljava/lang/String;
    .end local v6           #mCFontNames:[Ljava/lang/String;
    .end local v7           #mCFontStylePackageName:[Ljava/lang/String;
    :cond_6
    const-string v15, "CTC"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "TGY"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "BRI"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 229
    :cond_7
    const/4 v15, 0x2

    new-array v7, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "com.monotype.android.font.shaonv"

    aput-object v16, v7, v15

    const/4 v15, 0x1

    const-string v16, "com.monotype.android.font.kaiti"

    aput-object v16, v7, v15

    .line 230
    .restart local v7       #mCFontStylePackageName:[Ljava/lang/String;
    const/4 v15, 0x2

    new-array v5, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "fonts/Shaonv.ttf"

    aput-object v16, v5, v15

    const/4 v15, 0x1

    const-string v16, "fonts/Kaiti.ttf"

    aput-object v16, v5, v15

    .line 231
    .restart local v5       #mCFontFileNames:[Ljava/lang/String;
    const/4 v15, 0x2

    new-array v6, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Shao nv"

    aput-object v16, v6, v15

    const/4 v15, 0x1

    const-string v16, "Kaiti"

    aput-object v16, v6, v15

    .line 233
    .restart local v6       #mCFontNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 234
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 235
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    .line 236
    .end local v5           #mCFontFileNames:[Ljava/lang/String;
    .end local v6           #mCFontNames:[Ljava/lang/String;
    .end local v7           #mCFontStylePackageName:[Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 238
    const/4 v15, 0x4

    new-array v13, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "com.monotype.android.font.samsungsans"

    aput-object v16, v13, v15

    const/4 v15, 0x1

    const-string v16, "Lindsey"

    aput-object v16, v13, v15

    const/4 v15, 0x2

    const-string v16, "com.monotype.android.font.chococooky"

    aput-object v16, v13, v15

    const/4 v15, 0x3

    const-string v16, "com.monotype.android.font.applemint"

    aput-object v16, v13, v15

    .line 242
    .local v13, mKFontStylePackageName:[Ljava/lang/String;
    const/4 v15, 0x4

    new-array v11, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "fonts/Samsungsans.ttf"

    aput-object v16, v11, v15

    const/4 v15, 0x1

    const-string v16, "Lindsey"

    aput-object v16, v11, v15

    const/4 v15, 0x2

    const-string v16, "fonts/Chococooky.ttf"

    aput-object v16, v11, v15

    const/4 v15, 0x3

    const-string v16, "fonts/Applemint.ttf"

    aput-object v16, v11, v15

    .line 246
    .local v11, mKFontFileNames:[Ljava/lang/String;
    const/4 v15, 0x4

    new-array v12, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Samsung Sans"

    aput-object v16, v12, v15

    const/4 v15, 0x1

    const-string v16, "Baikzongyul pen"

    aput-object v16, v12, v15

    const/4 v15, 0x2

    const-string v16, "Choco cooky"

    aput-object v16, v12, v15

    const/4 v15, 0x3

    const-string v16, "Apple mint"

    aput-object v16, v12, v15

    .line 251
    .local v12, mKFontNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 252
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 253
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    .line 264
    .end local v11           #mKFontFileNames:[Ljava/lang/String;
    .end local v12           #mKFontNames:[Ljava/lang/String;
    .end local v13           #mKFontStylePackageName:[Ljava/lang/String;
    :cond_9
    const/4 v15, 0x6

    new-array v4, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "com.monotype.android.font.samsungsans"

    aput-object v16, v4, v15

    const/4 v15, 0x1

    const-string v16, "Lindsey"

    aput-object v16, v4, v15

    const/4 v15, 0x2

    const-string v16, "com.monotype.android.font.chococooky"

    aput-object v16, v4, v15

    const/4 v15, 0x3

    const-string v16, "com.monotype.android.font.cooljazz"

    aput-object v16, v4, v15

    const/4 v15, 0x4

    const-string v16, "com.monotype.android.font.rosemary"

    aput-object v16, v4, v15

    const/4 v15, 0x5

    const-string v16, "DroidSerif-Italic"

    aput-object v16, v4, v15

    .line 270
    .local v4, mAddFontStylePackageName:[Ljava/lang/String;
    const/4 v15, 0x6

    new-array v2, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "fonts/Samsungsans.ttf"

    aput-object v16, v2, v15

    const/4 v15, 0x1

    const-string v16, "Lindsey"

    aput-object v16, v2, v15

    const/4 v15, 0x2

    const-string v16, "fonts/Chococooky.ttf"

    aput-object v16, v2, v15

    const/4 v15, 0x3

    const-string v16, "fonts/Cooljazz.ttf"

    aput-object v16, v2, v15

    const/4 v15, 0x4

    const-string v16, "fonts/Rosemary.ttf"

    aput-object v16, v2, v15

    const/4 v15, 0x5

    const-string v16, "DroidSerif-Italic"

    aput-object v16, v2, v15

    .line 276
    .local v2, mAddFontFileNames:[Ljava/lang/String;
    const/4 v15, 0x6

    new-array v3, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Samsung Sans"

    aput-object v16, v3, v15

    const/4 v15, 0x1

    const-string v16, "Lindsey"

    aput-object v16, v3, v15

    const/4 v15, 0x2

    const-string v16, "Choco cooky"

    aput-object v16, v3, v15

    const/4 v15, 0x3

    const-string v16, "Cool jazz"

    aput-object v16, v3, v15

    const/4 v15, 0x4

    const-string v16, "Rosemary"

    aput-object v16, v3, v15

    const/4 v15, 0x5

    const-string v16, "DroidSerif-Italic"

    aput-object v16, v3, v15

    .line 283
    .local v3, mAddFontNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 284
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 285
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    .line 302
    .end local v2           #mAddFontFileNames:[Ljava/lang/String;
    .end local v3           #mAddFontNames:[Ljava/lang/String;
    .end local v4           #mAddFontStylePackageName:[Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 347
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 349
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 357
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 351
    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f090198

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 354
    const/4 v1, 0x1

    const v2, 0x7f0906cb

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCustomColorSubmit()V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus()Z

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/GradientColorPickerView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/GradientColorPickerView;->setFocusable(Z)V

    .line 913
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 362
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 383
    :goto_0
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 385
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 386
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 389
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ms013gctc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->hideCursorControllers()V

    .line 392
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->invalidate()V

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->finish()V

    .line 397
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 369
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveProfileTextToDB(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveTextSizeToDB(Ljava/lang/String;)V

    .line 371
    const-string v1, "my_profile_is_text_button_selected"

    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 372
    const-string v1, "lock_screen_date_and_year"

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 373
    const-string v1, "show_clock"

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveBackgroundColorValueToDB(I)V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveTextColorValueToDB(I)V

    .line 377
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_font_filename"

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 378
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_font_package"

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 379
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "my_profile_font_filename : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_font_filename"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", my_profile_font_package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_font_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 362
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x7f0b0681 -> :sswitch_0
        0x7f0b0683 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 612
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 613
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 617
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 618
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-eqz p1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v1, "savedInstanceState is not null so load saved values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v0, "is_text_selected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 623
    const-string v0, "selected_text_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    .line 624
    const-string v0, "selected_background_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    .line 627
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    .line 630
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 631
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    if-nez v0, :cond_2

    const/high16 v0, -0x100

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 632
    const v0, 0x7f0b025d

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 635
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getViewID(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    .line 637
    :cond_0
    return-void

    .line 627
    :cond_1
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    goto :goto_0

    .line 631
    :cond_2
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    goto :goto_1

    .line 632
    :cond_3
    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 641
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 642
    const-string v0, "selected_text_index"

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 643
    const-string v0, "selected_background_index"

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 644
    const-string v0, "is_text_selected"

    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 645
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 312
    new-instance v0, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isMultiSIMDevice:Z

    .line 313
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isMultiSIMDevice:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setWalllpaper()V

    .line 316
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : setWalllpaper()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 775
    iput p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    .line 776
    return-void
.end method

.method public setSelectodColor(I)V
    .locals 1
    .parameter "selectodColor"

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextColor(I)V

    .line 786
    :goto_0
    return-void

    .line 784
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 771
    iput p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    .line 772
    return-void
.end method
