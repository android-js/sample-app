.class final Landroid/support/v4/content/res/GradientColorInflaterCompat;
.super Ljava/lang/Object;
.source "GradientColorInflaterCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    }
.end annotation


# static fields
.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private static checkColors(Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    .locals 0
    .param p0, "colorItems"    # Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "startColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "endColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "hasCenterColor"    # Z
    .param p4, "centerColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 192
    if-eqz p0, :cond_0

    .line 197
    .end local p0    # "colorItems":Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    :goto_0
    return-object p0

    .line 194
    .restart local p0    # "colorItems":Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    :cond_0
    if-eqz p3, :cond_1

    .line 195
    new-instance p0, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;

    .end local p0    # "colorItems":Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    invoke-direct {p0, p1, p4, p2}, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;-><init>(III)V

    goto :goto_0

    .line 197
    .restart local p0    # "colorItems":Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    :cond_1
    new-instance p0, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;

    .end local p0    # "colorItems":Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    invoke-direct {p0, p1, p2}, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;-><init>(II)V

    goto :goto_0
.end method

.method static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 71
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 74
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 79
    :cond_1
    if-eq v1, v3, :cond_2

    .line 80
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/support/v4/content/res/GradientColorInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;

    move-result-object v2

    return-object v2
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .locals 26
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    .line 91
    .local v22, "name":Ljava/lang/String;
    const-string v5, "gradient"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 92
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ": invalid gradient color tag "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_0
    sget-object v5, Landroid/support/compat/R$styleable;->GradientColor:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 98
    .local v17, "a":Landroid/content/res/TypedArray;
    const-string v5, "startX"

    sget v9, Landroid/support/compat/R$styleable;->GradientColor_android_startX:I

    const/4 v14, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v9, v14}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    .line 100
    .local v10, "startX":F
    const-string v5, "startY"

    sget v9, Landroid/support/compat/R$styleable;->GradientColor_android_startY:I

    const/4 v14, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v9, v14}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v11

    .line 102
    .local v11, "startY":F
    const-string v5, "endX"

    sget v9, Landroid/support/compat/R$styleable;->GradientColor_android_endX:I

    const/4 v14, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v9, v14}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v12

    .line 104
    .local v12, "endX":F
    const-string v5, "endY"

    sget v9, Landroid/support/compat/R$styleable;->GradientColor_android_endY:I

    const/4 v14, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v9, v14}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    .line 106
    .local v13, "endY":F
    const-string v5, "centerX"

    sget v9, Landroid/support/compat/R$styleable;->GradientColor_android_centerX:I

    const/4 v14, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v9, v14}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v6

    .line 108
    .local v6, "centerX":F
    const-string v5, "centerY"

    sget v9, Landroid/support/compat/R$styleable;->GradientColor_android_centerY:I

    const/4 v14, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v9, v14}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    .line 110
    .local v7, "centerY":F
    const-string v5, "type"

    sget v9, Landroid/support/compat/R$styleable;->GradientColor_android_type:I

    const/4 v14, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v9, v14}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v25

    .line 112
    .local v25, "type":I
    const-string v5, "startColor"

    sget v9, Landroid/support/compat/R$styleable;->GradientColor_android_startColor:I

    const/4 v14, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v9, v14}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v23

    .line 114
    .local v23, "startColor":I
    const-string v5, "centerColor"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v21

    .line 115
    .local v21, "hasCenterColor":Z
    const-string v5, "centerColor"

    sget v9, Landroid/support/compat/R$styleable;->GradientColor_android_centerColor:I

    const/4 v14, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v9, v14}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v18

    .line 117
    .local v18, "centerColor":I
    const-string v5, "endColor"

    sget v9, Landroid/support/compat/R$styleable;->GradientColor_android_endColor:I

    const/4 v14, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v9, v14}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v20

    .line 119
    .local v20, "endColor":I
    const-string v5, "tileMode"

    sget v9, Landroid/support/compat/R$styleable;->GradientColor_android_tileMode:I

    const/4 v14, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v9, v14}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v24

    .line 121
    .local v24, "tileMode":I
    const-string v5, "gradientRadius"

    sget v9, Landroid/support/compat/R$styleable;->GradientColor_android_gradientRadius:I

    const/4 v14, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v9, v14}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    .line 123
    .local v8, "gradientRadius":F
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    invoke-static/range {p0 .. p3}, Landroid/support/v4/content/res/GradientColorInflaterCompat;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;

    move-result-object v19

    .line 126
    .local v19, "colorStops":Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/content/res/GradientColorInflaterCompat;->checkColors(Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;

    move-result-object v19

    .line 128
    packed-switch v25, :pswitch_data_0

    .line 141
    new-instance v9, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v19

    iget-object v14, v0, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    move-object/from16 v0, v19

    iget-object v15, v0, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 142
    invoke-static/range {v24 .. v24}, Landroid/support/v4/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v16

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v5, v9

    .end local v10    # "startX":F
    .end local v11    # "startY":F
    :goto_0
    return-object v5

    .line 130
    .restart local v10    # "startX":F
    .restart local v11    # "startY":F
    :pswitch_0
    const/4 v5, 0x0

    cmpg-float v5, v8, v5

    if-gtz v5, :cond_1

    .line 131
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v5, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    :cond_1
    new-instance v5, Landroid/graphics/RadialGradient;

    move-object/from16 v0, v19

    iget-object v9, v0, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    move-object/from16 v0, v19

    iget-object v10, v0, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 135
    .end local v10    # "startX":F
    invoke-static/range {v24 .. v24}, Landroid/support/v4/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v11

    .end local v11    # "startY":F
    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 137
    .restart local v10    # "startX":F
    .restart local v11    # "startY":F
    :pswitch_1
    new-instance v5, Landroid/graphics/SweepGradient;

    move-object/from16 v0, v19

    iget-object v9, v0, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    move-object/from16 v0, v19

    iget-object v14, v0, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    invoke-direct {v5, v6, v7, v9, v14}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    .locals 15
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    add-int/lit8 v8, v12, 0x1

    .line 154
    .local v8, "innerDepth":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v12, 0x14

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v10, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v4, Ljava/util/ArrayList;

    const/16 v12, 0x14

    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v4, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 158
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .local v5, "depth":I
    if-ge v5, v8, :cond_1

    const/4 v12, 0x3

    if-eq v11, v12, :cond_4

    .line 160
    :cond_1
    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 163
    if-gt v5, v8, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "item"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 167
    sget-object v12, Landroid/support/compat/R$styleable;->GradientColorItem:[I

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {p0, v0, v1, v12}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 169
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v12, Landroid/support/compat/R$styleable;->GradientColorItem_android_color:I

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    .line 170
    .local v6, "hasColor":Z
    sget v12, Landroid/support/compat/R$styleable;->GradientColorItem_android_offset:I

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    .line 171
    .local v7, "hasOffset":Z
    if-eqz v6, :cond_2

    if-nez v7, :cond_3

    .line 172
    :cond_2
    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": <item> tag requires a \'color\' attribute and a \'offset\' "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "attribute!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 178
    :cond_3
    sget v12, Landroid/support/compat/R$styleable;->GradientColorItem_android_color:I

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 179
    .local v3, "color":I
    sget v12, Landroid/support/compat/R$styleable;->GradientColorItem_android_offset:I

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 180
    .local v9, "offset":F
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "color":I
    .end local v5    # "depth":I
    .end local v6    # "hasColor":Z
    .end local v7    # "hasOffset":Z
    .end local v9    # "offset":F
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    new-instance v12, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;

    invoke-direct {v12, v4, v10}, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 186
    :goto_1
    return-object v12

    :cond_5
    const/4 v12, 0x0

    goto :goto_1
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1
    .param p0, "tileMode"    # I

    .prologue
    .line 202
    packed-switch p0, :pswitch_data_0

    .line 209
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_0
    return-object v0

    .line 204
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 206
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
