.class public Lcom/android/js/PermissionRequest;
.super Ljava/lang/Object;
.source "PermissionRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndAskForPermissions(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-static {p0, p1}, Lcom/android/js/PermissionRequest;->checkAndAskForPermissionsHelper(Landroid/app/Activity;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "permissions":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 17
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 18
    :cond_0
    return-void
.end method

.method private static checkAndAskForPermissionsHelper(Landroid/app/Activity;Landroid/content/Context;)[Ljava/lang/String;
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 22
    invoke-static {p0}, Lcom/android/js/PermissionRequest;->retrievePermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "totalPermissions":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v3, "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v8, v4

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v1, v4, v7

    .line 27
    .local v1, "permission":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 25
    :cond_1
    :goto_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 27
    :sswitch_0
    const-string v9, "android.permission.CAMERA"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v6

    goto :goto_1

    :sswitch_1
    const-string v9, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v9, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_4
    const-string v9, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_5
    const-string v9, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_6
    const-string v9, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_7
    const-string v9, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_8
    const-string v9, "android.permission.CALL_PHONE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v5, 0x8

    goto :goto_1

    .line 29
    :pswitch_0
    const-string v5, "Manigest"

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 30
    const-string v5, "android.permission.CAMERA"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :pswitch_1
    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 36
    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 40
    :pswitch_2
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 41
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 45
    :pswitch_3
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 50
    :pswitch_4
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 55
    :pswitch_5
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 60
    :pswitch_6
    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 65
    :pswitch_7
    const-string v5, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    const-string v5, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 70
    :pswitch_8
    const-string v5, "android.permission.CALL_PHONE"

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    const-string v5, "android.permission.CALL_PHONE"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 76
    .end local v1    # "permission":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 77
    .local v2, "permissions":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 78
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v0

    .line 79
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 82
    :cond_3
    return-object v2

    .line 27
    nop

    :sswitch_data_0
    .sparse-switch
        -0x70918bc1 -> :sswitch_3
        -0x6c756e8f -> :sswitch_7
        -0x1833add0 -> :sswitch_5
        -0x3c1ac56 -> :sswitch_2
        0x6afff6d -> :sswitch_8
        0x1772a2a5 -> :sswitch_1
        0x1b9efa65 -> :sswitch_0
        0x516a29a7 -> :sswitch_4
        0x6d24f988 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static retrievePermissions(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This should have never happened."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
