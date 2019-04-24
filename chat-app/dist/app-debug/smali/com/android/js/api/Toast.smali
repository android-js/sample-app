.class public Lcom/android/js/api/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 7
    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    const/4 p2, 0x1

    .line 8
    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 9
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 10
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 11
    return-void
.end method
