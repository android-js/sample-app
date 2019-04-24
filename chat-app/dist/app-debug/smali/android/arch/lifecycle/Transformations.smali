.class public Landroid/arch/lifecycle/Transformations;
.super Ljava/lang/Object;
.source "Transformations.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static map(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;
    .locals 2
    .param p0    # Landroid/arch/lifecycle/LiveData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/arch/core/util/Function;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData",
            "<TX;>;",
            "Landroid/arch/core/util/Function",
            "<TX;TY;>;)",
            "Landroid/arch/lifecycle/LiveData",
            "<TY;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "source":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TX;>;"
    .local p1, "func":Landroid/arch/core/util/Function;, "Landroid/arch/core/util/Function<TX;TY;>;"
    new-instance v0, Landroid/arch/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MediatorLiveData;-><init>()V

    .line 67
    .local v0, "result":Landroid/arch/lifecycle/MediatorLiveData;, "Landroid/arch/lifecycle/MediatorLiveData<TY;>;"
    new-instance v1, Landroid/arch/lifecycle/Transformations$1;

    invoke-direct {v1, v0, p1}, Landroid/arch/lifecycle/Transformations$1;-><init>(Landroid/arch/lifecycle/MediatorLiveData;Landroid/arch/core/util/Function;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MediatorLiveData;->addSource(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    .line 73
    return-object v0
.end method

.method public static switchMap(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;
    .locals 2
    .param p0    # Landroid/arch/lifecycle/LiveData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/arch/core/util/Function;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData",
            "<TX;>;",
            "Landroid/arch/core/util/Function",
            "<TX;",
            "Landroid/arch/lifecycle/LiveData",
            "<TY;>;>;)",
            "Landroid/arch/lifecycle/LiveData",
            "<TY;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "trigger":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TX;>;"
    .local p1, "func":Landroid/arch/core/util/Function;, "Landroid/arch/core/util/Function<TX;Landroid/arch/lifecycle/LiveData<TY;>;>;"
    new-instance v0, Landroid/arch/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MediatorLiveData;-><init>()V

    .line 128
    .local v0, "result":Landroid/arch/lifecycle/MediatorLiveData;, "Landroid/arch/lifecycle/MediatorLiveData<TY;>;"
    new-instance v1, Landroid/arch/lifecycle/Transformations$2;

    invoke-direct {v1, p1, v0}, Landroid/arch/lifecycle/Transformations$2;-><init>(Landroid/arch/core/util/Function;Landroid/arch/lifecycle/MediatorLiveData;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MediatorLiveData;->addSource(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    .line 151
    return-object v0
.end method
