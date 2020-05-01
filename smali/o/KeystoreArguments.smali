.class public Lo/KeystoreArguments;
.super Lo/Session;
.source ""


# instance fields
.field private d:Lo/TextInputTimePickerView;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Z

.field private final i:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field private final j:I


# direct methods
.method public constructor <init>(Lo/FontRequest;Lo/SearchIndexablesContract;IIZLjava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lo/SearchIndexablesContract;",
            "IIZ",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "FetchCwVideos"

    .line 50
    invoke-direct {p0, v0, p1, p2, p8}, Lo/Session;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/SearchIndexablesContract;Lo/ci;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lo/KeystoreArguments;->d:Lo/TextInputTimePickerView;

    .line 51
    iput-object p6, p0, Lo/KeystoreArguments;->e:Ljava/lang/String;

    .line 52
    iput p3, p0, Lo/KeystoreArguments;->j:I

    .line 53
    iput p4, p0, Lo/KeystoreArguments;->f:I

    .line 54
    iput-boolean p5, p0, Lo/KeystoreArguments;->g:Z

    .line 55
    iput-object p7, p0, Lo/KeystoreArguments;->i:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/media/BookmarkStore;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/media/BookmarkStore;",
            "Ljava/util/List<",
            "Lo/Az;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lo/KeystoreArguments;->w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->onPlayablesFetched(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lo/Session;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lo/KeystoreArguments;->a:Lo/FontRequest;

    invoke-virtual {v0}, Lo/FontRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/KeystoreArguments;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lo/SEService;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v0

    iput-object v0, p0, Lo/KeystoreArguments;->d:Lo/TextInputTimePickerView;

    .line 69
    iget-object v2, p0, Lo/KeystoreArguments;->d:Lo/TextInputTimePickerView;

    iget v3, p0, Lo/KeystoreArguments;->j:I

    iget v4, p0, Lo/KeystoreArguments;->f:I

    iget-boolean v6, p0, Lo/KeystoreArguments;->g:Z

    invoke-static {}, Lo/ady;->i()Z

    move-result v7

    const/4 v5, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lo/SEService;->a(Ljava/util/List;Lo/TextInputTimePickerView;IIZZZ)V

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lo/ci;->c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lo/Session;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-super {p0}, Lo/Session;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 3

    .line 74
    iget-object p2, p0, Lo/KeystoreArguments;->d:Lo/TextInputTimePickerView;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p2, p0, Lo/KeystoreArguments;->d:Lo/TextInputTimePickerView;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lo/KeystoreArguments;->j:I

    iget v2, p0, Lo/KeystoreArguments;->f:I

    invoke-static {v1, v2}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p2

    .line 76
    iget-object v0, p0, Lo/KeystoreArguments;->a:Lo/FontRequest;

    invoke-virtual {v0, p2}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p2

    .line 77
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0}, Lo/KeystoreArguments;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/KeystoreArguments;->n()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lo/ci;->c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 78
    invoke-virtual {p0}, Lo/KeystoreArguments;->p()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/KeystoreArguments;->a(Lcom/netflix/mediaclient/media/BookmarkStore;Ljava/util/List;)V

    return-void
.end method

.method protected k()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lo/KeystoreArguments;->i:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected m()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lo/KeystoreArguments;->i:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
