.class abstract Landroid/support/graphics/drawable/VectorDrawableCompat$VObject;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VObject"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/graphics/drawable/VectorDrawableCompat$1;

    .prologue
    .line 1408
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VObject;-><init>()V

    return-void
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    .prologue
    .line 1415
    const/4 v0, 0x0

    return v0
.end method

.method public onStateChanged([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 1423
    const/4 v0, 0x0

    return v0
.end method
