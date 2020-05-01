.class public final Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1$3;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;->b(Lo/hW;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1$3;->c:Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1, p2}, Lo/cq;->k(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 109
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-ne p2, v0, :cond_3

    .line 110
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1$3;->c:Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;->e:Lio/reactivex/ObservableEmitter;

    check-cast p1, Ljava/lang/Iterable;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 142
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 141
    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    if-eqz v1, :cond_1

    .line 111
    new-instance v2, Lo/Pa;

    check-cast v1, Lo/AL;

    invoke-direct {v2, v1}, Lo/Pa;-><init>(Lo/AL;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 141
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 110
    invoke-interface {p2, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 113
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1$3;->c:Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;->e:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :cond_3
    return-void
.end method
