.class public Lcom/android/js/api/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

.field private notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private notification_manager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    .line 18
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/js/api/Notification;->notification_manager:Landroid/app/NotificationManager;

    .line 19
    return-void
.end method


# virtual methods
.method public initBigNotification(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # [Ljava/lang/String;

    .prologue
    .line 36
    new-instance v1, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    iput-object v1, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 37
    iget-object v1, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/android/js/api/Notification;->inbox_style:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 42
    return-void
.end method

.method public initNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/android/js/api/Notification;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 26
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 27
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 28
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 29
    return-void
.end method

.method public showNotification(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/js/api/Notification;->notification_manager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/js/api/Notification;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 33
    return-void
.end method
