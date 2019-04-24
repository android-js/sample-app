.class public Landroid/support/constraint/solver/widgets/ResolutionNode;
.super Ljava/lang/Object;
.source "ResolutionNode.java"


# static fields
.field public static final REMOVED:I = 0x2

.field public static final RESOLVED:I = 0x1

.field public static final UNRESOLVED:I


# instance fields
.field dependents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/support/constraint/solver/widgets/ResolutionNode;",
            ">;"
        }
    .end annotation
.end field

.field state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionNode;->state:I

    return-void
.end method


# virtual methods
.method public addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V
    .locals 1
    .param p1, "node"    # Landroid/support/constraint/solver/widgets/ResolutionNode;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public didResolve()V
    .locals 3

    .prologue
    .line 63
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionNode;->state:I

    .line 70
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ResolutionNode;

    .line 71
    .local v0, "node":Landroid/support/constraint/solver/widgets/ResolutionNode;
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ResolutionNode;->resolve()V

    goto :goto_0

    .line 73
    .end local v0    # "node":Landroid/support/constraint/solver/widgets/ResolutionNode;
    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 47
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionNode;->state:I

    .line 48
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ResolutionNode;

    .line 49
    .local v0, "node":Landroid/support/constraint/solver/widgets/ResolutionNode;
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ResolutionNode;->invalidate()V

    goto :goto_0

    .line 51
    .end local v0    # "node":Landroid/support/constraint/solver/widgets/ResolutionNode;
    :cond_0
    return-void
.end method

.method public invalidateAnchors()V
    .locals 3

    .prologue
    .line 54
    instance-of v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v1, :cond_0

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionNode;->state:I

    .line 57
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ResolutionNode;

    .line 58
    .local v0, "node":Landroid/support/constraint/solver/widgets/ResolutionNode;
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ResolutionNode;->invalidateAnchors()V

    goto :goto_0

    .line 60
    .end local v0    # "node":Landroid/support/constraint/solver/widgets/ResolutionNode;
    :cond_1
    return-void
.end method

.method public isResolved()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 76
    iget v1, p0, Landroid/support/constraint/solver/widgets/ResolutionNode;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/support/constraint/solver/widgets/ResolutionDimension;)V
    .locals 0
    .param p1, "resolutionDimension"    # Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .prologue
    .line 85
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionNode;->state:I

    .line 43
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionNode;->dependents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 44
    return-void
.end method

.method public resolve()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
