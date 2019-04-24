.class public Landroid/arch/lifecycle/Lifecycling;
.super Ljava/lang/Object;
.source "Lifecycling.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final GENERATED_CALLBACK:I = 0x2

.field private static final REFLECTIVE_CALLBACK:I = 0x1

.field private static sCallbackCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sClassToAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/arch/lifecycle/GeneratedAdapter;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroid/arch/lifecycle/GeneratedAdapter;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/arch/lifecycle/GeneratedAdapter;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/arch/lifecycle/GeneratedAdapter;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;"
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/GeneratedAdapter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 84
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/arch/lifecycle/GeneratedAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 93
    .local v1, "aPackage":Ljava/lang/Package;
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "fullPackage":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .end local v6    # "name":Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Landroid/arch/lifecycle/Lifecycling;->getAdapterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "adapterName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    .end local v2    # "adapterName":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/arch/lifecycle/GeneratedAdapter;>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    .line 102
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 103
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_0

    .line 104
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 108
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/arch/lifecycle/GeneratedAdapter;>;"
    .end local v1    # "aPackage":Ljava/lang/Package;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;"
    .end local v5    # "fullPackage":Ljava/lang/String;
    :cond_0
    :goto_3
    return-object v3

    .line 94
    .restart local v1    # "aPackage":Ljava/lang/Package;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 96
    .restart local v5    # "fullPackage":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 100
    .end local v6    # "name":Ljava/lang/String;
    .restart local v2    # "adapterName":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_2

    .line 107
    .end local v1    # "aPackage":Ljava/lang/Package;
    .end local v2    # "adapterName":Ljava/lang/String;
    .end local v5    # "fullPackage":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 108
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const/4 v3, 0x0

    goto :goto_3

    .line 109
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 111
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static getAdapterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_LifecycleAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCallback(Ljava/lang/Object;)Landroid/arch/lifecycle/GenericLifecycleObserver;
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    instance-of v6, p0, Landroid/arch/lifecycle/FullLifecycleObserver;

    if-eqz v6, :cond_0

    .line 49
    new-instance v6, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;

    check-cast p0, Landroid/arch/lifecycle/FullLifecycleObserver;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v6, p0}, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroid/arch/lifecycle/FullLifecycleObserver;)V

    move-object p0, v6

    .line 72
    .local v4, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "type":I
    :goto_0
    return-object p0

    .line 52
    .end local v4    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "type":I
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v6, p0, Landroid/arch/lifecycle/GenericLifecycleObserver;

    if-eqz v6, :cond_1

    .line 53
    check-cast p0, Landroid/arch/lifecycle/GenericLifecycleObserver;

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 57
    .restart local v4    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Landroid/arch/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v5

    .line 58
    .restart local v5    # "type":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 59
    sget-object v6, Landroid/arch/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    .line 60
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 61
    .local v1, "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 62
    const/4 v6, 0x0

    .line 63
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    .line 62
    invoke-static {v6, p0}, Landroid/arch/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroid/arch/lifecycle/GeneratedAdapter;

    move-result-object v2

    .line 64
    .local v2, "generatedAdapter":Landroid/arch/lifecycle/GeneratedAdapter;
    new-instance p0, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;-><init>(Landroid/arch/lifecycle/GeneratedAdapter;)V

    goto :goto_0

    .line 66
    .end local v2    # "generatedAdapter":Landroid/arch/lifecycle/GeneratedAdapter;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Landroid/arch/lifecycle/GeneratedAdapter;

    .line 67
    .local v0, "adapters":[Landroid/arch/lifecycle/GeneratedAdapter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 68
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    invoke-static {v6, p0}, Landroid/arch/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroid/arch/lifecycle/GeneratedAdapter;

    move-result-object v6

    aput-object v6, v0, v3

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 70
    :cond_3
    new-instance p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroid/arch/lifecycle/GeneratedAdapter;)V

    goto :goto_0

    .line 72
    .end local v0    # "adapters":[Landroid/arch/lifecycle/GeneratedAdapter;
    .end local v1    # "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;>;"
    .end local v3    # "i":I
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_4
    new-instance v6, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v6, p0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    move-object p0, v6

    goto :goto_0
.end method

.method private static getObserverConstructorType(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Landroid/arch/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Landroid/arch/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 121
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-static {p0}, Landroid/arch/lifecycle/Lifecycling;->resolveObserverCallbackType(Ljava/lang/Class;)I

    move-result v0

    .line 120
    .local v0, "type":I
    sget-object v1, Landroid/arch/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static isLifecycleParent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    const-class v0, Landroid/arch/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static resolveObserverCallbackType(Ljava/lang/Class;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 126
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move v5, v6

    .line 168
    :goto_0
    return v5

    .line 130
    :cond_0
    invoke-static {p0}, Landroid/arch/lifecycle/Lifecycling;->generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 131
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;"
    if-eqz v1, :cond_1

    .line 132
    sget-object v5, Landroid/arch/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    .line 133
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 132
    invoke-interface {v5, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v7

    .line 134
    goto :goto_0

    .line 137
    :cond_1
    sget-object v5, Landroid/arch/lifecycle/ClassesInfoCache;->sInstance:Landroid/arch/lifecycle/ClassesInfoCache;

    invoke-virtual {v5, p0}, Landroid/arch/lifecycle/ClassesInfoCache;->hasLifecycleMethods(Ljava/lang/Class;)Z

    move-result v2

    .line 138
    .local v2, "hasLifecycleMethods":Z
    if-eqz v2, :cond_2

    move v5, v6

    .line 139
    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 143
    .local v4, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 144
    .local v0, "adapterConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;>;"
    invoke-static {v4}, Landroid/arch/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    invoke-static {v4}, Landroid/arch/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v5, v6

    .line 146
    goto :goto_0

    .line 148
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "adapterConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;>;"
    sget-object v5, Landroid/arch/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    .restart local v0    # "adapterConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;>;"
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v9

    array-length v10, v9

    const/4 v5, 0x0

    move v8, v5

    :goto_1
    if-ge v8, v10, :cond_8

    aget-object v3, v9, v8

    .line 152
    .local v3, "intrface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Landroid/arch/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 151
    :goto_2
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_1

    .line 155
    :cond_5
    invoke-static {v3}, Landroid/arch/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v6

    .line 156
    goto :goto_0

    .line 158
    :cond_6
    if-nez v0, :cond_7

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "adapterConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .restart local v0    # "adapterConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroid/arch/lifecycle/GeneratedAdapter;>;>;"
    :cond_7
    sget-object v5, Landroid/arch/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 163
    .end local v3    # "intrface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    if-eqz v0, :cond_9

    .line 164
    sget-object v5, Landroid/arch/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-interface {v5, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v7

    .line 165
    goto :goto_0

    :cond_9
    move v5, v6

    .line 168
    goto :goto_0
.end method
