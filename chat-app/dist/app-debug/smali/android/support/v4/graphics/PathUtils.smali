.class public final Landroid/support/v4/graphics/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static flatten(Landroid/graphics/Path;)Ljava/util/Collection;
    .locals 1
    .param p0, "path"    # Landroid/graphics/Path;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Landroid/support/v4/graphics/PathSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p0, v0}, Landroid/support/v4/graphics/PathUtils;->flatten(Landroid/graphics/Path;F)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static flatten(Landroid/graphics/Path;F)Ljava/util/Collection;
    .locals 15
    .param p0, "path"    # Landroid/graphics/Path;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "error"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "F)",
            "Ljava/util/Collection",
            "<",
            "Landroid/support/v4/graphics/PathSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v3

    .line 61
    .local v3, "pathData":[F
    array-length v12, v3

    div-int/lit8 v5, v12, 0x3

    .line 62
    .local v5, "pointCount":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v9, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/graphics/PathSegment;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 64
    mul-int/lit8 v2, v1, 0x3

    .line 65
    .local v2, "index":I
    add-int/lit8 v12, v1, -0x1

    mul-int/lit8 v6, v12, 0x3

    .line 67
    .local v6, "prevIndex":I
    aget v0, v3, v2

    .line 68
    .local v0, "d":F
    add-int/lit8 v12, v2, 0x1

    aget v10, v3, v12

    .line 69
    .local v10, "x":F
    add-int/lit8 v12, v2, 0x2

    aget v11, v3, v12

    .line 71
    .local v11, "y":F
    aget v4, v3, v6

    .line 72
    .local v4, "pd":F
    add-int/lit8 v12, v6, 0x1

    aget v7, v3, v12

    .line 73
    .local v7, "px":F
    add-int/lit8 v12, v6, 0x2

    aget v8, v3, v12

    .line 75
    .local v8, "py":F
    cmpl-float v12, v0, v4

    if-eqz v12, :cond_1

    cmpl-float v12, v10, v7

    if-nez v12, :cond_0

    cmpl-float v12, v11, v8

    if-eqz v12, :cond_1

    .line 76
    :cond_0
    new-instance v12, Landroid/support/v4/graphics/PathSegment;

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v12, v13, v4, v14, v0}, Landroid/support/v4/graphics/PathSegment;-><init>(Landroid/graphics/PointF;FLandroid/graphics/PointF;F)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "d":F
    .end local v2    # "index":I
    .end local v4    # "pd":F
    .end local v6    # "prevIndex":I
    .end local v7    # "px":F
    .end local v8    # "py":F
    .end local v10    # "x":F
    .end local v11    # "y":F
    :cond_2
    return-object v9
.end method
