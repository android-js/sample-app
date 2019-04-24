.class Landroid/arch/lifecycle/MediatorLiveData$Source;
.super Ljava/lang/Object;
.source "MediatorLiveData.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/MediatorLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final mLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData",
            "<TV;>;"
        }
    .end annotation
.end field

.field final mObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer",
            "<TV;>;"
        }
    .end annotation
.end field

.field mVersion:I


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData",
            "<TV;>;",
            "Landroid/arch/lifecycle/Observer",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Landroid/arch/lifecycle/MediatorLiveData$Source;, "Landroid/arch/lifecycle/MediatorLiveData$Source<TV;>;"
    .local p1, "liveData":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TV;>;"
    .local p2, "observer":Landroid/arch/lifecycle/Observer;, "Landroid/arch/lifecycle/Observer<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mVersion:I

    .line 136
    iput-object p1, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Landroid/arch/lifecycle/LiveData;

    .line 137
    iput-object p2, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mObserver:Landroid/arch/lifecycle/Observer;

    .line 138
    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Landroid/arch/lifecycle/MediatorLiveData$Source;, "Landroid/arch/lifecycle/MediatorLiveData$Source<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mVersion:I

    iget-object v1, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->getVersion()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->getVersion()I

    move-result v0

    iput v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mVersion:I

    .line 152
    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mObserver:Landroid/arch/lifecycle/Observer;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 154
    :cond_0
    return-void
.end method

.method plug()V
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Landroid/arch/lifecycle/MediatorLiveData$Source;, "Landroid/arch/lifecycle/MediatorLiveData$Source<TV;>;"
    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/LiveData;->observeForever(Landroid/arch/lifecycle/Observer;)V

    .line 142
    return-void
.end method

.method unplug()V
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Landroid/arch/lifecycle/MediatorLiveData$Source;, "Landroid/arch/lifecycle/MediatorLiveData$Source<TV;>;"
    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 146
    return-void
.end method
