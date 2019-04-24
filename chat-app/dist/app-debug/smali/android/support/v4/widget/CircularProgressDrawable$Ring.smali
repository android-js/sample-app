.class Landroid/support/v4/widget/CircularProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field mAlpha:I

.field mArrow:Landroid/graphics/Path;

.field mArrowHeight:I

.field final mArrowPaint:Landroid/graphics/Paint;

.field mArrowScale:F

.field mArrowWidth:I

.field final mCirclePaint:Landroid/graphics/Paint;

.field mColorIndex:I

.field mColors:[I

.field mCurrentColor:I

.field mEndTrim:F

.field final mPaint:Landroid/graphics/Paint;

.field mRingCenterRadius:F

.field mRotation:F

.field mShowArrow:Z

.field mStartTrim:F

.field mStartingEndTrim:F

.field mStartingRotation:F

.field mStartingStartTrim:F

.field mStrokeWidth:F

.field final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 624
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 625
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    .line 626
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 628
    iput v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    .line 629
    iput v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    .line 630
    iput v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    .line 631
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    .line 643
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    .line 647
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    .line 651
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 652
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 653
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 655
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 656
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 658
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 659
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v11, 0x43b40000    # 360.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 692
    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 693
    .local v1, "arcBounds":Landroid/graphics/RectF;
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v4, v10

    add-float v6, v0, v4

    .line 694
    .local v6, "arcRadius":F
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    .line 696
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v10

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v10

    iget v5, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v5, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v6, v0, v4

    .line 699
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v6

    .line 700
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v6

    .line 701
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v6

    .line 702
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v6

    .line 699
    invoke-virtual {v1, v0, v4, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 704
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v4

    mul-float v2, v0, v11

    .line 705
    .local v2, "startAngle":F
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v4

    mul-float v7, v0, v11

    .line 706
    .local v7, "endAngle":F
    sub-float v3, v7, v2

    .line 708
    .local v3, "sweepAngle":F
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 709
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 712
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    div-float v8, v0, v10

    .line 713
    .local v8, "inset":F
    invoke-virtual {v1, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 714
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v10

    iget-object v9, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 716
    neg-float v0, v8

    neg-float v4, v8

    invoke-virtual {v1, v0, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 718
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 720
    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V

    .line 721
    return-void
.end method

.method drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "bounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 724
    iget-boolean v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v2, :cond_0

    .line 725
    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v2, :cond_1

    .line 726
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 727
    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 731
    :goto_0
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v0, v2, v6

    .line 732
    .local v0, "centerRadius":F
    iget v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v2, v3

    div-float v1, v2, v6

    .line 737
    .local v1, "inset":F
    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 738
    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 739
    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    iget v4, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 741
    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, v0

    sub-float/2addr v3, v1

    .line 742
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 741
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 743
    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 745
    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 746
    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 747
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 748
    add-float v2, p2, p3

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 749
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    .line 748
    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 750
    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 751
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 753
    .end local v0    # "centerRadius":F
    .end local v1    # "inset":F
    :cond_0
    return-void

    .line 729
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    goto :goto_0
.end method

.method getAlpha()I
    .locals 1

    .prologue
    .line 835
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    return v0
.end method

.method getArrowHeight()F
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v0, v0

    return v0
.end method

.method getArrowScale()F
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    return v0
.end method

.method getArrowWidth()F
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v0, v0

    return v0
.end method

.method getBackgroundColor()I
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method getCenterRadius()F
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    return v0
.end method

.method getColors()[I
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    return-object v0
.end method

.method getEndTrim()F
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    return v0
.end method

.method getNextColor()I
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getNextColorIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method getNextColorIndex()I
    .locals 2

    .prologue
    .line 809
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method getRotation()F
    .locals 1

    .prologue
    .line 883
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    return v0
.end method

.method getShowArrow()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    return v0
.end method

.method getStartTrim()F
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    return v0
.end method

.method getStartingColor()I
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method getStartingEndTrim()F
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    return v0
.end method

.method getStartingRotation()F
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    return v0
.end method

.method getStartingStartTrim()F
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    return v0
.end method

.method getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    return-object v0
.end method

.method getStrokeWidth()F
    .locals 1

    .prologue
    .line 847
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    return v0
.end method

.method goToNextColor()V
    .locals 1

    .prologue
    .line 817
    invoke-virtual {p0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->getNextColorIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 818
    return-void
.end method

.method resetOriginals()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 944
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    .line 945
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    .line 946
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    .line 947
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 948
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 949
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setRotation(F)V

    .line 950
    return-void
.end method

.method setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 828
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mAlpha:I

    .line 829
    return-void
.end method

.method setArrowDimensions(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 668
    float-to-int v0, p1

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowWidth:I

    .line 669
    float-to-int v0, p2

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowHeight:I

    .line 670
    return-void
.end method

.method setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 914
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 915
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mArrowScale:F

    .line 917
    :cond_0
    return-void
.end method

.method setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 785
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 786
    return-void
.end method

.method setCenterRadius(F)V
    .locals 0
    .param p1, "centerRadius"    # F

    .prologue
    .line 890
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRingCenterRadius:F

    .line 891
    return-void
.end method

.method setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 778
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    .line 779
    return-void
.end method

.method setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 821
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 822
    return-void
.end method

.method setColorIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 797
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    .line 798
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mCurrentColor:I

    .line 799
    return-void
.end method

.method setColors([I)V
    .locals 1
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 761
    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mColors:[I

    .line 763
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 764
    return-void
.end method

.method setEndTrim(F)V
    .locals 0
    .param p1, "endTrim"    # F

    .prologue
    .line 871
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    .line 872
    return-void
.end method

.method setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 879
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    .line 880
    return-void
.end method

.method setShowArrow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 901
    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    if-eq v0, p1, :cond_0

    .line 902
    iput-boolean p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mShowArrow:Z

    .line 904
    :cond_0
    return-void
.end method

.method setStartTrim(F)V
    .locals 0
    .param p1, "startTrim"    # F

    .prologue
    .line 851
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    .line 852
    return-void
.end method

.method setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1, "strokeCap"    # Landroid/graphics/Paint$Cap;

    .prologue
    .line 673
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 674
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 842
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStrokeWidth:F

    .line 843
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 844
    return-void
.end method

.method storeOriginals()V
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartTrim:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingStartTrim:F

    .line 936
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mEndTrim:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingEndTrim:F

    .line 937
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mRotation:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$Ring;->mStartingRotation:F

    .line 938
    return-void
.end method
