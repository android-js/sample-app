.class public Landroid/support/constraint/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_BARRIER:I = 0x2

.field public static final OPTIMIZATION_CHAIN:I = 0x4

.field public static final OPTIMIZATION_DIMENSIONS:I = 0x8

.field public static final OPTIMIZATION_DIRECT:I = 0x1

.field public static final OPTIMIZATION_GROUPS:I = 0x20

.field public static final OPTIMIZATION_NONE:I = 0x0

.field public static final OPTIMIZATION_RATIO:I = 0x10

.field public static final OPTIMIZATION_STANDARD:I = 0x7

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 12
    .param p0, "optimisationLevel"    # I
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    .line 154
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    .line 155
    .local v4, "leftNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    .line 156
    .local v7, "topNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    .line 157
    .local v6, "rightNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 159
    .local v0, "bottomNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    and-int/lit8 v9, p0, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4

    const/4 v5, 0x1

    .line 163
    .local v5, "optimiseDimensions":Z
    :goto_0
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_5

    const/4 v9, 0x0

    .line 164
    invoke-static {p1, v9}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x1

    .line 166
    .local v2, "isOptimizableHorizontalMatch":Z
    :goto_1
    iget v9, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1

    iget v9, v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1

    .line 168
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v10, :cond_0

    if-eqz v2, :cond_d

    .line 169
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_d

    .line 170
    :cond_0
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_7

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_7

    .line 171
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 172
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 173
    if-eqz v5, :cond_6

    .line 174
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v6, v4, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 259
    :cond_1
    :goto_2
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_16

    const/4 v9, 0x1

    .line 260
    invoke-static {p1, v9}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v3, 0x1

    .line 262
    .local v3, "isOptimizableVerticalMatch":Z
    :goto_3
    iget v9, v7, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3

    iget v9, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3

    .line 265
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v10, :cond_2

    if-eqz v3, :cond_1e

    .line 266
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1e

    .line 267
    :cond_2
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_18

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_18

    .line 268
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 269
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 270
    if-eqz v5, :cond_17

    .line 271
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v0, v7, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 275
    :goto_4
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_3

    .line 276
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 277
    const/4 v9, 0x1

    iget-object v10, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 278
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v11, v11

    .line 277
    invoke-virtual {v7, v9, v10, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 367
    :cond_3
    :goto_5
    return-void

    .line 159
    .end local v2    # "isOptimizableHorizontalMatch":Z
    .end local v3    # "isOptimizableVerticalMatch":Z
    .end local v5    # "optimiseDimensions":Z
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 164
    .restart local v5    # "optimiseDimensions":Z
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 176
    .restart local v2    # "isOptimizableHorizontalMatch":Z
    :cond_6
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    invoke-virtual {v6, v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_2

    .line 178
    :cond_7
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_9

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_9

    .line 179
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 180
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 181
    if-eqz v5, :cond_8

    .line 182
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v6, v4, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 184
    :cond_8
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    invoke-virtual {v6, v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 186
    :cond_9
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_b

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_b

    .line 187
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 188
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 189
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v4, v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 190
    if-eqz v5, :cond_a

    .line 191
    const/4 v9, -0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v6, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 193
    :cond_a
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v4, v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 195
    :cond_b
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1

    .line 196
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 197
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 198
    if-eqz v5, :cond_c

    .line 199
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 200
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 201
    const/4 v9, -0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v6, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 202
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v6, v4, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 204
    :cond_c
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v4, v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 205
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_2

    .line 208
    :cond_d
    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    .line 215
    .local v8, "width":I
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 216
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 217
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_f

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_f

    .line 218
    if-eqz v5, :cond_e

    .line 219
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v6, v4, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 221
    :cond_e
    invoke-virtual {v6, v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 223
    :cond_f
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_11

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_11

    .line 224
    if-eqz v5, :cond_10

    .line 225
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v6, v4, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 227
    :cond_10
    invoke-virtual {v6, v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 229
    :cond_11
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_13

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_13

    .line 230
    if-eqz v5, :cond_12

    .line 231
    const/4 v9, -0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v6, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 233
    :cond_12
    neg-int v9, v8

    invoke-virtual {v4, v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 235
    :cond_13
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1

    .line 236
    if-eqz v5, :cond_14

    .line 237
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 238
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 240
    :cond_14
    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_15

    .line 241
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 242
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 243
    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 244
    const/4 v9, 0x0

    invoke-virtual {v6, v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_2

    .line 247
    :cond_15
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 248
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 249
    neg-int v9, v8

    int-to-float v9, v9

    invoke-virtual {v4, v6, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 250
    int-to-float v9, v8

    invoke-virtual {v6, v4, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 251
    invoke-virtual {p1, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_2

    .line 260
    .end local v8    # "width":I
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 273
    .restart local v3    # "isOptimizableVerticalMatch":Z
    :cond_17
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    invoke-virtual {v0, v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_4

    .line 280
    :cond_18
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1a

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_1a

    .line 281
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 282
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 283
    if-eqz v5, :cond_19

    .line 284
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v0, v7, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 288
    :goto_6
    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v9, :cond_3

    .line 289
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    const/4 v10, 0x1

    iget v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v9, v10, v7, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 286
    :cond_19
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    invoke-virtual {v0, v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_6

    .line 291
    :cond_1a
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_1c

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1c

    .line 292
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 293
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 294
    if-eqz v5, :cond_1b

    .line 295
    const/4 v9, -0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v7, v0, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 299
    :goto_7
    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v9, :cond_3

    .line 300
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    const/4 v10, 0x1

    iget v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v9, v10, v7, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 297
    :cond_1b
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v7, v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_7

    .line 302
    :cond_1c
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_3

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_3

    .line 303
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 304
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 305
    if-eqz v5, :cond_1d

    .line 306
    const/4 v9, -0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v7, v0, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 307
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v0, v7, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 308
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 309
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 314
    :goto_8
    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v9, :cond_3

    .line 315
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    const/4 v10, 0x1

    iget v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v9, v10, v7, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 311
    :cond_1d
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 312
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0, v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto :goto_8

    .line 318
    :cond_1e
    if-eqz v3, :cond_3

    .line 319
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    .line 324
    .local v1, "height":I
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 325
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 326
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_20

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_20

    .line 327
    if-eqz v5, :cond_1f

    .line 328
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v0, v7, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_5

    .line 330
    :cond_1f
    invoke-virtual {v0, v7, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 332
    :cond_20
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_22

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_22

    .line 333
    if-eqz v5, :cond_21

    .line 334
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v0, v7, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_5

    .line 336
    :cond_21
    invoke-virtual {v0, v7, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 338
    :cond_22
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_24

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_24

    .line 339
    if-eqz v5, :cond_23

    .line 340
    const/4 v9, -0x1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v7, v0, v9, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_5

    .line 342
    :cond_23
    neg-int v9, v1

    invoke-virtual {v7, v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 344
    :cond_24
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_3

    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_3

    .line 345
    if-eqz v5, :cond_25

    .line 346
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 347
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 349
    :cond_25
    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_26

    .line 350
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 351
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 352
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 353
    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_5

    .line 355
    :cond_26
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 356
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 357
    neg-int v9, v1

    int-to-float v9, v9

    invoke-virtual {v7, v0, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 358
    int-to-float v9, v1

    invoke-virtual {v0, v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 359
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 360
    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v9, :cond_3

    .line 361
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    const/4 v10, 0x1

    iget v11, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v9, v10, v7, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5
.end method

.method static applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)Z
    .locals 40
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroid/support/constraint/solver/widgets/ChainHead;

    .prologue
    .line 383
    move-object/from16 v0, p4

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 384
    .local v9, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v20, v0

    .line 385
    .local v20, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v13, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 386
    .local v13, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    .line 387
    .local v23, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v15, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 389
    .local v15, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v33, v9

    .line 390
    .local v33, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/16 v24, 0x0

    .line 391
    .local v24, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v7, 0x0

    .line 393
    .local v7, "done":Z
    const/16 v26, 0x0

    .line 394
    .local v26, "numMatchConstraints":I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    move/from16 v32, v0

    .line 395
    .local v32, "totalWeights":F
    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 396
    .local v10, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    .line 398
    .local v29, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v34, v0

    aget-object v34, v34, p2

    sget-object v35, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_3

    const/16 v19, 0x1

    .line 399
    .local v19, "isWrapContent":Z
    :goto_0
    const/16 v17, 0x0

    .line 400
    .local v17, "isChainSpread":Z
    const/16 v18, 0x0

    .line 401
    .local v18, "isChainSpreadInside":Z
    const/16 v16, 0x0

    .line 403
    .local v16, "isChainPacked":Z
    if-nez p2, :cond_7

    .line 404
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v34, v0

    if-nez v34, :cond_4

    const/16 v17, 0x1

    .line 405
    :goto_1
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    .line 406
    :goto_2
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v34, v0

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_6

    const/16 v16, 0x1

    .line 417
    :goto_3
    const/16 v31, 0x0

    .line 418
    .local v31, "totalSize":F
    const/16 v30, 0x0

    .line 419
    .local v30, "totalMargins":F
    const/16 v27, 0x0

    .line 421
    .local v27, "numVisibleWidgets":I
    :goto_4
    if-nez v7, :cond_17

    .line 423
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v34

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_2

    .line 424
    add-int/lit8 v27, v27, 0x1

    .line 425
    if-nez p2, :cond_b

    .line 426
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v31, v31, v34

    .line 430
    :goto_5
    move-object/from16 v0, v33

    if-eq v0, v13, :cond_0

    .line 431
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v31, v31, v34

    .line 433
    :cond_0
    move-object/from16 v0, v33

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 434
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v31, v31, v34

    .line 436
    :cond_1
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v30, v30, v34

    .line 437
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v30, v30, v34

    .line 440
    :cond_2
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v4, v34, p3

    .line 442
    .local v4, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v34

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_12

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v34, v0

    aget-object v34, v34, p2

    sget-object v35, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_12

    .line 444
    add-int/lit8 v26, v26, 0x1

    .line 446
    if-nez p2, :cond_e

    .line 447
    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move/from16 v34, v0

    if-eqz v34, :cond_c

    .line 448
    const/16 v34, 0x0

    .line 659
    .end local v4    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_6
    return v34

    .line 398
    .end local v16    # "isChainPacked":Z
    .end local v17    # "isChainSpread":Z
    .end local v18    # "isChainSpreadInside":Z
    .end local v19    # "isWrapContent":Z
    .end local v27    # "numVisibleWidgets":I
    .end local v30    # "totalMargins":F
    .end local v31    # "totalSize":F
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 404
    .restart local v16    # "isChainPacked":Z
    .restart local v17    # "isChainSpread":Z
    .restart local v18    # "isChainSpreadInside":Z
    .restart local v19    # "isWrapContent":Z
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 405
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 406
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 408
    :cond_7
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v34, v0

    if-nez v34, :cond_8

    const/16 v17, 0x1

    .line 409
    :goto_7
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_9

    const/16 v18, 0x1

    .line 410
    :goto_8
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v34, v0

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    const/16 v16, 0x1

    :goto_9
    goto/16 :goto_3

    .line 408
    :cond_8
    const/16 v17, 0x0

    goto :goto_7

    .line 409
    :cond_9
    const/16 v18, 0x0

    goto :goto_8

    .line 410
    :cond_a
    const/16 v16, 0x0

    goto :goto_9

    .line 428
    .restart local v27    # "numVisibleWidgets":I
    .restart local v30    # "totalMargins":F
    .restart local v31    # "totalSize":F
    :cond_b
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v31, v31, v34

    goto/16 :goto_5

    .line 449
    .restart local v4    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_c
    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v34, v0

    if-nez v34, :cond_d

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v34, v0

    if-eqz v34, :cond_11

    .line 450
    :cond_d
    const/16 v34, 0x0

    goto :goto_6

    .line 453
    :cond_e
    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v34, v0

    if-eqz v34, :cond_f

    .line 454
    const/16 v34, 0x0

    goto :goto_6

    .line 455
    :cond_f
    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v34, v0

    if-nez v34, :cond_10

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v34, v0

    if-eqz v34, :cond_11

    .line 456
    :cond_10
    const/16 v34, 0x0

    goto :goto_6

    .line 459
    :cond_11
    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v34, v0

    const/16 v35, 0x0

    cmpl-float v34, v34, v35

    if-eqz v34, :cond_12

    .line 460
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 465
    :cond_12
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v25, v0

    .line 466
    .local v25, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v25, :cond_15

    .line 467
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v24, v0

    .line 468
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    if-eqz v34, :cond_13

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_14

    .line 469
    :cond_13
    const/16 v24, 0x0

    .line 474
    :cond_14
    :goto_a
    if-eqz v24, :cond_16

    .line 475
    move-object/from16 v33, v24

    goto/16 :goto_4

    .line 472
    :cond_15
    const/16 v24, 0x0

    goto :goto_a

    .line 477
    :cond_16
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 481
    .end local v4    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v25    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_17
    iget-object v0, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v11

    .line 482
    .local v11, "firstNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v21

    .line 484
    .local v21, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    if-eqz v34, :cond_18

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    if-nez v34, :cond_19

    .line 486
    :cond_18
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 490
    :cond_19
    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1b

    .line 493
    :cond_1a
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 496
    :cond_1b
    if-lez v26, :cond_1c

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c

    .line 498
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 501
    :cond_1c
    const/4 v8, 0x0

    .line 502
    .local v8, "extraMargin":F
    if-nez v16, :cond_1d

    if-nez v17, :cond_1d

    if-eqz v18, :cond_1f

    .line 503
    :cond_1d
    if-eqz v13, :cond_1e

    .line 504
    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v8, v0

    .line 506
    :cond_1e
    if-eqz v23, :cond_1f

    .line 507
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v8, v8, v34

    .line 511
    :cond_1f
    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v12, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 512
    .local v12, "firstOffset":F
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move/from16 v22, v0

    .line 513
    .local v22, "lastOffset":F
    const/4 v6, 0x0

    .line 514
    .local v6, "distance":F
    cmpg-float v34, v12, v22

    if-gez v34, :cond_20

    .line 515
    sub-float v34, v22, v12

    sub-float v6, v34, v31

    .line 520
    :goto_b
    if-lez v26, :cond_29

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_29

    .line 521
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v34

    if-eqz v34, :cond_21

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v34, v0

    aget-object v34, v34, p2

    sget-object v35, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_21

    .line 522
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 517
    :cond_20
    sub-float v34, v12, v22

    sub-float v6, v34, v31

    goto :goto_b

    .line 524
    :cond_21
    add-float v6, v6, v31

    .line 525
    sub-float v6, v6, v30

    .line 526
    move-object/from16 v33, v9

    .line 527
    move/from16 v28, v12

    .line 528
    .local v28, "position":F
    :goto_c
    if-eqz v33, :cond_28

    .line 529
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v34, :cond_22

    .line 530
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    sub-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 531
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 532
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 534
    :cond_22
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v34, v0

    aget-object v24, v34, p2

    .line 535
    if-nez v24, :cond_23

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_26

    .line 536
    :cond_23
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v5, v6, v34

    .line 537
    .local v5, "dimension":F
    const/16 v34, 0x0

    cmpl-float v34, v32, v34

    if-lez v34, :cond_24

    .line 538
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    move-object/from16 v34, v0

    aget v34, v34, p2

    const/high16 v35, -0x40800000    # -1.0f

    cmpl-float v34, v34, v35

    if-nez v34, :cond_27

    .line 539
    const/4 v5, 0x0

    .line 544
    :cond_24
    :goto_d
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v34

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_25

    .line 545
    const/4 v5, 0x0

    .line 547
    :cond_25
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v28, v28, v34

    .line 548
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 550
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    add-float v36, v28, v5

    invoke-virtual/range {v34 .. v36}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 552
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 553
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 554
    add-float v28, v28, v5

    .line 555
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v28, v28, v34

    .line 557
    .end local v5    # "dimension":F
    :cond_26
    move-object/from16 v33, v24

    goto/16 :goto_c

    .line 541
    .restart local v5    # "dimension":F
    :cond_27
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    move-object/from16 v34, v0

    aget v34, v34, p2

    mul-float v34, v34, v6

    div-float v5, v34, v32

    goto/16 :goto_d

    .line 559
    .end local v5    # "dimension":F
    :cond_28
    const/16 v34, 0x1

    goto/16 :goto_6

    .line 563
    .end local v28    # "position":F
    :cond_29
    const/16 v34, 0x0

    cmpg-float v34, v6, v34

    if-gez v34, :cond_2a

    .line 564
    const/16 v17, 0x0

    .line 565
    const/16 v18, 0x0

    .line 566
    const/16 v16, 0x1

    .line 569
    :cond_2a
    if-eqz v16, :cond_2f

    .line 570
    sub-float/2addr v6, v8

    .line 572
    move-object/from16 v33, v9

    .line 573
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBiasPercent(I)F

    move-result v34

    mul-float v34, v34, v6

    add-float v6, v12, v34

    .line 574
    :goto_e
    if-eqz v33, :cond_3d

    .line 575
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v34, :cond_2b

    .line 576
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    sub-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 577
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 578
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 580
    :cond_2b
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v34, v0

    aget-object v24, v34, p2

    .line 581
    if-nez v24, :cond_2c

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2d

    .line 582
    :cond_2c
    const/4 v5, 0x0

    .line 583
    .restart local v5    # "dimension":F
    if-nez p2, :cond_2e

    .line 584
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v5, v0

    .line 588
    :goto_f
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v6, v6, v34

    .line 589
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 591
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    add-float v36, v6, v5

    invoke-virtual/range {v34 .. v36}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 593
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 594
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 595
    add-float/2addr v6, v5

    .line 596
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v6, v6, v34

    .line 598
    .end local v5    # "dimension":F
    :cond_2d
    move-object/from16 v33, v24

    goto/16 :goto_e

    .line 586
    .restart local v5    # "dimension":F
    :cond_2e
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v5, v0

    goto/16 :goto_f

    .line 600
    .end local v5    # "dimension":F
    :cond_2f
    if-nez v17, :cond_30

    if-eqz v18, :cond_3d

    .line 601
    :cond_30
    if-eqz v17, :cond_3a

    .line 602
    sub-float/2addr v6, v8

    .line 606
    :cond_31
    :goto_10
    move-object/from16 v33, v9

    .line 607
    add-int/lit8 v34, v27, 0x1

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v14, v6, v34

    .line 608
    .local v14, "gap":F
    if-eqz v18, :cond_32

    .line 609
    const/16 v34, 0x1

    move/from16 v0, v27

    move/from16 v1, v34

    if-le v0, v1, :cond_3b

    .line 610
    add-int/lit8 v34, v27, -0x1

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v14, v6, v34

    .line 615
    :cond_32
    :goto_11
    move v6, v12

    .line 616
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v34

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_33

    .line 617
    add-float/2addr v6, v14

    .line 619
    :cond_33
    if-eqz v18, :cond_34

    const/16 v34, 0x1

    move/from16 v0, v27

    move/from16 v1, v34

    if-le v0, v1, :cond_34

    .line 620
    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v6, v12, v34

    .line 622
    :cond_34
    if-eqz v17, :cond_35

    .line 623
    if-eqz v13, :cond_35

    .line 624
    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v6, v6, v34

    .line 627
    :cond_35
    :goto_12
    if-eqz v33, :cond_3d

    .line 628
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v34, :cond_36

    .line 629
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    sub-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 630
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 631
    sget-object v34, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 633
    :cond_36
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v34, v0

    aget-object v24, v34, p2

    .line 634
    if-nez v24, :cond_37

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_39

    .line 635
    :cond_37
    const/4 v5, 0x0

    .line 636
    .restart local v5    # "dimension":F
    if-nez p2, :cond_3c

    .line 637
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v5, v0

    .line 641
    :goto_13
    move-object/from16 v0, v33

    if-eq v0, v13, :cond_38

    .line 642
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v6, v6, v34

    .line 644
    :cond_38
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 646
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    add-float v36, v6, v5

    invoke-virtual/range {v34 .. v36}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 648
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    aget-object v34, v34, p3

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 649
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 650
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v34, v0

    add-int/lit8 v35, p3, 0x1

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v34, v34, v5

    add-float v6, v6, v34

    .line 651
    if-eqz v24, :cond_39

    invoke-virtual/range {v24 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v34

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_39

    .line 652
    add-float/2addr v6, v14

    .line 655
    .end local v5    # "dimension":F
    :cond_39
    move-object/from16 v33, v24

    goto/16 :goto_12

    .line 603
    .end local v14    # "gap":F
    :cond_3a
    if-eqz v18, :cond_31

    .line 604
    sub-float/2addr v6, v8

    goto/16 :goto_10

    .line 612
    .restart local v14    # "gap":F
    :cond_3b
    const/high16 v34, 0x40000000    # 2.0f

    div-float v14, v6, v34

    goto/16 :goto_11

    .line 639
    .restart local v5    # "dimension":F
    :cond_3c
    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v5, v0

    goto/16 :goto_13

    .line 659
    .end local v5    # "dimension":F
    .end local v14    # "gap":F
    :cond_3d
    const/16 v34, 0x1

    goto/16 :goto_6
.end method

.method static checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 9
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v6

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_0

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v6

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_0

    .line 60
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 61
    .local v1, "left":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int v2, v4, v5

    .line 68
    .local v2, "right":I
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 69
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 70
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v4, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 71
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v4, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 72
    iput v8, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 74
    invoke-virtual {p2, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 76
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_0
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v7

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_3

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v7

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_3

    .line 79
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 80
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int v0, v4, v5

    .line 87
    .local v0, "bottom":I
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 88
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 89
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v4, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 90
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v4, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 91
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v4, :cond_1

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 92
    :cond_1
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 93
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 95
    :cond_2
    iput v8, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 97
    invoke-virtual {p2, v3, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 99
    .end local v0    # "bottom":I
    .end local v3    # "top":I
    :cond_3
    return-void
.end method

.method private static optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z
    .locals 4
    .param p0, "constraintWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p1

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_2

    :goto_1
    aget-object v0, v2, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 122
    :cond_3
    if-nez p1, :cond_5

    .line 123
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v2, :cond_0

    .line 126
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-nez v2, :cond_0

    :cond_4
    move v1, v0

    .line 137
    goto :goto_0

    .line 130
    :cond_5
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v2, :cond_0

    .line 133
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v2, :cond_4

    goto :goto_0
.end method

.method static setOptimizedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V
    .locals 5
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I
    .param p2, "resolvedOffset"    # I

    .prologue
    const/4 v4, 0x1

    .line 671
    mul-int/lit8 v1, p1, 0x2

    .line 672
    .local v1, "startOffset":I
    add-int/lit8 v0, v1, 0x1

    .line 674
    .local v0, "endOffset":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 675
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 676
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    int-to-float v3, p2

    iput v3, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 678
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iput v4, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    .line 680
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v1

    .line 681
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 682
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 683
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 684
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iput v4, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    .line 685
    return-void
.end method
