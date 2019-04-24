.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final CACHE_MEASURED_DIMENSION:Z = false

.field private static final DEBUG:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-1.1.3"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSet:Landroid/support/constraint/ConstraintSet;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMetrics:Landroid/support/constraint/solver/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOptimizationLevel:I

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 570
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 509
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 511
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 512
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 513
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 514
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 517
    const/4 v0, 0x7

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 518
    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 520
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 525
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 526
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 527
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 528
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 529
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 530
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 571
    invoke-direct {p0, v5}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 572
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 575
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 509
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 511
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 512
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 513
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 514
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 517
    const/4 v0, 0x7

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 520
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 525
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 526
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 527
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 528
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 529
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 530
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 576
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 577
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 580
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 509
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 511
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 512
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 513
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 514
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 517
    const/4 v0, 0x7

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 520
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 525
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 526
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 527
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 528
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 529
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 530
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 581
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 582
    return-void
.end method

.method private final getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1131
    if-nez p1, :cond_0

    .line 1132
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1144
    :goto_0
    return-object v1

    .line 1134
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1135
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1136
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1137
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 1138
    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 1141
    :cond_1
    if-ne v0, p0, :cond_2

    .line 1142
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    goto :goto_0

    .line 1144
    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    .line 595
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 596
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v7

    invoke-virtual {v6, v7, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 597
    iput-object v8, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 598
    if-eqz p1, :cond_7

    .line 599
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 600
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 601
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_6

    .line 602
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 603
    .local v2, "attr":I
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v2, v6, :cond_1

    .line 604
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 601
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 605
    :cond_1
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v2, v6, :cond_2

    .line 606
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    goto :goto_1

    .line 607
    :cond_2
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v2, v6, :cond_3

    .line 608
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    goto :goto_1

    .line 609
    :cond_3
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v2, v6, :cond_4

    .line 610
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    goto :goto_1

    .line 611
    :cond_4
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v2, v6, :cond_5

    .line 612
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_1

    .line 613
    :cond_5
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v2, v6, :cond_0

    .line 614
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 616
    .local v5, "id":I
    :try_start_0
    new-instance v6, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v6}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v6, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 617
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_2
    iput v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    goto :goto_1

    .line 618
    :catch_0
    move-exception v3

    .line 619
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v8, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    goto :goto_2

    .line 624
    .end local v2    # "attr":I
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "id":I
    :cond_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 626
    .end local v0    # "N":I
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "i":I
    :cond_7
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v7, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 627
    return-void
.end method

.method private internalMeasureChildren(II)V
    .locals 24
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    .prologue
    .line 1161
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v20

    add-int v12, v19, v20

    .line 1162
    .local v12, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v20

    add-int v18, v19, v20

    .line 1164
    .local v18, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v16

    .line 1165
    .local v16, "widgetsCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_11

    .line 1166
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1167
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 1165
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1170
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1171
    .local v14, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v15, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1172
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 1175
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1177
    iget v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v17, v0

    .line 1178
    .local v17, "width":I
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1182
    .local v11, "height":I
    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    iget v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    :cond_2
    iget v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    iget v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    iget v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    :cond_3
    const/4 v10, 0x1

    .line 1192
    .local v10, "doMeasure":Z
    :goto_2
    const/4 v9, 0x0

    .line 1193
    .local v9, "didWrapMeasureWidth":Z
    const/4 v8, 0x0

    .line 1195
    .local v8, "didWrapMeasureHeight":Z
    if-eqz v10, :cond_5

    .line 1199
    if-nez v17, :cond_9

    .line 1200
    const/16 v19, -0x2

    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v7

    .line 1202
    .local v7, "childWidthMeasureSpec":I
    const/4 v9, 0x1

    .line 1213
    :goto_3
    if-nez v11, :cond_c

    .line 1214
    const/16 v19, -0x2

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v12, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 1216
    .local v6, "childHeightMeasureSpec":I
    const/4 v8, 0x1

    .line 1227
    :goto_4
    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->measures:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->measures:J

    .line 1232
    :cond_4
    const/16 v19, -0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const/16 v19, 0x1

    :goto_5
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1233
    const/16 v19, -0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_10

    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1234
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 1235
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 1238
    .end local v6    # "childHeightMeasureSpec":I
    .end local v7    # "childWidthMeasureSpec":I
    :cond_5
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1239
    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1241
    if-eqz v9, :cond_6

    .line 1242
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1244
    :cond_6
    if-eqz v8, :cond_7

    .line 1245
    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1248
    :cond_7
    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1249
    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 1250
    .local v4, "baseline":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v4, v0, :cond_0

    .line 1251
    invoke-virtual {v15, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    goto/16 :goto_1

    .line 1182
    .end local v4    # "baseline":I
    .end local v8    # "didWrapMeasureHeight":Z
    .end local v9    # "didWrapMeasureWidth":Z
    .end local v10    # "doMeasure":Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1203
    .restart local v8    # "didWrapMeasureHeight":Z
    .restart local v9    # "didWrapMeasureWidth":Z
    .restart local v10    # "doMeasure":Z
    :cond_9
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1204
    const/16 v19, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v7

    .restart local v7    # "childWidthMeasureSpec":I
    goto/16 :goto_3

    .line 1207
    .end local v7    # "childWidthMeasureSpec":I
    :cond_a
    const/16 v19, -0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1208
    const/4 v9, 0x1

    .line 1210
    :cond_b
    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v7

    .restart local v7    # "childWidthMeasureSpec":I
    goto/16 :goto_3

    .line 1217
    :cond_c
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_d

    .line 1218
    const/16 v19, -0x1

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v12, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v6

    .restart local v6    # "childHeightMeasureSpec":I
    goto/16 :goto_4

    .line 1221
    .end local v6    # "childHeightMeasureSpec":I
    :cond_d
    const/16 v19, -0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_e

    .line 1222
    const/4 v8, 0x1

    .line 1224
    :cond_e
    move/from16 v0, p2

    invoke-static {v0, v12, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v6

    .restart local v6    # "childHeightMeasureSpec":I
    goto/16 :goto_4

    .line 1232
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 1233
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 1255
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childHeightMeasureSpec":I
    .end local v7    # "childWidthMeasureSpec":I
    .end local v8    # "didWrapMeasureHeight":Z
    .end local v9    # "didWrapMeasureWidth":Z
    .end local v10    # "doMeasure":Z
    .end local v11    # "height":I
    .end local v14    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v17    # "width":I
    :cond_11
    return-void
.end method

.method private internalMeasureDimensions(II)V
    .locals 32
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    .prologue
    .line 1283
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v27

    add-int v14, v26, v27

    .line 1284
    .local v14, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v27

    add-int v25, v26, v27

    .line 1286
    .local v25, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v23

    .line 1287
    .local v23, "widgetsCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v23

    if-ge v15, v0, :cond_c

    .line 1288
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1289
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1287
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1292
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1293
    .local v17, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v22, v0

    .line 1294
    .local v22, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 1297
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1299
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v24, v0

    .line 1300
    .local v24, "width":I
    move-object/from16 v0, v17

    iget v13, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1302
    .local v13, "height":I
    if-eqz v24, :cond_2

    if-nez v13, :cond_3

    .line 1303
    :cond_2
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1304
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    goto :goto_1

    .line 1308
    :cond_3
    const/4 v12, 0x0

    .line 1309
    .local v12, "didWrapMeasureWidth":Z
    const/4 v11, 0x0

    .line 1313
    .local v11, "didWrapMeasureHeight":Z
    const/16 v26, -0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 1314
    const/4 v12, 0x1

    .line 1316
    :cond_4
    move/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 1318
    .local v10, "childWidthMeasureSpec":I
    const/16 v26, -0x2

    move/from16 v0, v26

    if-ne v13, v0, :cond_5

    .line 1319
    const/4 v11, 0x1

    .line 1321
    :cond_5
    move/from16 v0, p2

    invoke-static {v0, v14, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    .line 1323
    .local v9, "childHeightMeasureSpec":I
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->measure(II)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->measures:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->measures:J

    .line 1328
    :cond_6
    const/16 v26, -0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1329
    const/16 v26, -0x2

    move/from16 v0, v26

    if-ne v13, v0, :cond_b

    const/16 v26, 0x1

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1330
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 1331
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1333
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1334
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1336
    if-eqz v12, :cond_7

    .line 1337
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1339
    :cond_7
    if-eqz v11, :cond_8

    .line 1340
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1343
    :cond_8
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v26, v0

    if-eqz v26, :cond_9

    .line 1344
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 1345
    .local v4, "baseline":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v4, v0, :cond_9

    .line 1346
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1350
    .end local v4    # "baseline":I
    :cond_9
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1351
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1352
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    goto/16 :goto_1

    .line 1328
    :cond_a
    const/16 v26, 0x0

    goto :goto_2

    .line 1329
    :cond_b
    const/16 v26, 0x0

    goto :goto_3

    .line 1357
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v11    # "didWrapMeasureHeight":Z
    .end local v12    # "didWrapMeasureWidth":Z
    .end local v13    # "height":I
    .end local v17    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v22    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v24    # "width":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1359
    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v23

    if-ge v15, v0, :cond_26

    .line 1360
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1361
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 1359
    :cond_d
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1364
    :cond_e
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1365
    .restart local v17    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v22, v0

    .line 1366
    .restart local v22    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v26, v0

    if-nez v26, :cond_d

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    move/from16 v26, v0

    if-nez v26, :cond_d

    .line 1369
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1371
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v24, v0

    .line 1372
    .restart local v24    # "width":I
    move-object/from16 v0, v17

    iget v13, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1374
    .restart local v13    # "height":I
    if-eqz v24, :cond_f

    if-nez v13, :cond_d

    .line 1378
    :cond_f
    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v16

    .line 1379
    .local v16, "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v20

    .line 1380
    .local v20, "right":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    if-eqz v26, :cond_16

    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1381
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    if-eqz v26, :cond_16

    const/4 v5, 0x1

    .line 1382
    .local v5, "bothHorizontal":Z
    :goto_6
    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v21

    .line 1383
    .local v21, "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    .line 1384
    .local v7, "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    if-eqz v26, :cond_17

    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1385
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    if-eqz v26, :cond_17

    const/4 v6, 0x1

    .line 1387
    .local v6, "bothVertical":Z
    :goto_7
    if-nez v24, :cond_10

    if-nez v13, :cond_10

    if-eqz v5, :cond_10

    if-nez v6, :cond_d

    .line 1391
    :cond_10
    const/4 v12, 0x0

    .line 1392
    .restart local v12    # "didWrapMeasureWidth":Z
    const/4 v11, 0x0

    .line 1393
    .restart local v11    # "didWrapMeasureHeight":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v26

    sget-object v27, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_18

    const/16 v19, 0x1

    .line 1394
    .local v19, "resolveWidth":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v26

    sget-object v27, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_19

    const/16 v18, 0x1

    .line 1399
    .local v18, "resolveHeight":Z
    :goto_9
    if-nez v19, :cond_11

    .line 1400
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1402
    :cond_11
    if-nez v18, :cond_12

    .line 1403
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1405
    :cond_12
    if-nez v24, :cond_1b

    .line 1406
    if-eqz v19, :cond_1a

    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadWidth()Z

    move-result v26

    if-eqz v26, :cond_1a

    if-eqz v5, :cond_1a

    invoke-virtual/range {v16 .. v16}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v26

    if-eqz v26, :cond_1a

    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 1407
    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v26

    invoke-virtual/range {v16 .. v16}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v27

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1408
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1409
    move/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 1427
    .restart local v10    # "childWidthMeasureSpec":I
    :goto_a
    if-nez v13, :cond_1f

    .line 1428
    if-eqz v18, :cond_1e

    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadHeight()Z

    move-result v26

    if-eqz v26, :cond_1e

    if-eqz v6, :cond_1e

    invoke-virtual/range {v21 .. v21}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v26

    if-eqz v26, :cond_1e

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 1429
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v26

    invoke-virtual/range {v21 .. v21}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v27

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v13, v0

    .line 1430
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1431
    move/from16 v0, p2

    invoke-static {v0, v14, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    .line 1449
    .restart local v9    # "childHeightMeasureSpec":I
    :goto_b
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->measure(II)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v26, v0

    if-eqz v26, :cond_13

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->measures:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->measures:J

    .line 1454
    :cond_13
    const/16 v26, -0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_22

    const/16 v26, 0x1

    :goto_c
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1455
    const/16 v26, -0x2

    move/from16 v0, v26

    if-ne v13, v0, :cond_23

    const/16 v26, 0x1

    :goto_d
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1456
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 1457
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1459
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1460
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1462
    if-eqz v12, :cond_14

    .line 1463
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1465
    :cond_14
    if-eqz v11, :cond_15

    .line 1466
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1468
    :cond_15
    if-eqz v19, :cond_24

    .line 1469
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1473
    :goto_e
    if-eqz v18, :cond_25

    .line 1474
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1479
    :goto_f
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    .line 1480
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 1481
    .restart local v4    # "baseline":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v4, v0, :cond_d

    .line 1482
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    goto/16 :goto_5

    .line 1381
    .end local v4    # "baseline":I
    .end local v5    # "bothHorizontal":Z
    .end local v6    # "bothVertical":Z
    .end local v7    # "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v9    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v11    # "didWrapMeasureHeight":Z
    .end local v12    # "didWrapMeasureWidth":Z
    .end local v18    # "resolveHeight":Z
    .end local v19    # "resolveWidth":Z
    .end local v21    # "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 1385
    .restart local v5    # "bothHorizontal":Z
    .restart local v7    # "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v21    # "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 1393
    .restart local v6    # "bothVertical":Z
    .restart local v11    # "didWrapMeasureHeight":Z
    .restart local v12    # "didWrapMeasureWidth":Z
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1394
    .restart local v19    # "resolveWidth":Z
    :cond_19
    const/16 v18, 0x0

    goto/16 :goto_9

    .line 1412
    .restart local v18    # "resolveHeight":Z
    :cond_1a
    const/16 v26, -0x2

    move/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 1414
    .restart local v10    # "childWidthMeasureSpec":I
    const/4 v12, 0x1

    .line 1415
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 1417
    .end local v10    # "childWidthMeasureSpec":I
    :cond_1b
    const/16 v26, -0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 1418
    const/16 v26, -0x1

    move/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    .restart local v10    # "childWidthMeasureSpec":I
    goto/16 :goto_a

    .line 1421
    .end local v10    # "childWidthMeasureSpec":I
    :cond_1c
    const/16 v26, -0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    .line 1422
    const/4 v12, 0x1

    .line 1424
    :cond_1d
    move/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    .restart local v10    # "childWidthMeasureSpec":I
    goto/16 :goto_a

    .line 1434
    :cond_1e
    const/16 v26, -0x2

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v14, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    .line 1436
    .restart local v9    # "childHeightMeasureSpec":I
    const/4 v11, 0x1

    .line 1437
    const/16 v18, 0x0

    goto/16 :goto_b

    .line 1439
    .end local v9    # "childHeightMeasureSpec":I
    :cond_1f
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v13, v0, :cond_20

    .line 1440
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v14, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    .restart local v9    # "childHeightMeasureSpec":I
    goto/16 :goto_b

    .line 1443
    .end local v9    # "childHeightMeasureSpec":I
    :cond_20
    const/16 v26, -0x2

    move/from16 v0, v26

    if-ne v13, v0, :cond_21

    .line 1444
    const/4 v11, 0x1

    .line 1446
    :cond_21
    move/from16 v0, p2

    invoke-static {v0, v14, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    .restart local v9    # "childHeightMeasureSpec":I
    goto/16 :goto_b

    .line 1454
    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_c

    .line 1455
    :cond_23
    const/16 v26, 0x0

    goto/16 :goto_d

    .line 1471
    :cond_24
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    goto/16 :goto_e

    .line 1476
    :cond_25
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    goto/16 :goto_f

    .line 1486
    .end local v5    # "bothHorizontal":Z
    .end local v6    # "bothVertical":Z
    .end local v7    # "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v11    # "didWrapMeasureHeight":Z
    .end local v12    # "didWrapMeasureWidth":Z
    .end local v13    # "height":I
    .end local v16    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v17    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v18    # "resolveHeight":Z
    .end local v19    # "resolveWidth":Z
    .end local v20    # "right":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v21    # "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v22    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v24    # "width":I
    :cond_26
    return-void
.end method

.method private setChildrenConstraints()V
    .locals 41

    .prologue
    .line 808
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v28

    .line 810
    .local v28, "isInEditMode":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v23

    .line 811
    .local v23, "count":I
    if-eqz v28, :cond_1

    .line 815
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 816
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    .line 818
    .local v40, "view":Landroid/view/View;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v21

    .line 819
    .local v21, "IdAsString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1, v5}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 820
    const/16 v3, 0x2f

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v38

    .line 821
    .local v38, "slashIndex":I
    const/4 v3, -0x1

    move/from16 v0, v38

    if-eq v0, v3, :cond_0

    .line 822
    add-int/lit8 v3, v38, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 824
    :cond_0
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 815
    .end local v21    # "IdAsString":Ljava/lang/String;
    .end local v38    # "slashIndex":I
    :goto_1
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 832
    .end local v27    # "i":I
    .end local v40    # "view":Landroid/view/View;
    :cond_1
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_2
    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 833
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 834
    .local v22, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 835
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v2, :cond_2

    .line 832
    :goto_3
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 838
    :cond_2
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    goto :goto_3

    .line 841
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v22    # "child":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    .line 842
    const/16 v27, 0x0

    :goto_4
    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 843
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 844
    .restart local v22    # "child":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-ne v3, v5, :cond_4

    move-object/from16 v0, v22

    instance-of v3, v0, Landroid/support/constraint/Constraints;

    if-eqz v3, :cond_4

    .line 845
    check-cast v22, Landroid/support/constraint/Constraints;

    .end local v22    # "child":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/Constraints;->getConstraintSet()Landroid/support/constraint/ConstraintSet;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 842
    :cond_4
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 849
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-eqz v3, :cond_6

    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    .line 853
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 855
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 856
    .local v26, "helperCount":I
    if-lez v26, :cond_7

    .line 857
    const/16 v27, 0x0

    :goto_5
    move/from16 v0, v27

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/support/constraint/ConstraintHelper;

    .line 859
    .local v25, "helper":Landroid/support/constraint/ConstraintHelper;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 857
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 863
    .end local v25    # "helper":Landroid/support/constraint/ConstraintHelper;
    :cond_7
    const/16 v27, 0x0

    :goto_6
    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 864
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 865
    .restart local v22    # "child":Landroid/view/View;
    move-object/from16 v0, v22

    instance-of v3, v0, Landroid/support/constraint/Placeholder;

    if-eqz v3, :cond_8

    .line 866
    check-cast v22, Landroid/support/constraint/Placeholder;

    .end local v22    # "child":Landroid/view/View;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/Placeholder;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 863
    :cond_8
    add-int/lit8 v27, v27, 0x1

    goto :goto_6

    .line 870
    :cond_9
    const/16 v27, 0x0

    :goto_7
    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_2d

    .line 871
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 872
    .restart local v22    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 873
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v2, :cond_b

    .line 870
    :cond_a
    :goto_8
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 876
    :cond_b
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 877
    .local v29, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual/range {v29 .. v29}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 878
    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    if-eqz v3, :cond_11

    .line 879
    const/4 v3, 0x0

    move-object/from16 v0, v29

    iput-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 895
    :cond_c
    :goto_9
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 896
    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v3, :cond_d

    .line 897
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 899
    :cond_d
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 902
    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v3, :cond_f

    .line 903
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_f
    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v3, :cond_14

    move-object/from16 v24, v2

    .line 907
    check-cast v24, Landroid/support/constraint/solver/widgets/Guideline;

    .line 908
    .local v24, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    move/from16 v30, v0

    .line 909
    .local v30, "resolvedGuideBegin":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    move/from16 v31, v0

    .line 910
    .local v31, "resolvedGuideEnd":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    move/from16 v32, v0

    .line 911
    .local v32, "resolvedGuidePercent":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v3, v5, :cond_10

    .line 912
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    move/from16 v30, v0

    .line 913
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    move/from16 v31, v0

    .line 914
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    move/from16 v32, v0

    .line 916
    :cond_10
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v32, v3

    if-eqz v3, :cond_12

    .line 917
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto/16 :goto_8

    .line 881
    .end local v24    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    .end local v30    # "resolvedGuideBegin":I
    .end local v31    # "resolvedGuideEnd":I
    .end local v32    # "resolvedGuidePercent":F
    :cond_11
    if-eqz v28, :cond_c

    .line 886
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v21

    .line 887
    .restart local v21    # "IdAsString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1, v5}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 888
    const-string v3, "id/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 889
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 890
    .end local v21    # "IdAsString":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_9

    .line 918
    .restart local v24    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    .restart local v30    # "resolvedGuideBegin":I
    .restart local v31    # "resolvedGuideEnd":I
    .restart local v32    # "resolvedGuidePercent":F
    :cond_12
    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_13

    .line 919
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto/16 :goto_8

    .line 920
    :cond_13
    const/4 v3, -0x1

    move/from16 v0, v31

    if-eq v0, v3, :cond_a

    .line 921
    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto/16 :goto_8

    .line 923
    .end local v24    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    .end local v30    # "resolvedGuideBegin":I
    .end local v31    # "resolvedGuideEnd":I
    .end local v32    # "resolvedGuidePercent":F
    :cond_14
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_a

    .line 943
    :cond_15
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    move/from16 v34, v0

    .line 944
    .local v34, "resolvedLeftToLeft":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    move/from16 v35, v0

    .line 945
    .local v35, "resolvedLeftToRight":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    move/from16 v36, v0

    .line 946
    .local v36, "resolvedRightToLeft":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    move/from16 v37, v0

    .line 947
    .local v37, "resolvedRightToRight":I
    move-object/from16 v0, v29

    iget v7, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 948
    .local v7, "resolveGoneLeftMargin":I
    move-object/from16 v0, v29

    iget v13, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 949
    .local v13, "resolveGoneRightMargin":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    move/from16 v33, v0

    .line 951
    .local v33, "resolvedHorizontalBias":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v3, v5, :cond_17

    .line 954
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    move/from16 v34, v0

    .line 955
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    move/from16 v35, v0

    .line 956
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    move/from16 v36, v0

    .line 957
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    move/from16 v37, v0

    .line 958
    move-object/from16 v0, v29

    iget v7, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 959
    move-object/from16 v0, v29

    iget v13, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 960
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    move/from16 v33, v0

    .line 962
    const/4 v3, -0x1

    move/from16 v0, v34

    if-ne v0, v3, :cond_16

    const/4 v3, -0x1

    move/from16 v0, v35

    if-ne v0, v3, :cond_16

    .line 963
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1c

    .line 964
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    move/from16 v34, v0

    .line 969
    :cond_16
    :goto_a
    const/4 v3, -0x1

    move/from16 v0, v36

    if-ne v0, v3, :cond_17

    const/4 v3, -0x1

    move/from16 v0, v37

    if-ne v0, v3, :cond_17

    .line 970
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1d

    .line 971
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v36, v0

    .line 979
    :cond_17
    :goto_b
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1e

    .line 980
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 981
    .local v4, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_18

    .line 982
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v2, v4, v3, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connectCircularConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    .line 1080
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_18
    :goto_c
    if-eqz v28, :cond_1a

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_19

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1a

    .line 1082
    :cond_19
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v2, v3, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 1086
    :cond_1a
    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v3, :cond_2a

    .line 1087
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_29

    .line 1088
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1089
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1090
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1099
    :goto_d
    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v3, :cond_2c

    .line 1100
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2b

    .line 1101
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1102
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iput v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1103
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1113
    :goto_e
    move-object/from16 v0, v29

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v3, :cond_1b

    .line 1114
    move-object/from16 v0, v29

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 1116
    :cond_1b
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 1117
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 1118
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1119
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1120
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    move-object/from16 v0, v29

    iget v8, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v2, v3, v5, v6, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 1123
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    move-object/from16 v0, v29

    iget v8, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v2, v3, v5, v6, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    goto/16 :goto_8

    .line 965
    :cond_1c
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_16

    .line 966
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    move/from16 v35, v0

    goto/16 :goto_a

    .line 972
    :cond_1d
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_17

    .line 973
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v37, v0

    goto/16 :goto_b

    .line 986
    :cond_1e
    const/4 v3, -0x1

    move/from16 v0, v34

    if-eq v0, v3, :cond_25

    .line 987
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 988
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_1f

    .line 989
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1003
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1f
    :goto_f
    const/4 v3, -0x1

    move/from16 v0, v36

    if-eq v0, v3, :cond_26

    .line 1004
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 1005
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_20

    .line 1006
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v12, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v8, v2

    move-object v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1020
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_20
    :goto_10
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_27

    .line 1021
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 1022
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_21

    .line 1023
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1037
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_21
    :goto_11
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_28

    .line 1038
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 1039
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_22

    .line 1040
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1054
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_22
    :goto_12
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_23

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/view/View;

    .line 1056
    .restart local v40    # "view":Landroid/view/View;
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 1057
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_23

    if-eqz v40, :cond_23

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v3, :cond_23

    .line 1058
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v39

    check-cast v39, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1059
    .local v39, "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    const/4 v3, 0x1

    move-object/from16 v0, v29

    iput-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1060
    const/4 v3, 0x1

    move-object/from16 v0, v39

    iput-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1061
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    .line 1062
    .local v14, "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1063
    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    .line 1064
    .local v15, "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v16, 0x0

    const/16 v17, -0x1

    sget-object v18, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 1067
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1068
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1072
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v15    # "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v39    # "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v40    # "view":Landroid/view/View;
    :cond_23
    const/4 v3, 0x0

    cmpl-float v3, v33, v3

    if-ltz v3, :cond_24

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v33, v3

    if-eqz v3, :cond_24

    .line 1073
    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1075
    :cond_24
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_18

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_18

    .line 1076
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    goto/16 :goto_c

    .line 993
    :cond_25
    const/4 v3, -0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_1f

    .line 994
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 995
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_1f

    .line 996
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_f

    .line 1010
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_26
    const/4 v3, -0x1

    move/from16 v0, v37

    if-eq v0, v3, :cond_20

    .line 1011
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 1012
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_20

    .line 1013
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v12, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v8, v2

    move-object v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_10

    .line 1027
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_27
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_21

    .line 1028
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 1029
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_21

    .line 1030
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_11

    .line 1044
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_28
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_22

    .line 1045
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 1046
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_22

    .line 1047
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_12

    .line 1092
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_29
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1093
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_d

    .line 1096
    :cond_2a
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1097
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_d

    .line 1105
    :cond_2b
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1106
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto/16 :goto_e

    .line 1109
    :cond_2c
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1110
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto/16 :goto_e

    .line 1128
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "resolveGoneLeftMargin":I
    .end local v13    # "resolveGoneRightMargin":I
    .end local v22    # "child":Landroid/view/View;
    .end local v29    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v33    # "resolvedHorizontalBias":F
    .end local v34    # "resolvedLeftToLeft":I
    .end local v35    # "resolvedLeftToRight":I
    .end local v36    # "resolvedRightToLeft":I
    .end local v37    # "resolvedRightToRight":I
    :cond_2d
    return-void

    .line 825
    .end local v26    # "helperCount":I
    .restart local v40    # "view":Landroid/view/View;
    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method

.method private setSelfDimensionBehaviour(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1798
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1799
    .local v8, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1800
    .local v10, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1801
    .local v3, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1803
    .local v5, "heightSize":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v12

    add-int v4, v11, v12

    .line 1804
    .local v4, "heightPadding":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v12

    add-int v9, v11, v12

    .line 1806
    .local v9, "widthPadding":I
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1807
    .local v7, "widthBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1808
    .local v2, "heightBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v1, 0x0

    .line 1809
    .local v1, "desiredWidth":I
    const/4 v0, 0x0

    .line 1811
    .local v0, "desiredHeight":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1812
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    sparse-switch v8, :sswitch_data_0

    .line 1826
    :goto_0
    sparse-switch v3, :sswitch_data_1

    .line 1841
    :goto_1
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1842
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1843
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1844
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1845
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1846
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1847
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v12, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1848
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v12, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1849
    return-void

    .line 1814
    :sswitch_0
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1815
    move v1, v10

    .line 1817
    goto :goto_0

    .line 1819
    :sswitch_1
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1821
    goto :goto_0

    .line 1823
    :sswitch_2
    iget v11, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int v1, v11, v9

    goto :goto_0

    .line 1828
    :sswitch_3
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1829
    move v0, v5

    .line 1831
    goto :goto_1

    .line 1833
    :sswitch_4
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1835
    goto :goto_1

    .line 1837
    :sswitch_5
    iget v11, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int v0, v11, v4

    goto :goto_1

    .line 1812
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 1826
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private updateHierarchy()V
    .locals 5

    .prologue
    .line 791
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 793
    .local v1, "count":I
    const/4 v3, 0x0

    .line 794
    .local v3, "recompute":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 795
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 796
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 797
    const/4 v3, 0x1

    .line 801
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    if-eqz v3, :cond_1

    .line 802
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 803
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->setChildrenConstraints()V

    .line 805
    :cond_1
    return-void

    .line 794
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updatePostMeasures()V
    .locals 6

    .prologue
    .line 1258
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v4

    .line 1259
    .local v4, "widgetsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 1260
    invoke-virtual {p0, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1261
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/support/constraint/Placeholder;

    if-eqz v5, :cond_0

    .line 1262
    check-cast v0, Landroid/support/constraint/Placeholder;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/support/constraint/Placeholder;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 1259
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1266
    :cond_1
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1267
    .local v2, "helperCount":I
    if-lez v2, :cond_2

    .line 1268
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 1269
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintHelper;

    .line 1270
    .local v1, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v1, p0}, Landroid/support/constraint/ConstraintHelper;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 1268
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1273
    .end local v1    # "helper":Landroid/support/constraint/ConstraintHelper;
    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 634
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 636
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 638
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1996
    instance-of v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2023
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2024
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2025
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v10

    .line 2026
    .local v10, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v11, v1

    .line 2027
    .local v11, "cw":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getHeight()I

    move-result v1

    int-to-float v7, v1

    .line 2028
    .local v7, "ch":F
    const/high16 v15, 0x44870000    # 1080.0f

    .line 2029
    .local v15, "ow":F
    const/high16 v14, 0x44f00000    # 1920.0f

    .line 2030
    .local v14, "oh":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v10, :cond_2

    .line 2031
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2032
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 2030
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2035
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 2036
    .local v17, "tag":Ljava/lang/Object;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v9, v17

    .line 2037
    check-cast v9, Ljava/lang/String;

    .line 2038
    .local v9, "coordinates":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2039
    .local v16, "split":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2040
    const/4 v1, 0x0

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 2041
    .local v19, "x":I
    const/4 v1, 0x1

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 2042
    .local v20, "y":I
    const/4 v1, 0x2

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2043
    .local v18, "w":I
    const/4 v1, 0x3

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2044
    .local v12, "h":I
    move/from16 v0, v19

    int-to-float v1, v0

    div-float/2addr v1, v15

    mul-float/2addr v1, v11

    float-to-int v0, v1

    move/from16 v19, v0

    .line 2045
    move/from16 v0, v20

    int-to-float v1, v0

    div-float/2addr v1, v14

    mul-float/2addr v1, v7

    float-to-int v0, v1

    move/from16 v20, v0

    .line 2046
    move/from16 v0, v18

    int-to-float v1, v0

    div-float/2addr v1, v15

    mul-float/2addr v1, v11

    float-to-int v0, v1

    move/from16 v18, v0

    .line 2047
    int-to-float v1, v12

    div-float/2addr v1, v14

    mul-float/2addr v1, v7

    float-to-int v12, v1

    .line 2048
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 2049
    .local v6, "paint":Landroid/graphics/Paint;
    const/high16 v1, -0x10000

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2050
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    add-int v1, v19, v18

    int-to-float v4, v1

    move/from16 v0, v20

    int-to-float v5, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2051
    add-int v1, v19, v18

    int-to-float v2, v1

    move/from16 v0, v20

    int-to-float v3, v0

    add-int v1, v19, v18

    int-to-float v4, v1

    add-int v1, v20, v12

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2052
    add-int v1, v19, v18

    int-to-float v2, v1

    add-int v1, v20, v12

    int-to-float v3, v1

    move/from16 v0, v19

    int-to-float v4, v0

    add-int v1, v20, v12

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2053
    move/from16 v0, v19

    int-to-float v2, v0

    add-int v1, v20, v12

    int-to-float v3, v1

    move/from16 v0, v19

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v5, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2054
    const v1, -0xff0100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2055
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    add-int v1, v19, v18

    int-to-float v4, v1

    add-int v1, v20, v12

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2056
    move/from16 v0, v19

    int-to-float v2, v0

    add-int v1, v20, v12

    int-to-float v3, v1

    add-int v1, v19, v18

    int-to-float v4, v1

    move/from16 v0, v20

    int-to-float v5, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 2061
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "ch":F
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "coordinates":Ljava/lang/String;
    .end local v10    # "count":I
    .end local v11    # "cw":F
    .end local v12    # "h":I
    .end local v13    # "i":I
    .end local v14    # "oh":F
    .end local v15    # "ow":F
    .end local v16    # "split":[Ljava/lang/String;
    .end local v17    # "tag":Ljava/lang/Object;
    .end local v18    # "w":I
    .end local v19    # "x":I
    .end local v20    # "y":I
    :cond_2
    return-void
.end method

.method public fillMetrics(Landroid/support/constraint/solver/Metrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/support/constraint/solver/Metrics;

    .prologue
    .line 1496
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    .line 1497
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->fillMetrics(Landroid/support/constraint/solver/Metrics;)V

    .line 1498
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1980
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1972
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1988
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 560
    if-nez p1, :cond_0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 561
    check-cast v0, Ljava/lang/String;

    .line 562
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 566
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 777
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2015
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1154
    if-ne p1, p0, :cond_0

    .line 1155
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1157
    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1875
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v14

    .line 1876
    .local v14, "widgetsCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v8

    .line 1877
    .local v8, "isInEditMode":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v14, :cond_2

    .line 1878
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1879
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1880
    .local v10, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v13, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1882
    .local v13, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    iget-boolean v15, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v15, :cond_1

    iget-boolean v15, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v15, :cond_1

    if-nez v8, :cond_1

    .line 1877
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1887
    :cond_1
    iget-boolean v15, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-nez v15, :cond_0

    .line 1890
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v9

    .line 1891
    .local v9, "l":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v12

    .line 1892
    .local v12, "t":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    add-int v11, v9, v15

    .line 1893
    .local v11, "r":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    add-int v1, v12, v15

    .line 1915
    .local v1, "b":I
    invoke-virtual {v2, v9, v12, v11, v1}, Landroid/view/View;->layout(IIII)V

    .line 1916
    instance-of v15, v2, Landroid/support/constraint/Placeholder;

    if-eqz v15, :cond_0

    move-object v6, v2

    .line 1917
    check-cast v6, Landroid/support/constraint/Placeholder;

    .line 1918
    .local v6, "holder":Landroid/support/constraint/Placeholder;
    invoke-virtual {v6}, Landroid/support/constraint/Placeholder;->getContent()Landroid/view/View;

    move-result-object v3

    .line 1919
    .local v3, "content":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1920
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1921
    invoke-virtual {v3, v9, v12, v11, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1925
    .end local v1    # "b":I
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "content":Landroid/view/View;
    .end local v6    # "holder":Landroid/support/constraint/Placeholder;
    .end local v9    # "l":I
    .end local v10    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v11    # "r":I
    .end local v12    # "t":I
    .end local v13    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1926
    .local v5, "helperCount":I
    if-lez v5, :cond_3

    .line 1927
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_3

    .line 1928
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintHelper;

    .line 1929
    .local v4, "helper":Landroid/support/constraint/ConstraintHelper;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/support/constraint/ConstraintHelper;->updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 1927
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1932
    .end local v4    # "helper":Landroid/support/constraint/ConstraintHelper;
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 50
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 1506
    .local v36, "time":J
    const/4 v4, 0x0

    .line 1507
    .local v4, "REMEASURES_A":I
    const/4 v5, 0x0

    .line 1513
    .local v5, "REMEASURES_B":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v40

    .line 1514
    .local v40, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v42

    .line 1515
    .local v42, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 1516
    .local v15, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 1542
    .local v17, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v26

    .line 1543
    .local v26, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v27

    .line 1545
    .local v27, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    .line 1550
    sget v44, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v45, 0x11

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_0

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutDirection()I

    move-result v44

    const/16 v46, 0x1

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_d

    const/16 v44, 0x1

    :goto_0
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 1554
    :cond_0
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v34

    .line 1556
    .local v34, "startingWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v33

    .line 1558
    .local v33, "startingHeight":I
    const/16 v31, 0x0

    .line 1559
    .local v31, "runAnalyzer":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1

    .line 1560
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1561
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    .line 1562
    const/16 v31, 0x1

    .line 1565
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x8

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_e

    const/16 v25, 0x1

    .line 1567
    .local v25, "optimiseDimensions":Z
    :goto_1
    if-eqz v25, :cond_f

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->preOptimize()V

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeForDimensions(II)V

    .line 1570
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureDimensions(II)V

    .line 1574
    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updatePostMeasures()V

    .line 1582
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v44

    if-lez v44, :cond_2

    if-eqz v31, :cond_2

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/Analyzer;->determineGroups(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 1585
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    move/from16 v44, v0

    if-eqz v44, :cond_6

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    move/from16 v44, v0

    if-eqz v44, :cond_4

    const/high16 v44, -0x80000000

    move/from16 v0, v40

    move/from16 v1, v44

    if-ne v0, v1, :cond_4

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v42

    if-ge v0, v1, :cond_3

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1590
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    sget-object v45, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1591
    invoke-virtual/range {v44 .. v45}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1593
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    move/from16 v44, v0

    if-eqz v44, :cond_6

    const/high16 v44, -0x80000000

    move/from16 v0, v44

    if-ne v15, v0, :cond_6

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1597
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    sget-object v45, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1598
    invoke-virtual/range {v44 .. v45}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1602
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x20

    const/16 v45, 0x20

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_a

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v39

    .line 1604
    .local v39, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v14

    .line 1605
    .local v14, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v39

    if-eq v0, v1, :cond_7

    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v40

    move/from16 v1, v44

    if-ne v0, v1, :cond_7

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 1608
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    move/from16 v44, v0

    move/from16 v0, v44

    if-eq v0, v14, :cond_8

    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v44

    if-ne v15, v0, :cond_8

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-static {v0, v1, v14}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 1611
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    move/from16 v44, v0

    if-eqz v44, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v42

    if-le v0, v1, :cond_9

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 1614
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    move/from16 v44, v0

    if-eqz v44, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v17

    if-le v0, v1, :cond_a

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 1620
    .end local v14    # "height":I
    .end local v39    # "width":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v44

    if-lez v44, :cond_b

    .line 1621
    const-string v44, "First pass"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1623
    :cond_b
    const/4 v10, 0x0

    .line 1626
    .local v10, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 1628
    .local v32, "sizeDependentWidgetsCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v44

    add-int v16, v27, v44

    .line 1629
    .local v16, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v44

    add-int v41, v26, v44

    .line 1635
    .local v41, "widthPadding":I
    if-lez v32, :cond_27

    .line 1636
    const/16 v24, 0x0

    .line 1637
    .local v24, "needSolverPass":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v44

    sget-object v45, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_10

    const/4 v12, 0x1

    .line 1639
    .local v12, "containerWrapWidth":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v44

    sget-object v45, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_11

    const/4 v11, 0x1

    .line 1641
    .local v11, "containerWrapHeight":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v44

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    move/from16 v45, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 1642
    .local v23, "minWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v44

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    move/from16 v45, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1643
    .local v22, "minHeight":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v32

    if-ge v0, v1, :cond_1e

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1645
    .local v38, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1646
    .local v9, "child":Landroid/view/View;
    if-nez v9, :cond_12

    .line 1643
    :cond_c
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 1551
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "childState":I
    .end local v11    # "containerWrapHeight":Z
    .end local v12    # "containerWrapWidth":Z
    .end local v16    # "heightPadding":I
    .end local v19    # "i":I
    .end local v22    # "minHeight":I
    .end local v23    # "minWidth":I
    .end local v24    # "needSolverPass":Z
    .end local v25    # "optimiseDimensions":Z
    .end local v31    # "runAnalyzer":Z
    .end local v32    # "sizeDependentWidgetsCount":I
    .end local v33    # "startingHeight":I
    .end local v34    # "startingWidth":I
    .end local v38    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v41    # "widthPadding":I
    :cond_d
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 1565
    .restart local v31    # "runAnalyzer":Z
    .restart local v33    # "startingHeight":I
    .restart local v34    # "startingWidth":I
    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 1572
    .restart local v25    # "optimiseDimensions":Z
    :cond_f
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureChildren(II)V

    goto/16 :goto_2

    .line 1637
    .restart local v10    # "childState":I
    .restart local v16    # "heightPadding":I
    .restart local v24    # "needSolverPass":Z
    .restart local v32    # "sizeDependentWidgetsCount":I
    .restart local v41    # "widthPadding":I
    :cond_10
    const/4 v12, 0x0

    goto :goto_3

    .line 1639
    .restart local v12    # "containerWrapWidth":Z
    :cond_11
    const/4 v11, 0x0

    goto :goto_4

    .line 1649
    .restart local v9    # "child":Landroid/view/View;
    .restart local v11    # "containerWrapHeight":Z
    .restart local v19    # "i":I
    .restart local v22    # "minHeight":I
    .restart local v23    # "minWidth":I
    .restart local v38    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_12
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1650
    .local v28, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    move/from16 v44, v0

    if-nez v44, :cond_c

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v44, v0

    if-nez v44, :cond_c

    .line 1653
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v44

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_c

    .line 1657
    if-eqz v25, :cond_13

    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v44

    if-eqz v44, :cond_13

    .line 1658
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v44

    if-nez v44, :cond_c

    .line 1661
    :cond_13
    const/16 v43, 0x0

    .line 1662
    .local v43, "widthSpec":I
    const/16 v18, 0x0

    .line 1664
    .local v18, "heightSpec":I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v44, v0

    const/16 v45, -0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1c

    .line 1665
    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v44, v0

    move/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v43

    .line 1669
    :goto_7
    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v44, v0

    const/16 v45, -0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1d

    .line 1670
    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v44, v0

    move/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1676
    :goto_8
    move/from16 v0, v43

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v44, v0

    if-eqz v44, :cond_14

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    move-wide/from16 v46, v0

    const-wide/16 v48, 0x1

    add-long v46, v46, v48

    move-wide/from16 v0, v46

    move-object/from16 v2, v44

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    .line 1681
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 1683
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1684
    .local v21, "measuredWidth":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    .line 1686
    .local v20, "measuredHeight":I
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-eq v0, v1, :cond_17

    .line 1687
    move-object/from16 v0, v38

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1688
    if-eqz v25, :cond_15

    .line 1689
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1691
    :cond_15
    if-eqz v12, :cond_16

    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v23

    if-le v0, v1, :cond_16

    .line 1692
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v44

    sget-object v45, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1693
    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v45

    add-int v35, v44, v45

    .line 1694
    .local v35, "w":I
    move/from16 v0, v23

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 1696
    .end local v35    # "w":I
    :cond_16
    const/16 v24, 0x1

    .line 1698
    :cond_17
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v44

    move/from16 v0, v20

    move/from16 v1, v44

    if-eq v0, v1, :cond_1a

    .line 1699
    move-object/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1700
    if-eqz v25, :cond_18

    .line 1701
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1703
    :cond_18
    if-eqz v11, :cond_19

    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v22

    if-le v0, v1, :cond_19

    .line 1704
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v44

    sget-object v45, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1705
    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v45

    add-int v13, v44, v45

    .line 1706
    .local v13, "h":I
    move/from16 v0, v22

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1708
    .end local v13    # "h":I
    :cond_19
    const/16 v24, 0x1

    .line 1710
    :cond_1a
    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1b

    .line 1711
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v8

    .line 1712
    .local v8, "baseline":I
    const/16 v44, -0x1

    move/from16 v0, v44

    if-eq v8, v0, :cond_1b

    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v44

    move/from16 v0, v44

    if-eq v8, v0, :cond_1b

    .line 1713
    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1714
    const/16 v24, 0x1

    .line 1718
    .end local v8    # "baseline":I
    :cond_1b
    sget v44, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v45, 0xb

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_c

    .line 1719
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v44

    move/from16 v0, v44

    invoke-static {v10, v0}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v10

    goto/16 :goto_6

    .line 1667
    .end local v20    # "measuredHeight":I
    .end local v21    # "measuredWidth":I
    :cond_1c
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v44

    const/high16 v45, 0x40000000    # 2.0f

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v43

    goto/16 :goto_7

    .line 1672
    :cond_1d
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v44

    const/high16 v45, 0x40000000    # 2.0f

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    goto/16 :goto_8

    .line 1722
    .end local v9    # "child":Landroid/view/View;
    .end local v18    # "heightSpec":I
    .end local v28    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v38    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v43    # "widthSpec":I
    :cond_1e
    if-eqz v24, :cond_22

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1725
    if-eqz v25, :cond_1f

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1728
    :cond_1f
    const-string v44, "2nd pass"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1729
    const/16 v24, 0x0

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v23

    if-ge v0, v1, :cond_20

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1732
    const/16 v24, 0x1

    .line 1734
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v22

    if-ge v0, v1, :cond_21

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1736
    const/16 v24, 0x1

    .line 1738
    :cond_21
    if-eqz v24, :cond_22

    .line 1739
    const-string v44, "3rd pass"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1742
    :cond_22
    const/16 v19, 0x0

    :goto_9
    move/from16 v0, v19

    move/from16 v1, v32

    if-ge v0, v1, :cond_27

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1744
    .restart local v38    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1745
    .restart local v9    # "child":Landroid/view/View;
    if-nez v9, :cond_24

    .line 1742
    :cond_23
    :goto_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 1748
    :cond_24
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v44

    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_25

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v44

    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_23

    .line 1749
    :cond_25
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v44

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_23

    .line 1750
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v44

    const/high16 v45, 0x40000000    # 2.0f

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v43

    .line 1751
    .restart local v43    # "widthSpec":I
    invoke-virtual/range {v38 .. v38}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v44

    const/high16 v45, 0x40000000    # 2.0f

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 1752
    .restart local v18    # "heightSpec":I
    move/from16 v0, v43

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v44, v0

    if-eqz v44, :cond_26

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    move-wide/from16 v46, v0

    const-wide/16 v48, 0x1

    add-long v46, v46, v48

    move-wide/from16 v0, v46

    move-object/from16 v2, v44

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    .line 1757
    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1762
    .end local v9    # "child":Landroid/view/View;
    .end local v11    # "containerWrapHeight":Z
    .end local v12    # "containerWrapWidth":Z
    .end local v18    # "heightSpec":I
    .end local v19    # "i":I
    .end local v22    # "minHeight":I
    .end local v23    # "minWidth":I
    .end local v24    # "needSolverPass":Z
    .end local v38    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v43    # "widthSpec":I
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v44

    add-int v7, v44, v41

    .line 1763
    .local v7, "androidLayoutWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v44

    add-int v6, v44, v16

    .line 1765
    .local v6, "androidLayoutHeight":I
    sget v44, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v45, 0xb

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_2a

    .line 1766
    move/from16 v0, p1

    invoke-static {v7, v0, v10}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v30

    .line 1767
    .local v30, "resolvedWidthSize":I
    shl-int/lit8 v44, v10, 0x10

    move/from16 v0, p2

    move/from16 v1, v44

    invoke-static {v6, v0, v1}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v29

    .line 1769
    .local v29, "resolvedHeightSize":I
    const v44, 0xffffff

    and-int v30, v30, v44

    .line 1770
    const v44, 0xffffff

    and-int v29, v29, v44

    .line 1771
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 1772
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v44

    if-eqz v44, :cond_28

    .line 1774
    const/high16 v44, 0x1000000

    or-int v30, v30, v44

    .line 1776
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v44

    if-eqz v44, :cond_29

    .line 1777
    const/high16 v44, 0x1000000

    or-int v29, v29, v44

    .line 1779
    :cond_29
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1780
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1781
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 1795
    .end local v29    # "resolvedHeightSize":I
    .end local v30    # "resolvedWidthSize":I
    :goto_b
    return-void

    .line 1783
    :cond_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1784
    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1785
    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    goto :goto_b
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 656
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 657
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 659
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 660
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v3, p1, Landroid/support/constraint/Guideline;

    if-eqz v3, :cond_1

    .line 661
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v3, :cond_1

    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 663
    .local v1, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    new-instance v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 664
    iput-boolean v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 665
    iget-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 668
    .end local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_1
    instance-of v3, p1, Landroid/support/constraint/ConstraintHelper;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 669
    check-cast v0, Landroid/support/constraint/ConstraintHelper;

    .line 670
    .local v0, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintHelper;->validateParams()V

    .line 671
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 672
    .restart local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iput-boolean v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 673
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 674
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    .end local v0    # "helper":Landroid/support/constraint/ConstraintHelper;
    .end local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_2
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 679
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 686
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 687
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 689
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 690
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 691
    .local v0, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 692
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 693
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 694
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 695
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 645
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 646
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 647
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 649
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 3172
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3175
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 3176
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 3177
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 3178
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 3179
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 3180
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 3181
    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/ConstraintSet;)V
    .locals 0
    .param p1, "set"    # Landroid/support/constraint/ConstraintSet;

    .prologue
    .line 2004
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 2005
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "value2"    # Ljava/lang/Object;

    .prologue
    .line 542
    if-nez p1, :cond_2

    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_2

    instance-of v3, p3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 543
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 544
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    :cond_0
    move-object v2, p2

    .line 546
    check-cast v2, Ljava/lang/String;

    .line 547
    .local v2, "name":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 548
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 549
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 551
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value2":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 552
    .local v0, "id":I
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .end local v0    # "id":I
    .end local v1    # "index":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 589
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 590
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 591
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 762
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    .line 767
    :goto_0
    return-void

    .line 765
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 766
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 749
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    .line 754
    :goto_0
    return-void

    .line 752
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 753
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 716
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 720
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 703
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 707
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setOptimizationLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1955
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 1956
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 3189
    const/4 v0, 0x0

    return v0
.end method

.method protected solveLinearSystem(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1860
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 1861
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v2, v0, Landroid/support/constraint/solver/Metrics;->resolutions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/solver/Metrics;->resolutions:J

    .line 1864
    :cond_0
    return-void
.end method
