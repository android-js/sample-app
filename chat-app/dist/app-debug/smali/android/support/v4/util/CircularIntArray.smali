.class public final Landroid/support/v4/util/CircularIntArray;
.super Ljava/lang/Object;
.source "CircularIntArray.java"


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[I

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/support/v4/util/CircularIntArray;-><init>(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-ge p1, v2, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "capacity must be >= 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-le p1, v1, :cond_1

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "capacity must be <= 2^30"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 71
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 76
    .local v0, "arrayCapacity":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    .line 77
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    .line 78
    return-void

    .line 73
    .end local v0    # "arrayCapacity":I
    :cond_2
    move v0, p1

    .restart local v0    # "arrayCapacity":I
    goto :goto_0
.end method

.method private doubleCapacity()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 31
    iget-object v4, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    array-length v1, v4

    .line 32
    .local v1, "n":I
    iget v4, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    sub-int v3, v1, v4

    .line 33
    .local v3, "r":I
    shl-int/lit8 v2, v1, 0x1

    .line 34
    .local v2, "newCapacity":I
    if-gez v2, :cond_0

    .line 35
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Max array capacity exceeded"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 37
    :cond_0
    new-array v0, v2, [I

    .line 38
    .local v0, "a":[I
    iget-object v4, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v5, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v4, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v5, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iput-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    .line 41
    iput v6, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 42
    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 43
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    .line 44
    return-void
.end method


# virtual methods
.method public addFirst(I)V
    .locals 2
    .param p1, "e"    # I

    .prologue
    .line 85
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 86
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    aput p1, v0, v1

    .line 87
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_0

    .line 88
    invoke-direct {p0}, Landroid/support/v4/util/CircularIntArray;->doubleCapacity()V

    .line 90
    :cond_0
    return-void
.end method

.method public addLast(I)V
    .locals 2
    .param p1, "e"    # I

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    aput p1, v0, v1

    .line 98
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 99
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    if-ne v0, v1, :cond_0

    .line 100
    invoke-direct {p0}, Landroid/support/v4/util/CircularIntArray;->doubleCapacity()V

    .line 102
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 134
    return-void
.end method

.method public get(I)I
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 197
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 198
    :cond_1
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public getFirst()I
    .locals 2

    .prologue
    .line 176
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    aget v0, v0, v1

    return v0
.end method

.method public getLast()I
    .locals 3

    .prologue
    .line 186
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 187
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popFirst()I
    .locals 3

    .prologue
    .line 110
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 111
    :cond_0
    iget-object v1, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    aget v0, v1, v2

    .line 112
    .local v0, "result":I
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 113
    return v0
.end method

.method public popLast()I
    .locals 4

    .prologue
    .line 122
    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v3, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 123
    :cond_0
    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int v1, v2, v3

    .line 124
    .local v1, "t":I
    iget-object v2, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    aget v0, v2, v1

    .line 125
    .local v0, "result":I
    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 126
    return v0
.end method

.method public removeFromEnd(I)V
    .locals 2
    .param p1, "numOfElements"    # I

    .prologue
    .line 161
    if-gtz p1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 165
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 167
    :cond_1
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    sub-int/2addr v0, p1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    goto :goto_0
.end method

.method public removeFromStart(I)V
    .locals 2
    .param p1, "numOfElements"    # I

    .prologue
    .line 144
    if-gtz p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 150
    :cond_1
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    return v0
.end method
