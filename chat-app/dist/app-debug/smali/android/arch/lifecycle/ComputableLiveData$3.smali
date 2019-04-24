.class Landroid/arch/lifecycle/ComputableLiveData$3;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ComputableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/ComputableLiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/ComputableLiveData;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/lifecycle/ComputableLiveData;

    .prologue
    .line 123
    .local p0, "this":Landroid/arch/lifecycle/ComputableLiveData$3;, "Landroid/arch/lifecycle/ComputableLiveData$3;"
    iput-object p1, p0, Landroid/arch/lifecycle/ComputableLiveData$3;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Landroid/arch/lifecycle/ComputableLiveData$3;, "Landroid/arch/lifecycle/ComputableLiveData$3;"
    iget-object v1, p0, Landroid/arch/lifecycle/ComputableLiveData$3;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/ComputableLiveData;->access$300(Landroid/arch/lifecycle/ComputableLiveData;)Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->hasActiveObservers()Z

    move-result v0

    .line 128
    .local v0, "isActive":Z
    iget-object v1, p0, Landroid/arch/lifecycle/ComputableLiveData$3;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/ComputableLiveData;->access$200(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Landroid/arch/lifecycle/ComputableLiveData$3;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/ComputableLiveData;->access$000(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Landroid/arch/lifecycle/ComputableLiveData$3;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    iget-object v2, v2, Landroid/arch/lifecycle/ComputableLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    :cond_0
    return-void
.end method
