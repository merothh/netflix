.class public final Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$fetchNotifications$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Pd$ActionBar;->subscribe(Lio/reactivex/ObservableEmitter;)V
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
.field final synthetic c:Lio/reactivex/ObservableEmitter;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$fetchNotifications$1$2;->c:Lio/reactivex/ObservableEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/hW;)V
    .locals 2

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$fetchNotifications$1$2$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$fetchNotifications$1$2$1;-><init>(Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$fetchNotifications$1$2;)V

    check-cast v0, Lo/ci;

    const/4 v1, 0x0

    .line 34
    invoke-interface {p1, v1, v1, v0}, Lo/hW;->e(IILo/ci;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lo/hW;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$fetchNotifications$1$2;->d(Lo/hW;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
