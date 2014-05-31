.class public Lcom/android/settings/myprofile/SpLitColorPickerView;
.super Landroid/view/View;
.source "SpLitColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;,
        Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;,
        Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;
    }
.end annotation


# static fields
.field public static final COLORS:[I


# instance fields
.field private COLOR_HEIGHT:I

.field private COLOR_PICKER_HEIGHT:I

.field private COLOR_PICKER_WIDTH:I

.field private COLOR_SHADOW_HEIGHT:I

.field private COLOR_SHADOW_WIDTH:I

.field private COLOR_WIDTH:I

.field private GAP:I

.field private final LOG_TAG:Ljava/lang/String;

.field private MARGIN:I

.field public MAX_COLOR_INDEX:I

.field private NUM_COLUMN:I

.field private NUM_ROW:I

.field private POSITION_GAP:I

.field private bClearFocus:Z

.field private context:Landroid/content/Context;

.field private isShowDrawableInLastBlock:Z

.field private mColorShadow:Landroid/graphics/drawable/Drawable;

.field private mCurrentDeviceOrientation:I

.field private mFocusedColorIndex:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

.field private mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

.field private mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

.field private mPreviousColorIndex:I

.field private mSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedColorIndex:I

.field private m_bDrawFocusImage:Z

.field private m_bKeepCustomColor:Z

.field private m_nSquitBeforeColorIndex:I

.field private rainbow:Landroid/graphics/Bitmap;

.field public useCustomColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xa5

    const/16 v8, 0x72

    const/16 v7, 0x30

    const/4 v6, 0x0

    const/16 v5, 0xff

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [I

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x1

    const/16 v2, 0xfd

    const/16 v3, 0x2d

    invoke-static {v2, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x83

    const/16 v3, 0x5d

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v5, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x49

    const/16 v3, 0xc9

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xcb

    const/16 v3, 0x85

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x38

    const/16 v3, 0xa8

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v6, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    const/16 v3, 0xcc

    const/16 v4, 0x79

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/16 v3, 0x94

    const/16 v4, 0x2e

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x4

    const/16 v3, 0x67

    const/16 v4, 0x2e

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xfd

    const/16 v3, 0x2d

    invoke-static {v2, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 58
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    .line 66
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 67
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    .line 68
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    .line 76
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 77
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 80
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    .line 82
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    .line 84
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 85
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 101
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 58
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    .line 66
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 67
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    .line 68
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    .line 76
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 77
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 80
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    .line 82
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    .line 84
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 85
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 106
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 58
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    .line 66
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 67
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    .line 68
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    .line 76
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 77
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 80
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    .line 82
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    .line 84
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 85
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 111
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    .line 112
    return-void
.end method

.method private applyColor(IZ)V
    .locals 3
    .parameter "nIndex"
    .parameter "isUpEvent"

    .prologue
    .line 256
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 257
    .local v0, previousColorIndex:I
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    .line 261
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne p1, v1, :cond_2

    .line 263
    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

    invoke-interface {v1}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;->onSelectCustomColor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 267
    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-nez v1, :cond_0

    .line 268
    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 277
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 280
    :cond_1
    return-void

    .line 273
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    if-nez v1, :cond_0

    .line 274
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    goto :goto_0
.end method

.method private changeColor(FFZ)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "isUpEvent"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 212
    .local v2, pl:I
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    div-int v3, v5, v6

    .line 213
    .local v3, pt:I
    const/4 v4, 0x0

    .line 214
    .local v4, x_idx:I
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int v0, v5, v6

    .line 216
    .local v0, cur_x:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v5, v5, 0x1

    if-ge v1, v5, :cond_0

    .line 217
    add-int/lit8 v4, v1, -0x1

    .line 218
    int-to-float v5, v0

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    .line 223
    :cond_0
    int-to-float v5, v3

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-gt v5, v6, :cond_1

    .line 224
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/2addr v4, v5

    .line 225
    :cond_1
    invoke-direct {p0, v4, p3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->applyColor(IZ)V

    .line 253
    return-void

    .line 221
    :cond_2
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawColors(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 283
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 284
    .local v15, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    move/from16 v16, v0

    .line 285
    .local v16, y:I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 286
    .local v13, rect:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 287
    .local v14, selectorRect:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 289
    .local v10, focusedRect:Landroid/graphics/Rect;
    const/4 v12, 0x0

    .local v12, j:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    if-ge v12, v1, :cond_4

    .line 290
    const/4 v15, 0x0

    .line 291
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v12

    add-int/lit8 v16, v1, 0x5

    .line 293
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    if-ge v11, v1, :cond_3

    .line 294
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    add-int v2, v2, v16

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 295
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    mul-int/2addr v1, v12

    add-int v9, v1, v11

    .line 296
    .local v9, colorIndex:I
    sget-object v1, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    mul-int/2addr v2, v12

    add-int/2addr v2, v11

    aget v8, v1, v2

    .line 298
    .local v8, color:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    add-int/lit8 v1, v1, -0x1

    if-ne v12, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    if-nez v1, :cond_0

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020447

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 300
    .local v7, bitmapTrans:Landroid/graphics/Bitmap;
    iget v1, v13, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v13, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 303
    .end local v7           #bitmapTrans:Landroid/graphics/Bitmap;
    :cond_0
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 304
    .local v6, paint:Landroid/graphics/Paint;
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 308
    iget v1, v13, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v13, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 309
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 313
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    if-ne v9, v1, :cond_1

    .line 314
    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 317
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getDrawFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    if-ne v9, v1, :cond_2

    .line 320
    invoke-virtual {v10, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 324
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    add-int/2addr v1, v2

    add-int/2addr v15, v1

    .line 293
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 289
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v8           #color:I
    .end local v9           #colorIndex:I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 328
    .end local v11           #i:I
    :cond_4
    iget v1, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    sub-int/2addr v1, v2

    iput v1, v14, Landroid/graphics/Rect;->left:I

    .line 329
    iget v1, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int/2addr v1, v2

    iput v1, v14, Landroid/graphics/Rect;->right:I

    .line 330
    iget v1, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    sub-int/2addr v1, v2

    iput v1, v14, Landroid/graphics/Rect;->top:I

    .line 331
    iget v1, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int/2addr v1, v2

    iput v1, v14, Landroid/graphics/Rect;->bottom:I

    .line 332
    iget v1, v14, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_5

    .line 333
    const/4 v1, 0x0

    iput v1, v14, Landroid/graphics/Rect;->left:I

    .line 335
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    if-eqz v1, :cond_6

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 341
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getDrawFocus()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 346
    :cond_7
    return-void
.end method

.method private initColorPicker(II)V
    .locals 13
    .parameter "width"
    .parameter "height"

    .prologue
    const v12, 0x7f020445

    const/4 v11, 0x6

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 133
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    .line 134
    iput p2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_HEIGHT:I

    .line 136
    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_PICKER_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020448

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    .line 140
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    .line 141
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    .line 143
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    .line 144
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_HEIGHT:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    .line 148
    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_SHADOW_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v7, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    invoke-direct {v3, v10, v10, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    .line 155
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    .line 157
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    .line 158
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    .line 160
    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    :cond_2
    new-array v5, v11, [I

    fill-array-data v5, :array_0

    .line 174
    .local v5, colors:[I
    new-array v6, v11, [F

    fill-array-data v6, :array_1

    .line 178
    .local v6, positions:[F
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 179
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    .line 180
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 181
    .local v8, c:Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 183
    .local v0, g:Landroid/graphics/LinearGradient;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 184
    .local v9, p:Landroid/graphics/Paint;
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 185
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 187
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    iget v7, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 190
    .end local v0           #g:Landroid/graphics/LinearGradient;
    .end local v8           #c:Landroid/graphics/Canvas;
    .end local v9           #p:Landroid/graphics/Paint;
    :cond_3
    return-void

    .line 170
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
    .end array-data

    .line 174
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x19t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private updateRowVsColumn()V
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mCurrentDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 592
    :goto_0
    return-void

    .line 583
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 584
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    goto :goto_0

    .line 588
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 589
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    goto :goto_0

    .line 581
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 445
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 375
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getColorIndex()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    return v0
.end method

.method public getDrawFocus()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 409
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 411
    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->drawColors(Landroid/graphics/Canvas;)V

    .line 412
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x42

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 465
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->playSoundEffect(I)V

    .line 467
    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    .line 469
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    if-ge v1, v2, :cond_1

    .line 471
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 473
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-interface {v1, p1, v2}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;->onRequestColorPicker(II)V

    .line 546
    :cond_0
    :goto_0
    return v0

    .line 478
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 479
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 484
    :cond_2
    const/16 v1, 0x14

    if-ne p1, v1, :cond_4

    .line 486
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    if-lt v1, v2, :cond_3

    .line 488
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 489
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus(I)Z

    goto :goto_0

    .line 493
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 494
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 499
    :cond_4
    const/16 v1, 0x15

    if-ne p1, v1, :cond_6

    .line 501
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    if-nez v1, :cond_5

    .line 503
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 504
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus(I)Z

    goto :goto_0

    .line 508
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 509
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 514
    :cond_6
    const/16 v1, 0x16

    if-ne p1, v1, :cond_8

    .line 516
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_7

    .line 518
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 519
    invoke-virtual {p0, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus(I)Z

    goto :goto_0

    .line 523
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 524
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 529
    :cond_8
    if-ne p1, v5, :cond_a

    .line 531
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColorIndex(I)V

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    .line 533
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->applyColor(IZ)V

    .line 535
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    if-eqz v1, :cond_0

    .line 537
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v1, v2, :cond_9

    .line 538
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-interface {v1, p1, v2}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;->onRequestColorPicker(II)V

    goto/16 :goto_0

    .line 540
    :cond_9
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    invoke-interface {v1}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;->onUnRequestColorPicker()V

    goto/16 :goto_0

    .line 546
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 558
    :cond_0
    const/4 v0, 0x1

    .line 560
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 396
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 397
    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    if-nez v1, :cond_0

    .line 398
    sget-object v1, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    const/16 v2, 0xf

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 401
    :cond_0
    sub-int v1, p4, p2

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    mul-int v0, v1, v2

    .line 402
    .local v0, height:I
    if-eqz p1, :cond_1

    .line 403
    sub-int v1, p4, p2

    invoke-direct {p0, v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->initColorPicker(II)V

    .line 405
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 417
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 418
    .local v3, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 435
    :cond_0
    :goto_0
    return v6

    .line 420
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0b025d

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 421
    .local v1, mView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 422
    iget-object v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 423
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 427
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #mView:Landroid/view/View;
    :pswitch_1
    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->changeColor(FFZ)V

    goto :goto_0

    .line 430
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->playSoundEffect(I)V

    .line 431
    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/myprofile/SpLitColorPickerView;->changeColor(FFZ)V

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 351
    .local v0, foundInPreset:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_0

    .line 352
    sget-object v2, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_2

    .line 353
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 354
    const/4 v0, 0x1

    .line 359
    :cond_0
    if-nez v0, :cond_3

    .line 360
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setCustomColor(I)V

    .line 371
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    .line 372
    return-void

    .line 351
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    if-nez v2, :cond_1

    .line 366
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    goto :goto_1
.end method

.method public setColorIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 123
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    .line 124
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 125
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 126
    return-void
.end method

.method public setCustomColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-eqz v0, :cond_0

    .line 201
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 204
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    if-eqz v0, :cond_1

    .line 205
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    aput p1, v0, v1

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    .line 208
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 0
    .parameter "screenOrientation"

    .prologue
    .line 572
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mCurrentDeviceOrientation:I

    .line 573
    invoke-direct {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->updateRowVsColumn()V

    .line 578
    return-void
.end method

.method public setDrawFocus(Z)V
    .locals 0
    .parameter "m_bDrawFocusImage"

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    .line 569
    return-void
.end method

.method public setKeepCustomColor(Z)V
    .locals 0
    .parameter "a_bKeep"

    .prologue
    .line 460
    iput-boolean p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    .line 461
    return-void
.end method

.method public setLastIndexColorValue(IZ)V
    .locals 2
    .parameter "backgroundColorValueFromDB"
    .parameter "value"

    .prologue
    .line 595
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    aput p1, v0, v1

    .line 596
    iput-boolean p2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    .line 598
    return-void
.end method

.method public setOnColorChangedListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    .line 384
    return-void
.end method

.method public setOnSelectCustomColorListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

    .line 388
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-nez v0, :cond_0

    .line 196
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 197
    :cond_0
    return-void
.end method
