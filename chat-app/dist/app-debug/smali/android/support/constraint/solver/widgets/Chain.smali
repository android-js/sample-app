.class Landroid/support/constraint/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 6
    .param p0, "constraintWidgetContainer"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I

    .prologue
    .line 46
    const/4 v4, 0x0

    .line 47
    .local v4, "offset":I
    const/4 v1, 0x0

    .line 48
    .local v1, "chainsSize":I
    const/4 v0, 0x0

    .line 49
    .local v0, "chainsArray":[Landroid/support/constraint/solver/widgets/ChainHead;
    if-nez p2, :cond_1

    .line 50
    const/4 v4, 0x0

    .line 51
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 52
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ChainHead;

    .line 59
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 60
    aget-object v2, v0, v3

    .line 63
    .local v2, "first":Landroid/support/constraint/solver/widgets/ChainHead;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ChainHead;->define()V

    .line 64
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    invoke-static {p0, p1, p2, v4, v2}, Landroid/support/constraint/solver/widgets/Optimizer;->applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 66
    invoke-static {p0, p1, p2, v4, v2}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V

    .line 59
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 54
    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ChainHead;
    .end local v3    # "i":I
    :cond_1
    const/4 v4, 0x2

    .line 55
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 56
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ChainHead;

    goto :goto_0

    .line 69
    .restart local v2    # "first":Landroid/support/constraint/solver/widgets/ChainHead;
    .restart local v3    # "i":I
    :cond_2
    invoke-static {p0, p1, p2, v4, v2}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V

    goto :goto_2

    .line 72
    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ChainHead;
    :cond_3
    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)V
    .locals 71
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroid/support/constraint/solver/widgets/ChainHead;

    .prologue
    .line 86
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v50, v0

    .line 87
    .local v50, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v59, v0

    .line 88
    .local v59, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v52, v0

    .line 89
    .local v52, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v61, v0

    .line 90
    .local v61, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    .line 92
    .local v53, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v70, v50

    .line 93
    .local v70, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/16 v65, 0x0

    .line 94
    .local v65, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/16 v49, 0x0

    .line 96
    .local v49, "done":Z
    move-object/from16 v0, p4

    iget v5, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    .line 97
    .local v5, "totalWeights":F
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v51, v0

    .line 98
    .local v51, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v67, v0

    .line 100
    .local v67, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v11, p2

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_9

    const/16 v58, 0x1

    .line 101
    .local v58, "isWrapContent":Z
    :goto_0
    const/16 v56, 0x0

    .line 102
    .local v56, "isChainSpread":Z
    const/16 v57, 0x0

    .line 103
    .local v57, "isChainSpreadInside":Z
    const/16 v55, 0x0

    .line 105
    .local v55, "isChainPacked":Z
    if-nez p2, :cond_d

    .line 106
    move-object/from16 v0, v53

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v11, :cond_a

    const/16 v56, 0x1

    .line 107
    :goto_1
    move-object/from16 v0, v53

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    const/16 v57, 0x1

    .line 108
    :goto_2
    move-object/from16 v0, v53

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_c

    const/16 v55, 0x1

    .line 119
    :goto_3
    if-nez v49, :cond_15

    .line 120
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 121
    .local v7, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v27, 0x4

    .line 122
    .local v27, "strength":I
    if-nez v58, :cond_0

    if-eqz v55, :cond_1

    .line 123
    :cond_0
    const/16 v27, 0x1

    .line 125
    :cond_1
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v63

    .line 127
    .local v63, "margin":I
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_2

    move-object/from16 v0, v70

    move-object/from16 v1, v50

    if-eq v0, v1, :cond_2

    .line 128
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int v63, v63, v11

    .line 131
    :cond_2
    if-eqz v55, :cond_11

    move-object/from16 v0, v70

    move-object/from16 v1, v50

    if-eq v0, v1, :cond_11

    move-object/from16 v0, v70

    move-object/from16 v1, v52

    if-eq v0, v1, :cond_11

    .line 132
    const/16 v27, 0x6

    .line 139
    :cond_3
    :goto_4
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_4

    .line 140
    move-object/from16 v0, v70

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_12

    .line 141
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v17, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v63

    move/from16 v2, v17

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 147
    :goto_5
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, p1

    move/from16 v1, v63

    move/from16 v2, v27

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 151
    :cond_4
    if-eqz v58, :cond_6

    .line 152
    invoke-virtual/range {v70 .. v70}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_5

    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v11, p2

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_5

    .line 154
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, v70

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v17, 0x0

    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 158
    :cond_5
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v17, 0x0

    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 164
    :cond_6
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v66, v0

    .line 165
    .local v66, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v66, :cond_13

    .line 166
    move-object/from16 v0, v66

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v65, v0

    .line 167
    move-object/from16 v0, v65

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_7

    move-object/from16 v0, v65

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v0, v70

    if-eq v11, v0, :cond_8

    .line 168
    :cond_7
    const/16 v65, 0x0

    .line 173
    :cond_8
    :goto_6
    if-eqz v65, :cond_14

    .line 174
    move-object/from16 v70, v65

    goto/16 :goto_3

    .line 100
    .end local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v27    # "strength":I
    .end local v55    # "isChainPacked":Z
    .end local v56    # "isChainSpread":Z
    .end local v57    # "isChainSpreadInside":Z
    .end local v58    # "isWrapContent":Z
    .end local v63    # "margin":I
    .end local v66    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_9
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 106
    .restart local v55    # "isChainPacked":Z
    .restart local v56    # "isChainSpread":Z
    .restart local v57    # "isChainSpreadInside":Z
    .restart local v58    # "isWrapContent":Z
    :cond_a
    const/16 v56, 0x0

    goto/16 :goto_1

    .line 107
    :cond_b
    const/16 v57, 0x0

    goto/16 :goto_2

    .line 108
    :cond_c
    const/16 v55, 0x0

    goto/16 :goto_3

    .line 110
    :cond_d
    move-object/from16 v0, v53

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v11, :cond_e

    const/16 v56, 0x1

    .line 111
    :goto_7
    move-object/from16 v0, v53

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    const/16 v57, 0x1

    .line 112
    :goto_8
    move-object/from16 v0, v53

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_10

    const/16 v55, 0x1

    :goto_9
    goto/16 :goto_3

    .line 110
    :cond_e
    const/16 v56, 0x0

    goto :goto_7

    .line 111
    :cond_f
    const/16 v57, 0x0

    goto :goto_8

    .line 112
    :cond_10
    const/16 v55, 0x0

    goto :goto_9

    .line 133
    .restart local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v27    # "strength":I
    .restart local v63    # "margin":I
    :cond_11
    if-eqz v56, :cond_3

    if-eqz v58, :cond_3

    .line 136
    const/16 v27, 0x4

    goto/16 :goto_4

    .line 144
    :cond_12
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v17, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v63

    move/from16 v2, v17

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_5

    .line 171
    .restart local v66    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_13
    const/16 v65, 0x0

    goto :goto_6

    .line 176
    :cond_14
    const/16 v49, 0x1

    goto/16 :goto_3

    .line 181
    .end local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v27    # "strength":I
    .end local v63    # "margin":I
    .end local v66    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_15
    if-eqz v61, :cond_16

    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_16

    .line 182
    move-object/from16 v0, v61

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 183
    .local v8, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, v59

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v17, p3, 0x1

    aget-object v12, v12, v17

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 184
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    const/16 v19, 0x5

    .line 183
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 189
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_16
    if-eqz v58, :cond_17

    .line 190
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, v59

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v17, p3, 0x1

    aget-object v12, v12, v17

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v17, v0

    add-int/lit8 v19, p3, 0x1

    aget-object v17, v17, v19

    .line 192
    invoke-virtual/range {v17 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    const/16 v19, 0x6

    .line 190
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 196
    :cond_17
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    move-object/from16 v62, v0

    .line 197
    .local v62, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    if-eqz v62, :cond_1d

    .line 198
    invoke-virtual/range {v62 .. v62}, Ljava/util/ArrayList;->size()I

    move-result v48

    .line 199
    .local v48, "count":I
    const/4 v11, 0x1

    move/from16 v0, v48

    if-le v0, v11, :cond_1d

    .line 200
    const/16 v60, 0x0

    .line 201
    .local v60, "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v4, 0x0

    .line 203
    .local v4, "lastWeight":F
    move-object/from16 v0, p4

    iget-boolean v11, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v11, :cond_18

    move-object/from16 v0, p4

    iget-boolean v11, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v11, :cond_18

    .line 204
    move-object/from16 v0, p4

    iget v11, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v5, v11

    .line 207
    :cond_18
    const/16 v54, 0x0

    .local v54, "i":I
    :goto_a
    move/from16 v0, v54

    move/from16 v1, v48

    if-ge v0, v1, :cond_1d

    .line 208
    move-object/from16 v0, v62

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 209
    .local v64, "match":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, v64

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v6, v11, p2

    .line 211
    .local v6, "currentWeight":F
    const/4 v11, 0x0

    cmpg-float v11, v6, v11

    if-gez v11, :cond_1a

    .line 212
    move-object/from16 v0, p4

    iget-boolean v11, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v11, :cond_19

    .line 213
    move-object/from16 v0, v64

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, v64

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v17, 0x0

    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 207
    :goto_b
    add-int/lit8 v54, v54, 0x1

    goto :goto_a

    .line 217
    :cond_19
    const/high16 v6, 0x3f800000    # 1.0f

    .line 219
    :cond_1a
    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-nez v11, :cond_1b

    .line 220
    move-object/from16 v0, v64

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, v64

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v17, 0x0

    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_b

    .line 225
    :cond_1b
    if-eqz v60, :cond_1c

    .line 226
    move-object/from16 v0, v60

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v7, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 227
    .local v7, "begin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v60

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v8, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 228
    .local v8, "end":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v64

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v9, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 229
    .local v9, "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v64

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v10, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 230
    .local v10, "nextEnd":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v3

    .line 231
    .local v3, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual/range {v3 .. v10}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 233
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 236
    .end local v3    # "row":Landroid/support/constraint/solver/ArrayRow;
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v9    # "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    .end local v10    # "nextEnd":Landroid/support/constraint/solver/SolverVariable;
    :cond_1c
    move-object/from16 v60, v64

    .line 237
    move v4, v6

    goto :goto_b

    .line 254
    .end local v4    # "lastWeight":F
    .end local v6    # "currentWeight":F
    .end local v48    # "count":I
    .end local v54    # "i":I
    .end local v60    # "lastMatch":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v64    # "match":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1d
    if-eqz v52, :cond_29

    move-object/from16 v0, v52

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_1e

    if-eqz v55, :cond_29

    .line 255
    :cond_1e
    move-object/from16 v0, v50

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 256
    .local v7, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 257
    .local v8, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v50

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_26

    move-object/from16 v0, v50

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 258
    .local v13, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_c
    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_27

    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v16, v0

    .line 259
    .local v16, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_d
    move-object/from16 v0, v52

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_1f

    .line 260
    move-object/from16 v0, v52

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 261
    move-object/from16 v0, v52

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 263
    :cond_1f
    if-eqz v13, :cond_20

    if-eqz v16, :cond_20

    .line 264
    const/high16 v15, 0x3f000000    # 0.5f

    .line 265
    .local v15, "bias":F
    if-nez p2, :cond_28

    .line 266
    move-object/from16 v0, v53

    iget v15, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 270
    :goto_e
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 271
    .local v14, "beginMargin":I
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v18

    .line 272
    .local v18, "endMargin":I
    iget-object v12, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v17, v0

    const/16 v19, 0x5

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v19}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 418
    .end local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v15    # "bias":F
    .end local v16    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v18    # "endMargin":I
    :cond_20
    :goto_f
    if-nez v56, :cond_21

    if-eqz v57, :cond_25

    :cond_21
    if-eqz v52, :cond_25

    .line 419
    move-object/from16 v0, v52

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 420
    .restart local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v61

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 421
    .restart local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_4a

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 422
    .restart local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_10
    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_4b

    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v16, v0

    .line 423
    .restart local v16    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_11
    move-object/from16 v0, v59

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_22

    .line 424
    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v69, v11, v12

    .line 425
    .local v69, "realEnd":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v69

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_4c

    move-object/from16 v0, v69

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v16, v0

    .line 427
    .end local v69    # "realEnd":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_22
    :goto_12
    move-object/from16 v0, v52

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_23

    .line 428
    move-object/from16 v0, v52

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 429
    move-object/from16 v0, v52

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 431
    :cond_23
    if-eqz v13, :cond_25

    if-eqz v16, :cond_25

    .line 432
    const/high16 v15, 0x3f000000    # 0.5f

    .line 433
    .restart local v15    # "bias":F
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 434
    .restart local v14    # "beginMargin":I
    if-nez v61, :cond_24

    .line 436
    move-object/from16 v61, v59

    .line 438
    :cond_24
    move-object/from16 v0, v61

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v18

    .line 439
    .restart local v18    # "endMargin":I
    iget-object v12, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v17, v0

    const/16 v19, 0x5

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v19}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 443
    .end local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v15    # "bias":F
    .end local v16    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v18    # "endMargin":I
    :cond_25
    return-void

    .line 257
    .restart local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_26
    const/4 v13, 0x0

    goto/16 :goto_c

    .line 258
    .restart local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_27
    const/16 v16, 0x0

    goto/16 :goto_d

    .line 268
    .restart local v15    # "bias":F
    .restart local v16    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_28
    move-object/from16 v0, v53

    iget v15, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto/16 :goto_e

    .line 275
    .end local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v15    # "bias":F
    .end local v16    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_29
    if-eqz v56, :cond_3a

    if-eqz v52, :cond_3a

    .line 277
    move-object/from16 v70, v52

    .line 278
    move-object/from16 v68, v52

    .line 279
    .local v68, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget v11, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v11, :cond_2a

    move-object/from16 v0, p4

    iget v11, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    move-object/from16 v0, p4

    iget v12, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v11, v12, :cond_2a

    const/16 v45, 0x1

    .line 280
    .local v45, "applyFixedEquality":Z
    :goto_13
    if-eqz v70, :cond_20

    .line 281
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v65, v11, p2

    .line 282
    :goto_14
    if-eqz v65, :cond_2b

    invoke-virtual/range {v65 .. v65}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_2b

    .line 283
    move-object/from16 v0, v65

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v65, v11, p2

    goto :goto_14

    .line 279
    .end local v45    # "applyFixedEquality":Z
    :cond_2a
    const/16 v45, 0x0

    goto :goto_13

    .line 285
    .restart local v45    # "applyFixedEquality":Z
    :cond_2b
    if-nez v65, :cond_2c

    move-object/from16 v0, v70

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_33

    .line 286
    :cond_2c
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v46, v11, p3

    .line 287
    .local v46, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v46

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 288
    .local v7, "begin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v46

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_35

    move-object/from16 v0, v46

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 289
    .restart local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_15
    move-object/from16 v0, v68

    move-object/from16 v1, v70

    if-eq v0, v1, :cond_36

    .line 290
    move-object/from16 v0, v68

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 295
    :cond_2d
    :goto_16
    const/16 v47, 0x0

    .line 296
    .local v47, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v24, 0x0

    .line 297
    .local v24, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    const/16 v25, 0x0

    .line 298
    .local v25, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {v46 .. v46}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 299
    .restart local v14    # "beginMargin":I
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v35

    .line 301
    .local v35, "nextMargin":I
    if-eqz v65, :cond_38

    .line 302
    move-object/from16 v0, v65

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v47, v11, p3

    .line 303
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v24, v0

    .line 304
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v25, v0

    .line 313
    :goto_17
    if-eqz v47, :cond_2e

    .line 314
    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int v35, v35, v11

    .line 316
    :cond_2e
    if-eqz v68, :cond_2f

    .line 317
    move-object/from16 v0, v68

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int/2addr v14, v11

    .line 319
    :cond_2f
    if-eqz v7, :cond_33

    if-eqz v13, :cond_33

    if-eqz v24, :cond_33

    if-eqz v25, :cond_33

    .line 320
    move/from16 v22, v14

    .line 321
    .local v22, "margin1":I
    move-object/from16 v0, v70

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_30

    .line 322
    move-object/from16 v0, v52

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v22

    .line 324
    :cond_30
    move/from16 v26, v35

    .line 325
    .local v26, "margin2":I
    move-object/from16 v0, v70

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_31

    .line 326
    move-object/from16 v0, v61

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v26

    .line 328
    :cond_31
    const/16 v27, 0x4

    .line 329
    .restart local v27    # "strength":I
    if-eqz v45, :cond_32

    .line 330
    const/16 v27, 0x6

    .line 332
    :cond_32
    const/high16 v23, 0x3f000000    # 0.5f

    move-object/from16 v19, p1

    move-object/from16 v20, v7

    move-object/from16 v21, v13

    invoke-virtual/range {v19 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 337
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v22    # "margin1":I
    .end local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v26    # "margin2":I
    .end local v27    # "strength":I
    .end local v35    # "nextMargin":I
    .end local v46    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v47    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_33
    invoke-virtual/range {v70 .. v70}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_34

    .line 338
    move-object/from16 v68, v70

    .line 340
    :cond_34
    move-object/from16 v70, v65

    goto/16 :goto_13

    .line 288
    .restart local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v46    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_35
    const/4 v13, 0x0

    goto/16 :goto_15

    .line 291
    .restart local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_36
    move-object/from16 v0, v70

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, v68

    move-object/from16 v1, v70

    if-ne v0, v1, :cond_2d

    .line 292
    move-object/from16 v0, v50

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_37

    move-object/from16 v0, v50

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    :goto_18
    goto/16 :goto_16

    :cond_37
    const/4 v13, 0x0

    goto :goto_18

    .line 306
    .restart local v14    # "beginMargin":I
    .restart local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .restart local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v35    # "nextMargin":I
    .restart local v47    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_38
    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v47, v0

    .line 307
    if-eqz v47, :cond_39

    .line 308
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v24, v0

    .line 310
    :cond_39
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v25, v0

    goto/16 :goto_17

    .line 342
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v35    # "nextMargin":I
    .end local v45    # "applyFixedEquality":Z
    .end local v46    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v47    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v68    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3a
    if-eqz v57, :cond_20

    if-eqz v52, :cond_20

    .line 344
    move-object/from16 v70, v52

    .line 345
    move-object/from16 v68, v52

    .line 346
    .restart local v68    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget v11, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v11, :cond_3b

    move-object/from16 v0, p4

    iget v11, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    move-object/from16 v0, p4

    iget v12, v0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v11, v12, :cond_3b

    const/16 v45, 0x1

    .line 347
    .restart local v45    # "applyFixedEquality":Z
    :goto_19
    if-eqz v70, :cond_47

    .line 348
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v65, v11, p2

    .line 349
    :goto_1a
    if-eqz v65, :cond_3c

    invoke-virtual/range {v65 .. v65}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_3c

    .line 350
    move-object/from16 v0, v65

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v65, v11, p2

    goto :goto_1a

    .line 346
    .end local v45    # "applyFixedEquality":Z
    :cond_3b
    const/16 v45, 0x0

    goto :goto_19

    .line 352
    .restart local v45    # "applyFixedEquality":Z
    :cond_3c
    move-object/from16 v0, v70

    move-object/from16 v1, v52

    if-eq v0, v1, :cond_41

    move-object/from16 v0, v70

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_41

    if-eqz v65, :cond_41

    .line 353
    move-object/from16 v0, v65

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_3d

    .line 354
    const/16 v65, 0x0

    .line 356
    :cond_3d
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v46, v11, p3

    .line 357
    .restart local v46    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v46

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 358
    .restart local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v46

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_43

    move-object/from16 v0, v46

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 359
    .restart local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_1b
    move-object/from16 v0, v68

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 360
    const/16 v47, 0x0

    .line 361
    .restart local v47    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v24, 0x0

    .line 362
    .restart local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    const/16 v25, 0x0

    .line 363
    .restart local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {v46 .. v46}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 364
    .restart local v14    # "beginMargin":I
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v35

    .line 366
    .restart local v35    # "nextMargin":I
    if-eqz v65, :cond_45

    .line 367
    move-object/from16 v0, v65

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v47, v11, p3

    .line 368
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v24, v0

    .line 369
    move-object/from16 v0, v47

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_44

    move-object/from16 v0, v47

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v25, v0

    .line 378
    :goto_1c
    if-eqz v47, :cond_3e

    .line 379
    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int v35, v35, v11

    .line 381
    :cond_3e
    if-eqz v68, :cond_3f

    .line 382
    move-object/from16 v0, v68

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int/2addr v14, v11

    .line 384
    :cond_3f
    const/16 v27, 0x4

    .line 385
    .restart local v27    # "strength":I
    if-eqz v45, :cond_40

    .line 386
    const/16 v27, 0x6

    .line 388
    :cond_40
    if-eqz v7, :cond_41

    if-eqz v13, :cond_41

    if-eqz v24, :cond_41

    if-eqz v25, :cond_41

    .line 389
    const/high16 v32, 0x3f000000    # 0.5f

    move-object/from16 v28, p1

    move-object/from16 v29, v7

    move-object/from16 v30, v13

    move/from16 v31, v14

    move-object/from16 v33, v24

    move-object/from16 v34, v25

    move/from16 v36, v27

    invoke-virtual/range {v28 .. v36}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 394
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v27    # "strength":I
    .end local v35    # "nextMargin":I
    .end local v46    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v47    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_41
    invoke-virtual/range {v70 .. v70}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_42

    .line 395
    move-object/from16 v68, v70

    .line 397
    :cond_42
    move-object/from16 v70, v65

    goto/16 :goto_19

    .line 358
    .restart local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v46    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_43
    const/4 v13, 0x0

    goto/16 :goto_1b

    .line 369
    .restart local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v14    # "beginMargin":I
    .restart local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .restart local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v35    # "nextMargin":I
    .restart local v47    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_44
    const/16 v25, 0x0

    goto :goto_1c

    .line 371
    :cond_45
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v47, v0

    .line 372
    if-eqz v47, :cond_46

    .line 373
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v24, v0

    .line 375
    :cond_46
    move-object/from16 v0, v70

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v25, v0

    goto :goto_1c

    .line 399
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v35    # "nextMargin":I
    .end local v46    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v47    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_47
    move-object/from16 v0, v52

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 400
    .local v7, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v50

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 401
    .local v13, "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v61

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 402
    .restart local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    .line 403
    .local v16, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v13, :cond_48

    .line 404
    move-object/from16 v0, v52

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_49

    .line 405
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 411
    :cond_48
    :goto_1d
    if-eqz v16, :cond_20

    move-object/from16 v0, v52

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_20

    .line 412
    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, v16

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_f

    .line 406
    :cond_49
    if-eqz v16, :cond_48

    .line 407
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v38, v0

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    const/high16 v40, 0x3f000000    # 0.5f

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v41, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v42, v0

    .line 408
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v43

    const/16 v44, 0x5

    move-object/from16 v36, p1

    .line 407
    invoke-virtual/range {v36 .. v44}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_1d

    .line 421
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v16    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v45    # "applyFixedEquality":Z
    .end local v68    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_4a
    const/4 v13, 0x0

    goto/16 :goto_10

    .line 422
    .local v13, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_4b
    const/16 v16, 0x0

    goto/16 :goto_11

    .line 425
    .local v16, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v69    # "realEnd":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_4c
    const/16 v16, 0x0

    goto/16 :goto_12
.end method
