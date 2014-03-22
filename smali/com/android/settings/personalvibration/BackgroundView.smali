.class public Lcom/android/settings/personalvibration/BackgroundView;
.super Landroid/view/View;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;,
        Lcom/android/settings/personalvibration/BackgroundView$Stage;,
        Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    }
.end annotation


# static fields
.field static isTimerRun:Z

.field static timer:Ljava/util/Timer;


# instance fields
.field private final ADJUST_ANGLE:F

.field bm01:Landroid/graphics/Bitmap;

.field bm02:Landroid/graphics/Bitmap;

.field downtime:J

.field handler:Landroid/os/Handler;

.field private mBG:Landroid/graphics/RectF;

.field private mBigOval:Landroid/graphics/RectF;

.field mHandler:Landroid/os/Handler;

.field private mPaints:[Landroid/graphics/Paint;

.field private mPauseSweep:F

.field mSizeChanged:Z

.field private mSmallOval:Landroid/graphics/RectF;

.field private mStart:F

.field private mSweep:F

.field patternString:Ljava/lang/String;

.field pressedValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/personalvibration/BackgroundView$floatValue;",
            ">;"
        }
    .end annotation
.end field

.field stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

.field startTime:J

.field uptime:J

.field vib:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 37
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    .line 41
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 42
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 43
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 37
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    .line 41
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 42
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 43
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    .line 37
    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    .line 41
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 42
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 43
    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method private drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "oval"
    .parameter "useCenter"
    .parameter "paint"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 186
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v1, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x7

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 186
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v1, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_5

    .line 203
    const/4 v6, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 204
    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v1, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x5

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 203
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 209
    :cond_4
    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    .line 210
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x5

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_3

    .line 219
    .end local v6           #i:I
    :cond_5
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_8

    .line 221
    :cond_6
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x3

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 222
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x6

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 229
    :cond_7
    :goto_4
    return-void

    .line 224
    :cond_8
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_7

    .line 226
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x4

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 227
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x6

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4
.end method


# virtual methods
.method public getPatternString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 372
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPatternString is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    return-object v0
.end method

.method public getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;
    .locals 3

    .prologue
    .line 378
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    return-object v0
.end method

.method init(Landroid/graphics/Canvas;)V
    .locals 15
    .parameter "canvas"

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 98
    .local v1, Height:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 99
    .local v4, Width:I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 100
    .local v7, metrics:Landroid/util/DisplayMetrics;
    iget v10, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v10

    .line 101
    .local v5, dpi:F
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v9, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 102
    .local v9, width:I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 103
    .local v6, height:I
    const-string v10, "PersonalVibration"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canvas height : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", width : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    int-to-double v10, v1

    const-wide/high16 v12, 0x4029

    div-double/2addr v10, v12

    double-to-float v3, v10

    .line 108
    .local v3, Thickness:F
    const/16 v10, 0x39

    const/16 v11, 0xab

    const/16 v12, 0xda

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 110
    .local v8, play_color:I
    const/high16 v10, 0x43a0

    cmpl-float v10, v5, v10

    if-nez v10, :cond_2

    const/16 v10, 0xa00

    if-ne v9, v10, :cond_0

    const/16 v10, 0x640

    if-eq v6, v10, :cond_1

    :cond_0
    const/16 v10, 0x640

    if-ne v9, v10, :cond_2

    const/16 v10, 0xa00

    if-ne v6, v10, :cond_2

    .line 111
    :cond_1
    const/high16 v0, 0x4278

    .line 112
    .local v0, BigOvalOffset:F
    const/high16 v2, 0x4220

    .line 113
    .local v2, SmallOvalOffset:F
    const/high16 v3, 0x4234

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 126
    :goto_0
    new-instance v10, Landroid/graphics/RectF;

    int-to-float v11, v4

    sub-float/2addr v11, v0

    int-to-float v12, v1

    sub-float/2addr v12, v0

    invoke-direct {v10, v0, v0, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    .line 127
    new-instance v10, Landroid/graphics/RectF;

    int-to-float v11, v4

    sub-float/2addr v11, v2

    int-to-float v12, v1

    sub-float/2addr v12, v2

    invoke-direct {v10, v2, v2, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    .line 130
    new-instance v10, Landroid/graphics/RectF;

    const/4 v11, 0x0

    const/4 v12, 0x0

    int-to-float v13, v1

    int-to-float v14, v4

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    .line 132
    const/16 v10, 0x8

    new-array v10, v10, [Landroid/graphics/Paint;

    iput-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    .line 133
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x0

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    aput-object v12, v10, v11

    .line 134
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x32

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 138
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x1

    new-instance v12, Landroid/graphics/Paint;

    iget-object v13, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v12, v10, v11

    .line 141
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/16 v11, 0x39

    const/16 v12, 0xab

    const/16 v13, 0xda

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/16 v11, 0x32

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 145
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x2

    new-instance v12, Landroid/graphics/Paint;

    iget-object v13, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v12, v10, v11

    .line 146
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0003

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x3

    new-instance v12, Landroid/graphics/Paint;

    iget-object v13, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v12, v10, v11

    .line 150
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    sget-object v11, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    const/high16 v11, 0x4040

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0004

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x4

    new-instance v12, Landroid/graphics/Paint;

    iget-object v13, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v14, 0x3

    aget-object v13, v13, v14

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v12, v10, v11

    .line 155
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    const/16 v11, 0x39

    const/16 v12, 0xab

    const/16 v13, 0xda

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x5

    new-instance v12, Landroid/graphics/Paint;

    iget-object v13, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v12, v10, v11

    .line 158
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x5

    aget-object v10, v10, v11

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x5

    aget-object v10, v10, v11

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x6

    new-instance v12, Landroid/graphics/Paint;

    iget-object v13, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v12, v10, v11

    .line 162
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x6

    aget-object v10, v10, v11

    sget-object v11, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x6

    aget-object v10, v10, v11

    const/high16 v11, 0x4040

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x6

    aget-object v10, v10, v11

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0006

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x7

    new-instance v12, Landroid/graphics/Paint;

    iget-object v13, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v12, v10, v11

    .line 167
    iget-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v11, 0x7

    aget-object v10, v10, v11

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0005

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->handler:Landroid/os/Handler;

    .line 171
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205b4

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205b9

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    .line 176
    new-instance v10, Landroid/os/SystemVibrator;

    invoke-direct {v10}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    .line 177
    sget-object v10, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v10, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 179
    return-void

    .line 115
    .end local v0           #BigOvalOffset:F
    .end local v2           #SmallOvalOffset:F
    :cond_2
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 116
    mul-int/lit8 v10, v1, 0xb

    div-int/lit16 v10, v10, 0x90

    int-to-float v0, v10

    .line 117
    .restart local v0       #BigOvalOffset:F
    div-int/lit8 v10, v1, 0x1d

    int-to-float v2, v10

    .restart local v2       #SmallOvalOffset:F
    goto/16 :goto_0

    .line 118
    .end local v0           #BigOvalOffset:F
    .end local v2           #SmallOvalOffset:F
    :cond_3
    const/high16 v10, 0x4370

    cmpl-float v10, v5, v10

    if-nez v10, :cond_8

    const/16 v10, 0x21c

    if-ne v9, v10, :cond_4

    const/16 v10, 0x3c0

    if-eq v6, v10, :cond_7

    :cond_4
    const/16 v10, 0x3c0

    if-ne v9, v10, :cond_5

    const/16 v10, 0x21c

    if-eq v6, v10, :cond_7

    :cond_5
    const/16 v10, 0x1e0

    if-ne v9, v10, :cond_6

    const/16 v10, 0x320

    if-eq v6, v10, :cond_7

    :cond_6
    const/16 v10, 0x320

    if-ne v9, v10, :cond_8

    const/16 v10, 0x1e0

    if-ne v6, v10, :cond_8

    .line 120
    :cond_7
    mul-int/lit8 v10, v1, 0xb

    div-int/lit16 v10, v10, 0x90

    int-to-float v10, v10

    const/high16 v11, 0x3f80

    sub-float v0, v10, v11

    .line 121
    .restart local v0       #BigOvalOffset:F
    div-int/lit8 v10, v1, 0x1d

    int-to-float v10, v10

    const/high16 v11, 0x3f80

    sub-float v2, v10, v11

    .restart local v2       #SmallOvalOffset:F
    goto/16 :goto_0

    .line 123
    .end local v0           #BigOvalOffset:F
    .end local v2           #SmallOvalOffset:F
    :cond_8
    mul-int/lit8 v10, v1, 0xb

    div-int/lit16 v10, v10, 0x90

    int-to-float v10, v10

    const/high16 v11, 0x4020

    sub-float v0, v10, v11

    .line 124
    .restart local v0       #BigOvalOffset:F
    div-int/lit8 v10, v1, 0x1d

    int-to-float v10, v10

    const/high16 v11, 0x4020

    sub-float v2, v10, v11

    .restart local v2       #SmallOvalOffset:F
    goto/16 :goto_0
.end method

.method public isTimerRunning()Z
    .locals 1

    .prologue
    .line 340
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const v7, 0x3fe66666

    const-wide/high16 v5, 0x4024

    const/4 v4, 0x2

    const/high16 v3, 0x43b4

    const/4 v2, 0x0

    .line 233
    iget-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/settings/personalvibration/BackgroundView;->init(Landroid/graphics/Canvas;)V

    .line 235
    iput-boolean v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_2

    .line 241
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v0, v7

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 242
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v0, v5

    double-to-float v0, v0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 243
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 244
    iput v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 246
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 249
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v0, v7

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 250
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v0, v5

    double-to-float v0, v0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 251
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 252
    iput v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    .line 386
    const-string v4, "PersonalVibration"

    const-string v5, "onTouchEvent()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v5, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v4, v5, :cond_1

    .line 389
    :cond_0
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() isTimerRunning() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", stage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v4, 0x0

    .line 441
    :goto_0
    return v4

    .line 395
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 397
    .local v0, action:I
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent(), action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    packed-switch v0, :pswitch_data_0

    .line 441
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    goto :goto_0

    .line 400
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 402
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button click started : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    const-wide/16 v5, 0x2710

    sget-object v7, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/SystemVibrator;->vibrate(JLandroid/os/SystemVibrator$MagnitudeType;)V

    .line 405
    iget-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 412
    :goto_2
    new-instance v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    invoke-direct {v2}, Lcom/android/settings/personalvibration/BackgroundView$floatValue;-><init>()V

    .line 413
    .local v2, temp:Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    iget v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    .line 414
    const/high16 v4, -0x4080

    iput v4, v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    .line 415
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 409
    .end local v2           #temp:Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    goto :goto_2

    .line 421
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 422
    .local v1, i:I
    if-ltz v1, :cond_2

    .line 424
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    .line 425
    .local v3, temp2:Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    iget v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    .line 427
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP, temp2.up : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 432
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button clicked ended, clicked time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->cancel()V

    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 437
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->cancel()V

    goto/16 :goto_1

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    .line 368
    return-void
.end method

.method public setPauseTimer()V
    .locals 3

    .prologue
    .line 311
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 313
    const-string v0, "PersonalVibration"

    const-string v1, "setPauseTimer, timer has already stopped"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->validateLastValue()Z

    .line 318
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 319
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 320
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 322
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPauseTimer, isTimerRun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 326
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_3

    .line 327
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    .line 331
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 333
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 336
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 329
    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    goto :goto_1
.end method

.method public setRunPlayTimer()V
    .locals 6

    .prologue
    .line 276
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 278
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;

    invoke-direct {v1, p0}, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;-><init>(Lcom/android/settings/personalvibration/BackgroundView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 279
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 280
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 283
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRunPlayTimer, isTimerRun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    return-void
.end method

.method public setRunRecordingTimer()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 260
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 262
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;

    invoke-direct {v1, p0}, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;-><init>(Lcom/android/settings/personalvibration/BackgroundView;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 263
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    .line 266
    iput-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 267
    iput-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 268
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 269
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 271
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 273
    :cond_0
    return-void
.end method

.method public setStopTimer()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 288
    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 290
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 291
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    .line 293
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    .line 294
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 296
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    .line 297
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 299
    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 300
    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    .line 302
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 304
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 307
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 308
    return-void
.end method

.method public validateLastValue()Z
    .locals 7

    .prologue
    const/high16 v4, 0x43b4

    .line 345
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 346
    .local v0, i:I
    if-gez v0, :cond_0

    .line 347
    const/4 v2, 0x0

    .line 363
    :goto_0
    return v2

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    .line 350
    .local v1, temp2:Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    iget v2, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 351
    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 352
    iput v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    .line 356
    :goto_1
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    .line 358
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->cancel()V

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    .line 361
    const-string v2, "PersonalVibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateLastValue(), missing last click up value is added now. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 354
    :cond_2
    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v2, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    goto :goto_1
.end method
