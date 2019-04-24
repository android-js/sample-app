.class Landroid/arch/lifecycle/ComputableLiveData$1;
.super Landroid/arch/lifecycle/LiveData;
.source "ComputableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/LiveData",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/ComputableLiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/ComputableLiveData;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/lifecycle/ComputableLiveData;

    .prologue
    .line 66
    .local p0, "this":Landroid/arch/lifecycle/ComputableLiveData$1;, "Landroid/arch/lifecycle/ComputableLiveData$1;"
    iput-object p1, p0, Landroid/arch/lifecycle/ComputableLiveData$1;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-direct {p0}, Landroid/arch/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Landroid/arch/lifecycle/ComputableLiveData$1;, "Landroid/arch/lifecycle/ComputableLiveData$1;"
    iget-object v0, p0, Landroid/arch/lifecycle/ComputableLiveData$1;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-static {v0}, Landroid/arch/lifecycle/ComputableLiveData;->access$000(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/ComputableLiveData$1;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    iget-object v1, v1, Landroid/arch/lifecycle/ComputableLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method
