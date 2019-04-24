.class Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawableCompat.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameInterpolator"
.end annotation


# instance fields
.field private mFrameTimes:[I

.field private mFrames:I

.field private mTotalDuration:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I

    .line 733
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .param p1, "input"    # F

    .prologue
    .line 758
    iget v6, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 759
    .local v0, "elapsed":I
    iget v1, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrames:I

    .line 760
    .local v1, "frameCount":I
    iget-object v3, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    .line 762
    .local v3, "frameTimes":[I
    move v5, v0

    .line 763
    .local v5, "remaining":I
    const/4 v4, 0x0

    .line 764
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    aget v6, v3, v4

    if-lt v5, v6, :cond_0

    .line 765
    aget v6, v3, v4

    sub-int/2addr v5, v6

    .line 766
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 770
    :cond_0
    if-ge v4, v1, :cond_1

    .line 771
    int-to-float v6, v5

    iget v7, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 775
    .local v2, "frameElapsed":F
    :goto_1
    int-to-float v6, v4

    int-to-float v7, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v2

    return v6

    .line 773
    .end local v2    # "frameElapsed":F
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "frameElapsed":F
    goto :goto_1
.end method

.method getTotalDuration()I
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    return v0
.end method

.method updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    .prologue
    .line 736
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 737
    .local v1, "frameCount":I
    iput v1, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrames:I

    .line 738
    iget-object v5, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    array-length v5, v5

    if-ge v5, v1, :cond_1

    .line 739
    :cond_0
    new-array v5, v1, [I

    iput-object v5, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    .line 741
    :cond_1
    iget-object v2, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mFrameTimes:[I

    .line 742
    .local v2, "frameTimes":[I
    const/4 v4, 0x0

    .line 743
    .local v4, "totalDuration":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 744
    if-eqz p2, :cond_2

    sub-int v5, v1, v3

    add-int/lit8 v5, v5, -0x1

    :goto_1
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v0

    .line 745
    .local v0, "duration":I
    aput v0, v2, v3

    .line 746
    add-int/2addr v4, v0

    .line 743
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "duration":I
    :cond_2
    move v5, v3

    .line 744
    goto :goto_1

    .line 748
    :cond_3
    iput v4, p0, Landroid/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->mTotalDuration:I

    .line 749
    return v4
.end method
