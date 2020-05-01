.class public final Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Pd$TaskDescription;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/hW;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Pd$TaskDescription;

.field final synthetic e:Lio/reactivex/ObservableEmitter;


# direct methods
.method public constructor <init>(Lo/Pd$TaskDescription;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;->c:Lo/Pd$TaskDescription;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;->e:Lio/reactivex/ObservableEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/hW;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;->c:Lo/Pd$TaskDescription;

    iget-object v0, v0, Lo/Pd$TaskDescription;->d:Ljava/util/List;

    .line 106
    new-instance v1, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1$3;-><init>(Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;)V

    check-cast v1, Lo/ci;

    .line 104
    invoke-interface {p1, v0, v1}, Lo/hW;->e(Ljava/util/List;Lo/ci;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lo/hW;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$markNotificationAsRead$1$1;->b(Lo/hW;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
