.class public Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;
.super Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;
.source "SlidingMenuNotificationsFrag.java"


# static fields
.field public static MAX_NUM_NOTIFICATIONS:I = 0x0

.field private static final MAX_NUM_NOTIFICATIONS_DEFAULT:I = 0x3

.field private static final MAX_NUM_NOTIFICATIONS_X_LARGE:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x3

    sput v0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->MAX_NUM_NOTIFICATIONS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;-><init>()V

    return-void
.end method

.method public static getCurrentMaxNotificationsNum()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->MAX_NUM_NOTIFICATIONS:I

    return v0
.end method


# virtual methods
.method protected canLoadMultiplePages()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected getNumNotificationsPerPage()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->MAX_NUM_NOTIFICATIONS:I

    return v0
.end method

.method protected getRowLayoutResourceId()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f030081

    return v0
.end method

.method protected isListViewStatic()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->onAttach(Landroid/app/Activity;)V

    .line 21
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 22
    const/4 v0, 0x5

    sput v0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->MAX_NUM_NOTIFICATIONS:I

    .line 24
    :cond_0
    return-void
.end method

.method protected shouldShowPlayButtonFromNotifications()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
