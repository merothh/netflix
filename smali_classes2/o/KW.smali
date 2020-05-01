.class public final Lo/KW;
.super Lo/SimpleAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KW$TaskDescription;,
        Lo/KW$Application;
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
.field public static final b:Lo/KW$Application;


# instance fields
.field private a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lo/Am;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/KW$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/KW$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/KW;->b:Lo/KW$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Lo/SimpleAdapter;-><init>()V

    .line 25
    sget-object v0, Lo/KV;->c:Lo/KV;

    invoke-virtual {v0}, Lo/KV;->a()Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iput-object v0, p0, Lo/KW;->a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    .line 28
    sget-object v1, Lo/KV;->c:Lo/KV;

    invoke-virtual {v1}, Lo/KV;->c()Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/akz;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/KW;->d:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/KW;->c:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lo/KW;Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lo/KW;->b(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static final synthetic b(Lo/KW;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/KW;->c:Ljava/util/List;

    return-object p0
.end method

.method private final b(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;>;)V"
        }
    .end annotation

    .line 105
    invoke-static {p2}, Lo/KV;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lo/KW$TaskDescription;

    invoke-direct {v0, p0, p4}, Lo/KW$TaskDescription;-><init>(Lo/KW;Lio/reactivex/ObservableEmitter;)V

    check-cast v0, Lo/zU;

    invoke-interface {p1, p2, p3, v0}, Lo/zG;->c(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lo/KW;)Lo/Am;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/KW;->e:Lo/Am;

    return-object p0
.end method

.method private final d(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;
    .locals 0

    .line 93
    invoke-static {p1}, Lo/KV;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    sget-object p1, Lo/KV;->c:Lo/KV;

    invoke-virtual {p1}, Lo/KV;->c()Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    goto :goto_0

    .line 96
    :cond_0
    sget-object p1, Lo/KV;->c:Lo/KV;

    invoke-virtual {p1}, Lo/KV;->b()Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    :goto_0
    return-object p1
.end method

.method public static final synthetic e(Lo/KW;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/KW;->a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-object p0
.end method

.method public static final synthetic e(Lo/KW;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lo/KW;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lo/KW;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 44
    iget-object v2, p0, Lo/KW;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {p0, v1}, Lo/KW;->a(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public b()I
    .locals 1

    .line 38
    iget-object v0, p0, Lo/KW;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lo/KW;->i()Ljava/util/List;

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

    .line 19
    invoke-virtual {p0, p1}, Lo/KW;->d(I)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lo/KW;->d:Ljava/util/List;

    return-void
.end method

.method protected d(I)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/KW;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-object p1
.end method

.method public declared-synchronized d(Z)Lio/reactivex/Observable;
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

    monitor-enter p0

    .line 74
    :try_start_0
    new-instance v0, Lo/KW$ActionBar;

    invoke-direct {v0, p0, p1}, Lo/KW$ActionBar;-><init>(Lo/KW;Z)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.create { subs\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lo/Am;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "newServiceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lo/KW;->e:Lo/Am;

    .line 54
    invoke-virtual {p1}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lo/KW;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 137
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    .line 56
    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;->run(Lo/Am;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lo/KW;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lo/KW;->i()Ljava/util/List;

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

.method public final e(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V
    .locals 1

    const-string v0, "newPrimaryGenre"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lo/KW;->a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lo/KW;->d:Ljava/util/List;

    return-object v0
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

    .line 32
    iget-object v0, p0, Lo/KW;->d:Ljava/util/List;

    return-object v0
.end method
