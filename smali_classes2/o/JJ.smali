.class public Lo/JJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ce;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Landroid/app/Notification;
    .locals 0

    .line 17
    invoke-static {p1}, Lcom/netflix/mediaclient/util/NotificationUtils;->d(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method
