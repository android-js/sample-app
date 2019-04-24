.class public Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mGeneratedAdapters:[Landroid/arch/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>([Landroid/arch/lifecycle/GeneratedAdapter;)V
    .locals 0
    .param p1, "generatedAdapters"    # [Landroid/arch/lifecycle/GeneratedAdapter;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroid/arch/lifecycle/GeneratedAdapter;

    .line 32
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 6
    .param p1, "source"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .prologue
    const/4 v2, 0x0

    .line 36
    new-instance v0, Landroid/arch/lifecycle/MethodCallsLogger;

    invoke-direct {v0}, Landroid/arch/lifecycle/MethodCallsLogger;-><init>()V

    .line 37
    .local v0, "logger":Landroid/arch/lifecycle/MethodCallsLogger;
    iget-object v4, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroid/arch/lifecycle/GeneratedAdapter;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 38
    .local v1, "mGenerated":Landroid/arch/lifecycle/GeneratedAdapter;
    invoke-interface {v1, p1, p2, v2, v0}, Landroid/arch/lifecycle/GeneratedAdapter;->callMethods(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;ZLandroid/arch/lifecycle/MethodCallsLogger;)V

    .line 37
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    .end local v1    # "mGenerated":Landroid/arch/lifecycle/GeneratedAdapter;
    :cond_0
    iget-object v3, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroid/arch/lifecycle/GeneratedAdapter;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 41
    .restart local v1    # "mGenerated":Landroid/arch/lifecycle/GeneratedAdapter;
    const/4 v5, 0x1

    invoke-interface {v1, p1, p2, v5, v0}, Landroid/arch/lifecycle/GeneratedAdapter;->callMethods(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;ZLandroid/arch/lifecycle/MethodCallsLogger;)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 43
    .end local v1    # "mGenerated":Landroid/arch/lifecycle/GeneratedAdapter;
    :cond_1
    return-void
.end method
