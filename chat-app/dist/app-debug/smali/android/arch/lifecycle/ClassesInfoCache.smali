.class Landroid/arch/lifecycle/ClassesInfoCache;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;,
        Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    }
.end annotation


# static fields
.field private static final CALL_TYPE_NO_ARG:I = 0x0

.field private static final CALL_TYPE_PROVIDER:I = 0x1

.field private static final CALL_TYPE_PROVIDER_WITH_EVENT:I = 0x2

.field static sInstance:Landroid/arch/lifecycle/ClassesInfoCache;


# instance fields
.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasLifecycleMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/arch/lifecycle/ClassesInfoCache;

    invoke-direct {v0}, Landroid/arch/lifecycle/ClassesInfoCache;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/ClassesInfoCache;->sInstance:Landroid/arch/lifecycle/ClassesInfoCache;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    return-void
.end method

.method private createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    .locals 24
    .param p1, "klass"    # Ljava/lang/Class;
    .param p2, "declaredMethods"    # [Ljava/lang/reflect/Method;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 104
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v18

    .line 105
    .local v18, "superclass":Ljava/lang/Class;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v8, "handlerToEvent":Ljava/util/Map;, "Ljava/util/Map<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    if-eqz v18, :cond_0

    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v17

    .line 108
    .local v17, "superInfo":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    if-eqz v17, :cond_0

    .line 109
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 113
    .end local v17    # "superInfo":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v11

    .line 114
    .local v11, "interfaces":[Ljava/lang/Class;
    array-length v0, v11

    move/from16 v22, v0

    const/16 v19, 0x0

    move/from16 v21, v19

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    aget-object v12, v11, v21

    .line 115
    .local v12, "intrfc":Ljava/lang/Class;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/arch/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    move-object/from16 v19, v0

    .line 116
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 115
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 117
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/arch/lifecycle/Lifecycle$Event;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v8, v1, v2, v3}, Landroid/arch/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    goto :goto_1

    .line 114
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    :cond_1
    add-int/lit8 v19, v21, 0x1

    move/from16 v21, v19

    goto :goto_0

    .line 121
    .end local v12    # "intrfc":Ljava/lang/Class;
    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v15, p2

    .line 122
    .local v15, "methods":[Ljava/lang/reflect/Method;
    :goto_2
    const/4 v9, 0x0

    .line 123
    .local v9, "hasLifecycleMethods":Z
    array-length v0, v15

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    aget-object v13, v15, v19

    .line 124
    .local v13, "method":Ljava/lang/reflect/Method;
    const-class v21, Landroid/arch/lifecycle/OnLifecycleEvent;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Landroid/arch/lifecycle/OnLifecycleEvent;

    .line 125
    .local v4, "annotation":Landroid/arch/lifecycle/OnLifecycleEvent;
    if-nez v4, :cond_4

    .line 123
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 121
    .end local v4    # "annotation":Landroid/arch/lifecycle/OnLifecycleEvent;
    .end local v9    # "hasLifecycleMethods":Z
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .end local v15    # "methods":[Ljava/lang/reflect/Method;
    :cond_3
    invoke-direct/range {p0 .. p1}, Landroid/arch/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v15

    goto :goto_2

    .line 128
    .restart local v4    # "annotation":Landroid/arch/lifecycle/OnLifecycleEvent;
    .restart local v9    # "hasLifecycleMethods":Z
    .restart local v13    # "method":Ljava/lang/reflect/Method;
    .restart local v15    # "methods":[Ljava/lang/reflect/Method;
    :cond_4
    const/4 v9, 0x1

    .line 129
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v16

    .line 130
    .local v16, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 131
    .local v5, "callType":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_5

    .line 132
    const/4 v5, 0x1

    .line 133
    const/16 v21, 0x0

    aget-object v21, v16, v21

    const-class v22, Landroid/arch/lifecycle/LifecycleOwner;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 134
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 138
    :cond_5
    invoke-interface {v4}, Landroid/arch/lifecycle/OnLifecycleEvent;->value()Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v7

    .line 140
    .local v7, "event":Landroid/arch/lifecycle/Lifecycle$Event;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    .line 141
    const/4 v5, 0x2

    .line 142
    const/16 v21, 0x1

    aget-object v21, v16, v21

    const-class v22, Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 143
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "invalid parameter type. second arg must be an event"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 146
    :cond_6
    sget-object v21, Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;

    move-object/from16 v0, v21

    if-eq v7, v0, :cond_7

    .line 147
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Second arg is supported only for ON_ANY value"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 151
    :cond_7
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 152
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "cannot have more than 2 params"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 154
    :cond_8
    new-instance v14, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;

    invoke-direct {v14, v5, v13}, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;-><init>(ILjava/lang/reflect/Method;)V

    .line 155
    .local v14, "methodReference":Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v14, v7, v1}, Landroid/arch/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    goto :goto_4

    .line 157
    .end local v4    # "annotation":Landroid/arch/lifecycle/OnLifecycleEvent;
    .end local v5    # "callType":I
    .end local v7    # "event":Landroid/arch/lifecycle/Lifecycle$Event;
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "methodReference":Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;
    .end local v16    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_9
    new-instance v10, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    invoke-direct {v10, v8}, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;-><init>(Ljava/util/Map;)V

    .line 158
    .local v10, "info":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/arch/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/arch/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object v10
.end method

.method private getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "klass"    # Ljava/lang/Class;

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private verifyAndPutHandler(Ljava/util/Map;Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V
    .locals 5
    .param p2, "newHandler"    # Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;
    .param p3, "newEvent"    # Landroid/arch/lifecycle/Lifecycle$Event;
    .param p4, "klass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            ">;",
            "Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "handlers":Ljava/util/Map;, "Ljava/util/Map<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/Lifecycle$Event;

    .line 91
    .local v0, "event":Landroid/arch/lifecycle/Lifecycle$Event;
    if-eqz v0, :cond_0

    if-eq p3, v0, :cond_0

    .line 92
    iget-object v1, p2, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    .line 93
    .local v1, "method":Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 94
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already declared with different @OnLifecycleEvent value: previous value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    if-nez v0, :cond_1

    .line 99
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method getInfo(Ljava/lang/Class;)Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    .locals 3
    .param p1, "klass"    # Ljava/lang/Class;

    .prologue
    .line 80
    iget-object v2, p0, Landroid/arch/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 81
    .local v0, "existing":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 85
    .end local v0    # "existing":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    .local v1, "existing":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    :goto_0
    return-object v1

    .line 84
    .end local v1    # "existing":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    .restart local v0    # "existing":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/arch/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v0

    move-object v1, v0

    .line 85
    .end local v0    # "existing":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    .restart local v1    # "existing":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    goto :goto_0
.end method

.method hasLifecycleMethods(Ljava/lang/Class;)Z
    .locals 7
    .param p1, "klass"    # Ljava/lang/Class;

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v4, p0, Landroid/arch/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    iget-object v3, p0, Landroid/arch/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 64
    :goto_0
    return v3

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 50
    .local v2, "methods":[Ljava/lang/reflect/Method;
    array-length v5, v2

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 51
    .local v1, "method":Ljava/lang/reflect/Method;
    const-class v6, Landroid/arch/lifecycle/OnLifecycleEvent;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/OnLifecycleEvent;

    .line 52
    .local v0, "annotation":Landroid/arch/lifecycle/OnLifecycleEvent;
    if-eqz v0, :cond_1

    .line 59
    invoke-direct {p0, p1, v2}, Landroid/arch/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 60
    const/4 v3, 0x1

    goto :goto_0

    .line 50
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 63
    .end local v0    # "annotation":Landroid/arch/lifecycle/OnLifecycleEvent;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_2
    iget-object v4, p0, Landroid/arch/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
