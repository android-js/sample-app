.class public Landroid/support/graphics/drawable/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final EPSILON:D = 1.0E-5

.field public static final MAX_NUM_POINTS:I = 0xbb8

.field private static final PRECISION:F = 0.002f


# instance fields
.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/support/graphics/drawable/PathInterpolatorCompat;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v1, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    invoke-static {p1, p2, p3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0, p4}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private initCubic(FFFF)V
    .locals 7
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 130
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 131
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    .line 132
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 133
    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    .line 134
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 14
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 137
    new-instance v6, Landroid/graphics/PathMeasure;

    const/4 v10, 0x0

    invoke-direct {v6, p1, v10}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 139
    .local v6, "pathMeasure":Landroid/graphics/PathMeasure;
    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    .line 140
    .local v5, "pathLength":F
    const/16 v10, 0xbb8

    const v11, 0x3b03126f    # 0.002f

    div-float v11, v5, v11

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 142
    .local v4, "numPoints":I
    if-gtz v4, :cond_0

    .line 143
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The Path has a invalid length "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 146
    :cond_0
    new-array v10, v4, [F

    iput-object v10, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    .line 147
    new-array v10, v4, [F

    iput-object v10, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    .line 149
    const/4 v10, 0x2

    new-array v7, v10, [F

    .line 150
    .local v7, "position":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 151
    int-to-float v10, v3

    mul-float/2addr v10, v5

    add-int/lit8 v11, v4, -0x1

    int-to-float v11, v11

    div-float v2, v10, v11

    .line 152
    .local v2, "distance":F
    const/4 v10, 0x0

    invoke-virtual {v6, v2, v7, v10}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 154
    iget-object v10, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    const/4 v11, 0x0

    aget v11, v7, v11

    aput v11, v10, v3

    .line 155
    iget-object v10, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    const/4 v11, 0x1

    aget v11, v7, v11

    aput v11, v10, v3

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "distance":F
    :cond_1
    iget-object v10, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_2

    iget-object v10, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_2

    iget-object v10, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    add-int/lit8 v11, v4, -0x1

    aget v10, v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_2

    iget-object v10, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    add-int/lit8 v11, v4, -0x1

    aget v10, v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    .line 159
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-lez v10, :cond_3

    .line 160
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The Path must start at (0,0) and end at (1,1) start: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " end:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    add-int/lit8 v13, v4, -0x1

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    add-int/lit8 v13, v4, -0x1

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 166
    :cond_3
    const/4 v8, 0x0

    .line 167
    .local v8, "prevX":F
    const/4 v0, 0x0

    .line 168
    .local v0, "componentIndex":I
    const/4 v3, 0x0

    move v1, v0

    .end local v0    # "componentIndex":I
    .local v1, "componentIndex":I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 169
    iget-object v10, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "componentIndex":I
    .restart local v0    # "componentIndex":I
    aget v9, v10, v1

    .line 170
    .local v9, "x":F
    cmpg-float v10, v9, v8

    if-gez v10, :cond_4

    .line 171
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The Path cannot loop back on itself, x :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 173
    :cond_4
    iget-object v10, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aput v9, v10, v3

    .line 174
    move v8, v9

    .line 168
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "componentIndex":I
    .restart local v1    # "componentIndex":I
    goto :goto_1

    .line 177
    .end local v9    # "x":F
    :cond_5
    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 178
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "The Path should be continuous, can\'t have 2+ contours"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 181
    :cond_6
    return-void
.end method

.method private initQuad(FF)V
    .locals 3
    .param p1, "controlX"    # F
    .param p2, "controlY"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 123
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 124
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 125
    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 126
    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    .line 127
    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v10, 0x0

    .line 82
    const-string v8, "pathData"

    invoke-static {p2, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 83
    const-string v8, "pathData"

    const/4 v9, 0x4

    invoke-static {p1, p2, v8, v9}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "pathData":Ljava/lang/String;
    invoke-static {v3}, Landroid/support/v4/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    .line 86
    .local v2, "path":Landroid/graphics/Path;
    if-nez v2, :cond_0

    .line 87
    new-instance v8, Landroid/view/InflateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The path is null, which is created from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 90
    :cond_0
    invoke-direct {p0, v2}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    .line 120
    .end local v2    # "path":Landroid/graphics/Path;
    .end local v3    # "pathData":Ljava/lang/String;
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v8, "controlX1"

    invoke-static {p2, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 93
    new-instance v8, Landroid/view/InflateException;

    const-string v9, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 94
    :cond_2
    const-string v8, "controlY1"

    invoke-static {p2, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 95
    new-instance v8, Landroid/view/InflateException;

    const-string v9, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 97
    :cond_3
    const-string v8, "controlX1"

    const/4 v9, 0x0

    invoke-static {p1, p2, v8, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v4

    .line 99
    .local v4, "x1":F
    const-string v8, "controlY1"

    const/4 v9, 0x1

    invoke-static {p1, p2, v8, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v6

    .line 102
    .local v6, "y1":F
    const-string v8, "controlX2"

    invoke-static {p2, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 103
    .local v0, "hasX2":Z
    const-string v8, "controlY2"

    invoke-static {p2, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    .line 105
    .local v1, "hasY2":Z
    if-eq v0, v1, :cond_4

    .line 106
    new-instance v8, Landroid/view/InflateException;

    const-string v9, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 110
    :cond_4
    if-nez v0, :cond_5

    .line 111
    invoke-direct {p0, v4, v6}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initQuad(FF)V

    goto :goto_0

    .line 113
    :cond_5
    const-string v8, "controlX2"

    const/4 v9, 0x2

    invoke-static {p1, p2, v8, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    .line 115
    .local v5, "x2":F
    const-string v8, "controlY2"

    const/4 v9, 0x3

    invoke-static {p1, p2, v8, v9, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    .line 117
    .local v7, "y2":F
    invoke-direct {p0, v4, v6, v5, v7}, Landroid/support/graphics/drawable/PathInterpolatorCompat;->initCubic(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 11
    .param p1, "t"    # F

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 195
    cmpg-float v10, p1, v8

    if-gtz v10, :cond_0

    .line 223
    :goto_0
    return v8

    .line 197
    :cond_0
    cmpl-float v10, p1, v9

    if-ltz v10, :cond_1

    move v8, v9

    .line 198
    goto :goto_0

    .line 201
    :cond_1
    const/4 v4, 0x0

    .line 202
    .local v4, "startIndex":I
    iget-object v9, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    array-length v9, v9

    add-int/lit8 v0, v9, -0x1

    .line 204
    .local v0, "endIndex":I
    :goto_1
    sub-int v9, v0, v4

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 205
    add-int v9, v4, v0

    div-int/lit8 v3, v9, 0x2

    .line 206
    .local v3, "midIndex":I
    iget-object v9, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v9, v9, v3

    cmpg-float v9, p1, v9

    if-gez v9, :cond_2

    .line 207
    move v0, v3

    goto :goto_1

    .line 209
    :cond_2
    move v4, v3

    goto :goto_1

    .line 213
    .end local v3    # "midIndex":I
    :cond_3
    iget-object v9, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v9, v9, v0

    iget-object v10, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v10, v10, v4

    sub-float v7, v9, v10

    .line 214
    .local v7, "xRange":F
    cmpl-float v8, v7, v8

    if-nez v8, :cond_4

    .line 215
    iget-object v8, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v8, v8, v4

    goto :goto_0

    .line 218
    :cond_4
    iget-object v8, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    .line 219
    .local v6, "tInRange":F
    div-float v2, v6, v7

    .line 221
    .local v2, "fraction":F
    iget-object v8, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v5, v8, v4

    .line 222
    .local v5, "startY":F
    iget-object v8, p0, Landroid/support/graphics/drawable/PathInterpolatorCompat;->mY:[F

    aget v1, v8, v0

    .line 223
    .local v1, "endY":F
    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    goto :goto_0
.end method
