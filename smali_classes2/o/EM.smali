.class public final Lo/EM;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lo/Fw;


# direct methods
.method public constructor <init>(Lo/Fw;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Fw;",
            "Lio/reactivex/Observable<",
            "Lo/DC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/EM;->b:Lo/Fw;

    .line 18
    new-instance p1, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$1;-><init>(Lo/EM;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 54
    sget-object p1, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$2;->c:Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$2;

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p2

    .line 17
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/EM;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;Ljava/util/List;)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lo/EM;->d(Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lo/EM;Lcom/netflix/model/leafs/SupportedMediaTracks;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lo/EM;->d(Lcom/netflix/model/leafs/SupportedMediaTracks;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    move-result-object p0

    return-object p0
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 114
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lo/anv;->d(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static final synthetic c(Lo/EM;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;Ljava/util/List;)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lo/EM;->e(Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private final d(Lcom/netflix/model/leafs/SupportedMediaTracks;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;
    .locals 4

    const/4 v0, 0x0

    .line 61
    move-object v1, v0

    check-cast v1, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    .line 63
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getAudioTracks()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 64
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getAudioTracks()Ljava/util/List;

    move-result-object v1

    .line 65
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getSuggestedAudioTrackIndex()I

    move-result v2

    if-ltz v2, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 67
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 75
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getSubtitleTracks()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 76
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getSubtitleTracks()Ljava/util/List;

    move-result-object v1

    .line 77
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getSuggestedSubtitleTrackIndex()I

    move-result v2

    if-ltz v2, :cond_2

    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 79
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_1
    if-nez v1, :cond_6

    .line 94
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getAudioTracks()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getAudioTracks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    :cond_4
    :goto_2
    move-object v1, v0

    goto :goto_3

    .line 95
    :cond_5
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getSubtitleTracks()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getSubtitleTracks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    goto :goto_2

    :cond_6
    :goto_3
    return-object v1
.end method

.method private final d(Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;",
            ">;)Z"
        }
    .end annotation

    .line 148
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getBcp47Code()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/EM;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    .line 151
    invoke-interface {v0}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getBcp47Code()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/EM;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-interface {v0}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getType()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v0

    sget-object v2, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->AUDIO_ASSISTIVE:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    if-ne v0, v2, :cond_0

    invoke-static {v1, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static final synthetic e(Lo/EM;)Lo/Fw;
    .locals 0

    .line 10
    iget-object p0, p0, Lo/EM;->b:Lo/Fw;

    return-object p0
.end method

.method private final e(Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;",
            ">;)Z"
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getBcp47Code()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/EM;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    .line 131
    invoke-interface {v0}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getBcp47Code()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/EM;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-interface {v0}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getType()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v0

    sget-object v2, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->SUBTITLES_CLOSED_CAPTIONS:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    if-ne v0, v2, :cond_0

    invoke-static {v1, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
