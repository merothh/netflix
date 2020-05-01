.class public final Lo/KeyAttestationApplicationId;
.super Lo/SyncConstValue;
.source ""


# instance fields
.field private final a:I

.field private final b:Lo/TextInputTimePickerView;

.field private final d:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const-string v0, "FetchDownloadableVideos"

    .line 17
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lo/KeyAttestationApplicationId;->d:I

    iput p2, p0, Lo/KeyAttestationApplicationId;->a:I

    .line 19
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->f:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p3, p2, p2}, Lo/SEService;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "CmpUtils.getListContextB\u2026text, listId, null, null)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/KeyAttestationApplicationId;->b:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pqls"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lo/KeyAttestationApplicationId;->b:Lo/TextInputTimePickerView;

    iget v1, p0, Lo/KeyAttestationApplicationId;->d:I

    iget v2, p0, Lo/KeyAttestationApplicationId;->a:I

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lo/SEService;->b(Ljava/util/List;Lo/TextInputTimePickerView;IIZ)V

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 3

    const-string p3, "cmpTask"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p3, p0, Lo/KeyAttestationApplicationId;->b:Lo/TextInputTimePickerView;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    iget v1, p0, Lo/KeyAttestationApplicationId;->d:I

    .line 30
    iget v2, p0, Lo/KeyAttestationApplicationId;->a:I

    .line 28
    invoke-static {v1, v2}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "summary"

    aput-object v2, v0, v1

    .line 27
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    .line 26
    invoke-interface {p3, v0}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object p3

    const-string v0, "basePath.append(\n       \u2026\"\n            )\n        )"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    invoke-virtual {v0, p3}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 35
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p1}, Lo/ConfirmationAlreadyPresentingException;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/ConfirmationAlreadyPresentingException;->n()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lo/ci;->e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 36
    :cond_0
    invoke-virtual {p1}, Lo/ConfirmationAlreadyPresentingException;->p()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object p2

    invoke-virtual {p1}, Lo/ConfirmationAlreadyPresentingException;->w()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/netflix/mediaclient/media/BookmarkStore;->onPlayablesFetched(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<com.netflix.mediaclient.servicemgr.interface_.DownloadVideo>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lo/ci;->e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
