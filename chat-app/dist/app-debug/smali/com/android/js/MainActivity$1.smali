.class Lcom/android/js/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/js/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/js/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/js/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/js/MainActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/js/MainActivity$1;->this$0:Lcom/android/js/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/js/MainActivity$1;->this$0:Lcom/android/js/MainActivity;

    invoke-virtual {v3}, Lcom/android/js/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/myapp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "nodeDir":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/js/MainActivity$1;->this$0:Lcom/android/js/MainActivity;

    invoke-virtual {v2}, Lcom/android/js/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/js/Utils;->wasAPKUpdated(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "nodeDirReference":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/js/Utils;->deleteFolderRecursively(Ljava/io/File;)Z

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/android/js/MainActivity$1;->this$0:Lcom/android/js/MainActivity;

    invoke-virtual {v2}, Lcom/android/js/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "myapp"

    invoke-static {v2, v3, v0}, Lcom/android/js/Utils;->copyAssetFolder(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    iget-object v2, p0, Lcom/android/js/MainActivity$1;->this$0:Lcom/android/js/MainActivity;

    invoke-virtual {v2}, Lcom/android/js/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/js/Utils;->saveLastUpdateTime(Landroid/content/Context;)V

    .line 77
    .end local v1    # "nodeDirReference":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/android/js/MainActivity$1;->this$0:Lcom/android/js/MainActivity;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "node"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/main.js"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/js/MainActivity;->startNodeWithArguments([Ljava/lang/String;)Ljava/lang/Integer;

    .line 80
    return-void
.end method
