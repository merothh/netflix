.class final Lo/KW$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/KW;->d(Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic e:Lo/KW;


# direct methods
.method constructor <init>(Lo/KW;Z)V
    .locals 0

    iput-object p1, p0, Lo/KW$ActionBar;->e:Lo/KW;

    iput-boolean p2, p0, Lo/KW$ActionBar;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-boolean v0, p0, Lo/KW$ActionBar;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 76
    :goto_0
    iget-object v1, p0, Lo/KW$ActionBar;->e:Lo/KW;

    invoke-static {v1}, Lo/KW;->c(Lo/KW;)Lo/Am;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Lo/Am;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lo/KW$ActionBar;->e:Lo/KW;

    invoke-static {v2}, Lo/KW;->e(Lo/KW;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "primaryGenre.id"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1, v3, v0, p1}, Lo/KW;->a(Lo/KW;Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lio/reactivex/ObservableEmitter;)V

    goto :goto_1

    .line 80
    :cond_1
    iget-object v1, p0, Lo/KW$ActionBar;->e:Lo/KW;

    invoke-static {v1}, Lo/KW;->e(Lo/KW;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lo/KW$ActionBar;->e:Lo/KW;

    invoke-static {v2}, Lo/KW;->b(Lo/KW;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lo/KW$ActionBar$2;

    invoke-direct {v3, p0, v1, v0, p1}, Lo/KW$ActionBar$2;-><init>(Lo/KW$ActionBar;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lio/reactivex/ObservableEmitter;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
