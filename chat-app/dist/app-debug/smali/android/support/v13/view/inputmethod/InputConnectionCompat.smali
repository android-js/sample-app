.class public final Landroid/support/v13/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    }
.end annotation


# static fields
.field private static final COMMIT_CONTENT_ACTION:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_RESULT_RECEIVER:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field public static final INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 9
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "inputContentInfo"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "flags"    # I
    .param p4, "opts"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 100
    .local v0, "description":Landroid/content/ClipDescription;
    const/4 v3, 0x0

    .line 101
    .local v3, "supported":Z
    invoke-static {p1}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v1, v6, v5

    .line 102
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 103
    const/4 v3, 0x1

    .line 107
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_2

    .line 122
    :goto_1
    return v4

    .line 101
    .restart local v1    # "mimeType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    if-lt v4, v5, :cond_3

    .line 113
    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputContentInfo;

    .line 112
    invoke-interface {p0, v4, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v4

    goto :goto_1

    .line 115
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v2, "params":Landroid/os/Bundle;
    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    invoke-virtual {p2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    invoke-virtual {v2, v4, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-interface {p0, v4, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    goto :goto_1
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onCommitContentListener"    # Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 194
    if-nez p0, :cond_0

    .line 195
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "inputConnection must be non-null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_0
    if-nez p1, :cond_1

    .line 198
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "editorInfo must be non-null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_1
    if-nez p2, :cond_2

    .line 201
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "onCommitContentListener must be non-null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_4

    .line 204
    move-object v1, p2

    .line 205
    .local v1, "listener":Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v2, Landroid/support/v13/view/inputmethod/InputConnectionCompat$1;

    invoke-direct {v2, p0, v4, v1}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    move-object p0, v2

    .line 222
    .end local v1    # "listener":Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    .end local p0    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    :cond_3
    :goto_0
    return-object p0

    .line 217
    .restart local p0    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    :cond_4
    invoke-static {p1}, Landroid/support/v13/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "contentMimeTypes":[Ljava/lang/String;
    array-length v2, v0

    if-eqz v2, :cond_3

    .line 221
    move-object v1, p2

    .line 222
    .restart local v1    # "listener":Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v2, Landroid/support/v13/view/inputmethod/InputConnectionCompat$2;

    invoke-direct {v2, p0, v4, v1}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$2;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    move-object p0, v2

    goto :goto_0
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .locals 13
    .param p0, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "data"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onCommitContentListener"    # Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 58
    const-string v9, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v9, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v11

    .line 61
    :cond_1
    if-eqz p1, :cond_0

    .line 64
    const/4 v8, 0x0

    .line 65
    .local v8, "resultReceiver":Landroid/os/ResultReceiver;
    const/4 v7, 0x0

    .line 67
    .local v7, "result":Z
    :try_start_0
    const-string v9, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/os/ResultReceiver;

    move-object v8, v0

    .line 68
    const-string v9, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 69
    .local v1, "contentUri":Landroid/net/Uri;
    const-string v9, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ClipDescription;

    .line 71
    .local v2, "description":Landroid/content/ClipDescription;
    const-string v9, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 72
    .local v5, "linkUri":Landroid/net/Uri;
    const-string v9, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 73
    .local v3, "flags":I
    const-string v9, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 74
    .local v6, "opts":Landroid/os/Bundle;
    new-instance v4, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    invoke-direct {v4, v1, v2, v5}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 76
    .local v4, "inputContentInfo":Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    invoke-interface {p2, v4, v3, v6}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 78
    if-eqz v8, :cond_2

    .line 79
    if-eqz v7, :cond_3

    move v9, v10

    :goto_1
    invoke-virtual {v8, v9, v12}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2
    move v11, v7

    .line 82
    goto :goto_0

    :cond_3
    move v9, v11

    .line 79
    goto :goto_1

    .line 78
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "description":Landroid/content/ClipDescription;
    .end local v3    # "flags":I
    .end local v4    # "inputContentInfo":Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .end local v5    # "linkUri":Landroid/net/Uri;
    .end local v6    # "opts":Landroid/os/Bundle;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_4

    .line 79
    if-eqz v7, :cond_5

    :goto_2
    invoke-virtual {v8, v10, v12}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_4
    throw v9

    :cond_5
    move v10, v11

    goto :goto_2
.end method
