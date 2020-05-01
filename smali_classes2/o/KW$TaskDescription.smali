.class final Lo/KW$TaskDescription;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lo/KW;


# direct methods
.method public constructor <init>(Lo/KW;Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "observable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lo/KW$TaskDescription;->d:Lo/KW;

    .line 112
    invoke-direct {p0}, Lo/Ai;-><init>()V

    iput-object p2, p0, Lo/KW$TaskDescription;->a:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public g(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-super {p0, p1, p2}, Lo/Ai;->g(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 117
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object p1, Lo/KW;->b:Lo/KW$Application;

    check-cast p1, Lo/MessagePdu;

    .line 119
    iget-object p1, p0, Lo/KW$TaskDescription;->a:Lio/reactivex/ObservableEmitter;

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 120
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    new-array p2, p2, [Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lo/KW$TaskDescription;->d:Lo/KW;

    invoke-static {v1}, Lo/KW;->e(Lo/KW;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "primaryGenre.id"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lo/KW;->e(Lo/KW;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p2}, Lo/akz;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 126
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object p1, p0, Lo/KW$TaskDescription;->d:Lo/KW;

    invoke-virtual {p1, p2}, Lo/KW;->c(Ljava/util/List;)V

    .line 129
    iget-object p1, p0, Lo/KW$TaskDescription;->a:Lio/reactivex/ObservableEmitter;

    iget-object p2, p0, Lo/KW$TaskDescription;->d:Lo/KW;

    invoke-virtual {p2}, Lo/KW;->g()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lo/KW$TaskDescription;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_1

    .line 121
    :cond_2
    :goto_0
    sget-object p1, Lo/KW;->b:Lo/KW$Application;

    check-cast p1, Lo/MessagePdu;

    .line 122
    iget-object p1, p0, Lo/KW$TaskDescription;->a:Lio/reactivex/ObservableEmitter;

    new-instance p2, Ljava/lang/Throwable;

    const-string v0, "No genres in response"

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method
