.class public final Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$loadNotifications$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Pl;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Ph;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/Pl;


# direct methods
.method public constructor <init>(Lo/Pl;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$loadNotifications$1;->e:Lo/Pl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/Ph;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    instance-of v0, p1, Lo/Ph$ActionBar;

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Lo/Ph$ActionBar;

    invoke-virtual {p1}, Lo/Ph$ActionBar;->e()Lo/Pf;

    move-result-object p1

    invoke-virtual {p1}, Lo/Pf;->a()Ljava/util/List;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$loadNotifications$1;->e:Lo/Pl;

    invoke-static {v0}, Lo/Pl;->e(Lo/Pl;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_0
    instance-of v0, p1, Lo/Ph$Application;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$loadNotifications$1;->e:Lo/Pl;

    invoke-static {v0}, Lo/Pl;->e(Lo/Pl;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/ReplaySubject;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    .line 70
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    check-cast p1, Lo/Ph$Application;

    invoke-virtual {p1}, Lo/Ph$Application;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lo/Ph;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$loadNotifications$1;->b(Lo/Ph;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
