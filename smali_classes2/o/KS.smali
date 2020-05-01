.class public final Lo/KS;
.super Lo/SimpleAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KS$ActionBar;,
        Lo/KS$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SimpleAdapter<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/KS$StateListAnimator;


# instance fields
.field private d:Lo/Am;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/KS$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/KS$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/KS;->a:Lo/KS$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Lo/SimpleAdapter;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    .line 22
    sget-object v1, Lo/KV;->c:Lo/KV;

    invoke-virtual {v1}, Lo/KV;->a()Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/akz;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/KS;->e:Ljava/util/List;

    .line 27
    invoke-virtual {p0, v2}, Lo/KS;->a(I)V

    return-void
.end method

.method public static final synthetic b(Lo/KS;Ljava/util/List;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/KS;->e:Ljava/util/List;

    return-void
.end method

.method public static final synthetic d(Lo/KS;)Lo/Am;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/KS;->d:Lo/Am;

    return-object p0
.end method

.method public static final synthetic e(Lo/KS;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/KS;->e:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;
    .locals 3

    const-string v0, "genreId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lo/KS;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 112
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    .line 49
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 113
    :goto_0
    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-object v1
.end method

.method public b()I
    .locals 1

    .line 36
    iget-object v0, p0, Lo/KS;->e:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lo/KS;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getList()[position].id"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic c(I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lo/KS;->d(I)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object p1

    return-object p1
.end method

.method protected d(I)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/KS;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-object p1
.end method

.method public d(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    :goto_0
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    .line 63
    new-instance p1, Lo/KS$Activity;

    invoke-direct {p1, p0, v0}, Lo/KS$Activity;-><init>(Lo/KS;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast p1, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.create { subs\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lo/KS;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getList()[position].title"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "genreId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lo/KS;->e:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 42
    iget-object v2, p0, Lo/KS;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p0, v1}, Lo/KS;->a(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final declared-synchronized e(Lo/Am;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "newServiceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lo/KS;->d:Lo/Am;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lo/KS;->e:Ljava/util/List;

    return-object v0
.end method
