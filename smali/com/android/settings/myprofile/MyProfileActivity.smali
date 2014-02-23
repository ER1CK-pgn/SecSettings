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

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    .line 144
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v2

    const-string v1, "com.monotype.android.font.cooljazz"

    aput-object v1, v0, v3

    const-string v1, "com.monotype.android.font.rosemary"

    aput-object v1, v0, v4

    const-string v1, "com.monotype.android.font.droidserifitalic"

    aput-object v1, v0, v5

    const-string v1, "com.monotype.android.font.samsungsans"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 145
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fonts/Chococooky.ttf"

    aput-object v1, v0, v2

    const-string v1, "fonts/Cooljazz.ttf"

    aput-object v1, v0, v3

    const-string v1, "fonts/Rosemary.ttf"

    aput-object v1, v0, v4

    const-string v1, "fonts/Droidserifitalic.ttf"

    aput-object v1, v0, v5

    const-string v1, "fonts/Samsungsans.ttf"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 146
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

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->lindseyFont:Landroid/graphics/Typeface;

    .line 657
    new-instance v0, Lcom/android/settings/myprofile/MyProfileActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/MyProfileActivity$4;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1010
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/myprofile/MyProfileActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/myprofile/MyProfileActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->reflectSelectedTextFontColor(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/myprofile/MyProfileActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/myprofile/MyProfileActivity;)Lcom/android/settings/myprofile/SpLitColorPickerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/myprofile/MyProfileActivity;)[Landroid/graphics/Typeface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/myprofile/MyProfileActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/myprofile/MyProfileActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/myprofile/MyProfileActivity;)Lcom/android/settings/myprofile/EllipsisEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/myprofile/MyProfileActivity;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/myprofile/MyProfileActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/myprofile/MyProfileActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
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

    .line 1107
    const/16 v0, 0xc

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 1119
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v3, v0, [I

    .line 1120
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v4, v0, [I

    move v0, v1

    .line 1121
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1122
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v0

    .line 1121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1124
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1125
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v0

    .line 1124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 1129
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1130
    aget v0, v3, v1

    if-ne v0, v6, :cond_2

    .line 1131
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v3, v2, v7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1144
    :goto_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    const/16 v3, 0xa

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    aget v1, v4, v1

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1146
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    aget v1, v4, v6

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1147
    return-void

    .line 1133
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v3, v3, v1

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1136
    :cond_3
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1137
    aget v0, v3, v1

    if-ne v0, v6, :cond_4

    .line 1138
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    aget v5, v2, v7

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1142
    :goto_3
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v3, v3, v6

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1140
    :cond_4
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    aget v5, v3, v1

    aget v5, v2, v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1107
    nop

    :array_0
    .array-data 0x4
        0x4bt 0x3t 0x2t 0x7ft
        0x4ct 0x3t 0x2t 0x7ft
        0x4et 0x3t 0x2t 0x7ft
        0x4ft 0x3t 0x2t 0x7ft
        0x50t 0x3t 0x2t 0x7ft
        0x51t 0x3t 0x2t 0x7ft
        0x52t 0x3t 0x2t 0x7ft
        0x53t 0x3t 0x2t 0x7ft
        0x54t 0x3t 0x2t 0x7ft
        0x55t 0x3t 0x2t 0x7ft
        0x56t 0x3t 0x2t 0x7ft
        0x4dt 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method private getBackgroundColorValueFromDB()I
    .locals 4

    .prologue
    .line 860
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

    .line 861
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_background_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 865
    :goto_0
    return v0

    .line 862
    :catch_0
    move-exception v0

    .line 863
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

    .line 864
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 865
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDeviceOrientation()I
    .locals 1

    .prologue
    .line 646
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
    .line 582
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1055
    const-string v0, "Rosemary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a73

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1102
    :goto_0
    return-object v0

    .line 1058
    :cond_0
    const-string v0, "Choco cooky"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a74

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1061
    :cond_1
    const-string v0, "Cool jazz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1062
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a72

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1064
    :cond_2
    const-string v0, "DroidSerif-Italic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1065
    const-string v0, "DroidSerif-Italic"

    goto :goto_0

    .line 1066
    :cond_3
    const-string v0, "Lindsey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1067
    const-string v0, "Lindsey"

    goto :goto_0

    .line 1069
    :cond_4
    const-string v0, "Baikzongyul pen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1070
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a77

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1073
    :cond_5
    const-string v0, "Maruberi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1074
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a78

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1076
    :cond_6
    const-string v0, "Mincho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1077
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a79

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1079
    :cond_7
    const-string v0, "Pop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1080
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a7a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1083
    :cond_8
    const-string v0, "Shao nv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1084
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0910ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1086
    :cond_9
    const-string v0, "Kaiti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1087
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0910bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1089
    :cond_a
    const-string v0, "Miao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1090
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0910bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1093
    :cond_b
    const-string v0, "Apple mint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1094
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a75

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1096
    :cond_c
    const-string v0, "Tinker bell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1097
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a76

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private getProfileTextFromDB()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f090eaf

    .line 813
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_information"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    if-nez v0, :cond_0

    .line 815
    const-string v0, ""

    .line 819
    :cond_0
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 820
    const-string v1, "Always with you\u200b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 821
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 834
    :cond_1
    :goto_0
    return-object v0

    .line 825
    :cond_2
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Personal Banner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 826
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090eb0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 827
    :cond_3
    const-string v1, "Life companion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 828
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 829
    :cond_4
    const-string v1, "Personal message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 830
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ea5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTextColorValueFromDB()I
    .locals 4

    .prologue
    .line 844
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

    .line 845
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 849
    :goto_0
    return v0

    .line 846
    :catch_0
    move-exception v0

    .line 847
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

    .line 848
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 849
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextSizeFromDB()Ljava/lang/String;
    .locals 2

    .prologue
    .line 794
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

    .line 972
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 976
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 972
    goto :goto_0

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v1, v2

    .line 976
    goto :goto_0
.end method

.method private getViewID(Z)I
    .locals 1
    .parameter "isTextButtonSelected"

    .prologue
    .line 516
    if-eqz p1, :cond_0

    .line 517
    const v0, 0x7f0b0262

    .line 519
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b0263

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 394
    const v2, 0x7f0b021d

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/EllipsisEditText;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    .line 395
    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setNewActionPopupMenu(IZ)V

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v2, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setWritingBuddyEnabled(Z)V

    .line 401
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isHKTWModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const-string v3, "inputType=DisableEmoji"

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/EllipsisEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 405
    :cond_2
    const v2, 0x7f0b0262

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    .line 406
    const v2, 0x7f0b0263

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    .line 407
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 408
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 412
    const v2, 0x7f0b0224

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/SpLitColorPickerView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    .line 413
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getDeviceOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDeviceOrientation(I)V

    .line 416
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->restoreDBColorValue()V

    .line 417
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setPreviewTextView()V

    .line 418
    const-string v2, "my_profile_is_text_button_selected"

    invoke-direct {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 419
    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getViewID(Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    .line 421
    const v2, 0x7f0b0257

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    .line 422
    const v2, 0x7f0b0258

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    .line 423
    const v2, 0x7f0b0259

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    .line 424
    const v2, 0x7f0b025a

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    .line 425
    const v2, 0x7f0b025b

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    .line 427
    const v2, 0x7f0b025c

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    .line 428
    const v2, 0x7f0b0256

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    .line 429
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    const v2, 0x7f0b025f

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    .line 431
    const v2, 0x7f0b025d

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 432
    const v2, 0x7f0b0260

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 434
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v3, "show_clock"

    invoke-direct {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 435
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v3, "lock_screen_date_and_year"

    invoke-direct {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 436
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 437
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 439
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTimeAndDateIntoTextFields()V

    .line 440
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$1;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setOnColorChangedListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;)V

    .line 452
    const v2, 0x7f0b0225

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/GradientColorPickerView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    .line 455
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$2;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/GradientColorPickerView;->setOnColorChangedListener(Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;)V

    .line 468
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextOpecity()V

    .line 470
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 472
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->loadTypeFaces()V

    .line 474
    const v2, 0x7f0b0264

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    .line 475
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 477
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "my_profile_font_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, selectedFontPackage:Ljava/lang/String;
    const/4 v0, 0x0

    .line 479
    .local v0, position:I
    if-eqz v1, :cond_3

    .line 480
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 481
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 486
    :cond_3
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_4

    const/4 v0, 0x0

    .line 487
    :cond_4
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 489
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$3;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 513
    return-void

    .line 480
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadTypeFaces()V
    .locals 4

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    .line 985
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 986
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "Lindsey"

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "Baikzongyul pen"

    if-ne v0, v2, :cond_2

    .line 987
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    const-string v0, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->lindseyFont:Landroid/graphics/Typeface;

    .line 991
    :cond_1
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->lindseyFont:Landroid/graphics/Typeface;

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 993
    :cond_2
    const/4 v0, 0x0

    .line 995
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 999
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1000
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1001
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    aput-object v0, v2, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1004
    :catch_0
    move-exception v0

    .line 1008
    :cond_3
    return-void

    .line 996
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private refereshTextAndBackGroundColor(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 742
    if-eqz p1, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 747
    :goto_0
    return-void

    .line 745
    :cond_0
    const v0, 0x7f0b021d

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
    .line 908
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v1, " --------- INSIDE REFLECT COLOR ---------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setSelectodColor(I)V

    .line 912
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->refereshTextAndBackGroundColor(Z)V

    .line 914
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

    .line 917
    return-void
.end method

.method private restoreDBColorValue()V
    .locals 2

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    .line 926
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setBackgroundColor(I)V

    .line 927
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextColor(I)V

    .line 930
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 934
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, -0x100

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 935
    const v0, 0x7f0b021d

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 936
    return-void

    .line 925
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v0

    goto :goto_0

    .line 934
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    goto :goto_1

    .line 935
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    goto :goto_2
.end method

.method private saveBackgroundColorValueToDB(I)V
    .locals 3
    .parameter

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_background_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 886
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

    .line 887
    return-void
.end method

.method private saveProfileTextToDB(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_information"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 643
    return-void
.end method

.method private saveTextColorValueToDB(I)V
    .locals 3
    .parameter

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 876
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

    .line 877
    return-void
.end method

.method private saveTextSizeToDB(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_size"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 803
    return-void
.end method

.method private setAmPm(Ljava/util/Calendar;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 1150
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 1151
    if-nez v0, :cond_1

    .line 1154
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    const v0, 0x7f0911e0

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1159
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    :goto_1
    return-void

    .line 1157
    :cond_0
    const v0, 0x7f0911e1

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1162
    :cond_1
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1163
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setPreviewTextView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 562
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 563
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0e000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 564
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v6

    .line 565
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setScaledDensity(F)V

    .line 567
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setText(Ljava/lang/CharSequence;)V

    .line 568
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextSizeFromDB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/EllipsisEditText;->getMaxTextSize()F

    move-result v0

    .line 569
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const v2, 0x7f0f00d6

    invoke-direct {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/myprofile/EllipsisEditText;->setMaxTextSize(F)V

    .line 571
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const/high16 v2, 0x40a0

    const/4 v3, 0x0

    const/high16 v4, 0x4040

    const/high16 v5, -0x6700

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/myprofile/EllipsisEditText;->setShadowLayer(FFFI)V

    .line 572
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    .line 573
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setSelection(II)V

    .line 574
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const-string v1, "inputType=option"

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/EllipsisEditText;->requestFocus()Z

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 579
    return-void

    .line 568
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

    .line 954
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 955
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 956
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 957
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 958
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 959
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 960
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 961
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 962
    return-void

    :cond_0
    move v0, v2

    .line 954
    goto :goto_0

    :cond_1
    move v0, v2

    .line 955
    goto :goto_1

    :cond_2
    move v0, v2

    .line 956
    goto :goto_2

    :cond_3
    move v0, v2

    .line 957
    goto :goto_3

    :cond_4
    move v0, v2

    .line 958
    goto :goto_4

    :cond_5
    move v0, v2

    .line 959
    goto :goto_5

    :cond_6
    move v0, v2

    .line 960
    goto :goto_6

    :cond_7
    move v1, v2

    .line 961
    goto :goto_7
.end method

.method private setTimeAndDateIntoTextFields()V
    .locals 4

    .prologue
    .line 522
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 524
    const-string v0, ""

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 527
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MM-dd-yyyy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 528
    :cond_0
    const v0, 0x7f0911df

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 533
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 537
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "kk"

    .line 538
    :goto_1
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 539
    const-string v2, "mm"

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 540
    invoke-direct {p0, v0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->convertClockTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 544
    :try_start_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 545
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 546
    const v2, 0x7f0911e0

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f0911e1

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setAmPm(Ljava/util/Calendar;)V

    .line 559
    return-void

    .line 529
    :cond_3
    const-string v3, "dd-MM-yyyy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    const v0, 0x7f0911de

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_4
    const-string v0, "h"

    goto :goto_1

    .line 550
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 553
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private setValueIntoDatabase(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 965
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 966
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

    .line 968
    return-void

    .line 965
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setWalllpaper()V
    .locals 6

    .prologue
    .line 315
    const v4, 0x7f0b0252

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 316
    .local v0, background:Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 317
    .local v1, mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/android/settings/myprofile/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    .line 318
    iget-boolean v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 319
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 321
    .local v3, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 322
    .local v2, wallpaperInfo:Landroid/app/WallpaperInfo;
    if-eqz v2, :cond_1

    .line 323
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    .end local v0           #background:Landroid/widget/ImageView;
    .end local v1           #mDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #wallpaperInfo:Landroid/app/WallpaperInfo;
    .end local v3           #wallpaperManager:Landroid/app/WallpaperManager;
    :cond_0
    :goto_0
    return-void

    .line 330
    .restart local v0       #background:Landroid/widget/ImageView;
    .restart local v1       #mDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v4, Lcom/android/settings/myprofile/MyProfileWallpaper;

    invoke-direct {v4, p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    .end local v0           #background:Landroid/widget/ImageView;
    .end local v1           #mDrawable:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private showOnScreenKeyPad()V
    .locals 3

    .prologue
    .line 586
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 587
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 588
    return-void
.end method

.method private updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0203a5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0b0263

    const v3, 0x7f0b0262

    .line 677
    if-nez p1, :cond_0

    .line 738
    :goto_0
    return-void

    .line 680
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 682
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 684
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0203a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 685
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0203a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 688
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 689
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0203a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 698
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 711
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 731
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->showOnScreenKeyPad()V

    goto :goto_0

    .line 700
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0203a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 701
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0203a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 704
    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0203aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 705
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 713
    :pswitch_6
    iput-boolean v6, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 715
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setLastIndexColorValue(IZ)V

    .line 716
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 717
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    goto :goto_2

    .line 721
    :pswitch_7
    iput-boolean v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 723
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0, v5, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setLastIndexColorValue(IZ)V

    .line 724
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 725
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    goto :goto_2

    .line 680
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 682
    :pswitch_data_1
    .packed-switch 0x7f0b0262
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 698
    :pswitch_data_2
    .packed-switch 0x7f0b0262
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 711
    :pswitch_data_3
    .packed-switch 0x7f0b0262
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getSelectodBackGroundColor()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    return v0
.end method

.method public getSelectodTextColor()I
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    return v0
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextOpecity()V

    .line 941
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 951
    :pswitch_0
    return-void

    .line 941
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b025d
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
    .line 184
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v16, "onCreate()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
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

    .line 187
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/myprofile/MyProfileActivity;->setRequestedOrientation(I)V

    .line 188
    :cond_0
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 191
    .local v1, intent:Landroid/content/Intent;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    .line 192
    const-string v15, "direct_lockscren"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    .line 195
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v15, :cond_1

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/high16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    .line 197
    new-instance v15, Landroid/content/Intent;

    const-string v16, "intent.stop.app-in-app"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/myprofile/MyProfileActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    .line 202
    .local v14, sales_code:Ljava/lang/String;
    const-string v15, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 203
    :cond_2
    const/4 v15, 0x2

    new-array v10, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "com.monotype.android.font.maruberi"

    aput-object v16, v10, v15

    const/4 v15, 0x1

    const-string v16, "com.monotype.android.font.mincho"

    aput-object v16, v10, v15

    .line 204
    .local v10, mJFontStylePackageName:[Ljava/lang/String;
    const/4 v15, 0x2

    new-array v8, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "fonts/Maruberi.ttf"

    aput-object v16, v8, v15

    const/4 v15, 0x1

    const-string v16, "fonts/Mincho.ttf"

    aput-object v16, v8, v15

    .line 205
    .local v8, mJFontFileNames:[Ljava/lang/String;
    const/4 v15, 0x2

    new-array v9, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Maruberi"

    aput-object v16, v9, v15

    const/4 v15, 0x1

    const-string v16, "Mincho"

    aput-object v16, v9, v15

    .line 207
    .local v9, mJFontNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 208
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 209
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    .line 287
    .end local v8           #mJFontFileNames:[Ljava/lang/String;
    .end local v9           #mJFontNames:[Ljava/lang/String;
    .end local v10           #mJFontStylePackageName:[Ljava/lang/String;
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/myprofile/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    .line 288
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 289
    const v15, 0x103013c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/myprofile/MyProfileActivity;->setTheme(I)V

    .line 292
    :cond_3
    const v15, 0x7f0400e3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/myprofile/MyProfileActivity;->setContentView(I)V

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setWalllpaper()V

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->init()V

    .line 299
    return-void

    .line 210
    :cond_4
    const-string v15, "CHN"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "CHM"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "CHU"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "CHC"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 211
    :cond_5
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

    .line 212
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

    .line 213
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

    .line 215
    .local v6, mCFontNames:[Ljava/lang/String;
    const-string v15, "ro.product.name"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "cs023g"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 216
    const/4 v15, 0x1

    new-array v7, v15, [Ljava/lang/String;

    .line 217
    const/4 v15, 0x0

    const-string v16, "com.monotype.android.font.kaiti"

    aput-object v16, v7, v15

    .line 218
    const/4 v15, 0x1

    new-array v5, v15, [Ljava/lang/String;

    .line 219
    const/4 v15, 0x0

    const-string v16, "fonts/Kaiti.ttf"

    aput-object v16, v5, v15

    .line 220
    const/4 v15, 0x1

    new-array v6, v15, [Ljava/lang/String;

    .line 221
    const/4 v15, 0x0

    const-string v16, "Kaiti"

    aput-object v16, v6, v15

    .line 224
    :cond_6
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 225
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 226
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    .line 227
    .end local v5           #mCFontFileNames:[Ljava/lang/String;
    .end local v6           #mCFontNames:[Ljava/lang/String;
    .end local v7           #mCFontStylePackageName:[Ljava/lang/String;
    :cond_7
    const-string v15, "CTC"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "TGY"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "BRI"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 228
    :cond_8
    const/4 v15, 0x2

    new-array v7, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "com.monotype.android.font.shaonv"

    aput-object v16, v7, v15

    const/4 v15, 0x1

    const-string v16, "com.monotype.android.font.kaiti"

    aput-object v16, v7, v15

    .line 229
    .restart local v7       #mCFontStylePackageName:[Ljava/lang/String;
    const/4 v15, 0x2

    new-array v5, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "fonts/Shaonv.ttf"

    aput-object v16, v5, v15

    const/4 v15, 0x1

    const-string v16, "fonts/Kaiti.ttf"

    aput-object v16, v5, v15

    .line 230
    .restart local v5       #mCFontFileNames:[Ljava/lang/String;
    const/4 v15, 0x2

    new-array v6, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Shao nv"

    aput-object v16, v6, v15

    const/4 v15, 0x1

    const-string v16, "Kaiti"

    aput-object v16, v6, v15

    .line 232
    .restart local v6       #mCFontNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 233
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 234
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    .line 235
    .end local v5           #mCFontFileNames:[Ljava/lang/String;
    .end local v6           #mCFontNames:[Ljava/lang/String;
    .end local v7           #mCFontStylePackageName:[Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 237
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

    .line 241
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

    .line 245
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

    .line 250
    .local v12, mKFontNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 251
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 252
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    .line 263
    .end local v11           #mKFontFileNames:[Ljava/lang/String;
    .end local v12           #mKFontNames:[Ljava/lang/String;
    .end local v13           #mKFontStylePackageName:[Ljava/lang/String;
    :cond_a
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

    const-string v16, "com.monotype.android.font.droidserifitalic"

    aput-object v16, v4, v15

    .line 269
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

    const-string v16, "fonts/Droidserifitalic.ttf"

    aput-object v16, v2, v15

    .line 275
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

    .line 282
    .local v3, mAddFontNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 283
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 284
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 340
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 342
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 352
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 344
    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f090173

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200d8

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 348
    const/4 v1, 0x1

    const v2, 0x7f09065f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200dc

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCustomColorSubmit()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus()Z

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/GradientColorPickerView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 900
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/GradientColorPickerView;->setFocusable(Z)V

    .line 901
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 357
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 378
    :goto_0
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 380
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 381
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 383
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->finish()V

    .line 384
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 364
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveProfileTextToDB(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveTextSizeToDB(Ljava/lang/String;)V

    .line 366
    const-string v1, "my_profile_is_text_button_selected"

    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 367
    const-string v1, "lock_screen_date_and_year"

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 368
    const-string v1, "show_clock"

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveBackgroundColorValueToDB(I)V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveTextColorValueToDB(I)V

    .line 372
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_font_filename"

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 373
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_font_package"

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 374
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

    .line 357
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x7f0b05f6 -> :sswitch_0
        0x7f0b05f8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 602
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 603
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 607
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 608
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    if-eqz p1, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v1, "savedInstanceState is not null so load saved values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v0, "is_text_selected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 613
    const-string v0, "selected_text_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    .line 614
    const-string v0, "selected_background_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    .line 617
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    .line 620
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 621
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    if-nez v0, :cond_2

    const/high16 v0, -0x100

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 622
    const v0, 0x7f0b021d

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 625
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getViewID(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    .line 627
    :cond_0
    return-void

    .line 617
    :cond_1
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    goto :goto_0

    .line 621
    :cond_2
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    goto :goto_1

    .line 622
    :cond_3
    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 631
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 632
    const-string v0, "selected_text_index"

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 633
    const-string v0, "selected_background_index"

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 634
    const-string v0, "is_text_selected"

    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 635
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 305
    new-instance v0, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isMultiSIMDevice:Z

    .line 306
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isMultiSIMDevice:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setWalllpaper()V

    .line 309
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

    .line 311
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 765
    iput p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    .line 766
    return-void
.end method

.method public setSelectodColor(I)V
    .locals 1
    .parameter "selectodColor"

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextColor(I)V

    .line 776
    :goto_0
    return-void

    .line 774
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 761
    iput p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    .line 762
    return-void
.end method