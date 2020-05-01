.class public final Lo/SimpleCursorTreeAdapter;
.super Lo/SimpleAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SimpleAdapter<",
        "Lcom/netflix/mediaclient/media/AudioSource;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/AudioSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/media/AudioSource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selections"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lo/SimpleAdapter;-><init>()V

    iput-object p1, p0, Lo/SimpleCursorTreeAdapter;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/media/AudioSource;)V
    .locals 4

    const-string v0, "audio"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lo/SimpleCursorTreeAdapter;->a:Ljava/util/List;

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 33
    check-cast v2, Lcom/netflix/mediaclient/media/AudioSource;

    .line 16
    invoke-static {v2, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v3, :cond_2

    .line 18
    invoke-virtual {p0, v1}, Lo/SimpleCursorTreeAdapter;->a(I)V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 1

    .line 22
    iget-object v0, p0, Lo/SimpleCursorTreeAdapter;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .line 24
    invoke-virtual {p0, p1}, Lo/SimpleCursorTreeAdapter;->d(I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSelection(position).id"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic c(I)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lo/SimpleCursorTreeAdapter;->d(I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    return-object p1
.end method

.method protected d(I)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/SimpleCursorTreeAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/media/AudioSource;

    return-object p1
.end method

.method public d(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/AudioSource;",
            ">;>;"
        }
    .end annotation

    .line 28
    iget-object p1, p0, Lo/SimpleCursorTreeAdapter;->a:Ljava/util/List;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.just(selections)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    .line 25
    invoke-virtual {p0, p1}, Lo/SimpleCursorTreeAdapter;->d(I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescription()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSelection(position).languageDescription"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
