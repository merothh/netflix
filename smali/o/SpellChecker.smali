.class public final Lo/SpellChecker;
.super Lo/SimpleAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SimpleAdapter<",
        "Lcom/netflix/mediaclient/media/subtitles/Subtitle;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/media/subtitles/Subtitle;",
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
            "Lcom/netflix/mediaclient/media/subtitles/Subtitle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selections"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lo/SimpleAdapter;-><init>()V

    iput-object p1, p0, Lo/SpellChecker;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 47
    iget-object v0, p0, Lo/SpellChecker;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .line 49
    invoke-virtual {p0, p1}, Lo/SpellChecker;->d(I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSelection(position).id"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    .line 21
    iget-object v2, p0, Lo/SpellChecker;->d:Ljava/util/List;

    .line 67
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 68
    check-cast v3, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 21
    invoke-static {v3, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_2

    .line 22
    :cond_2
    move-object p1, p0

    check-cast p1, Lo/SpellChecker;

    .line 23
    iget-object p1, p1, Lo/SpellChecker;->d:Ljava/util/List;

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 75
    check-cast v2, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 23
    invoke-interface {v2}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isForcedNarrativeOrNone()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_2
    if-eq v0, v1, :cond_4

    .line 27
    invoke-virtual {p0, v0}, Lo/SpellChecker;->a(I)V

    :cond_4
    return-void
.end method

.method public synthetic c(I)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lo/SpellChecker;->d(I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    return-object p1
.end method

.method protected d(I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/SpellChecker;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    return-object p1
.end method

.method public d(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/subtitles/Subtitle;",
            ">;>;"
        }
    .end annotation

    .line 63
    iget-object p1, p0, Lo/SpellChecker;->d:Ljava/util/List;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.just(selections)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(I)Ljava/lang/String;
    .locals 2

    .line 51
    invoke-virtual {p0, p1}, Lo/SpellChecker;->d(I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isCC()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->eF:I

    invoke-static {p1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {v0, p1}, Lo/aev;->c(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "label.toString()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/media/subtitles/Subtitle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selections"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lo/SpellChecker;->d:Ljava/util/List;

    return-void
.end method

.method public final f()Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 2

    .line 36
    invoke-virtual {p0}, Lo/SpellChecker;->d()I

    move-result v0

    if-ltz v0, :cond_2

    .line 37
    iget-object v1, p0, Lo/SpellChecker;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lo/SpellChecker;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lo/SpellChecker;->d(I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lo/SpellChecker;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/subtitles/Subtitle;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lo/SpellChecker;->d:Ljava/util/List;

    return-object v0
.end method
