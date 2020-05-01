.class public final Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;
.super Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController<",
        "Lo/Sz;",
        ">;"
    }
.end annotation


# instance fields
.field private final episodesListener:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;

.field private final eventBusFactory:Lo/UpdateEngine;

.field private final seasonsSelectionRepository:Lo/ES;

.field private final titleId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/Rr$Activity;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;Lo/UpdateEngine;Lo/ES;Ljava/lang/String;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;-><init>(Ljava/lang/String;Lo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;Lo/UpdateEngine;Lo/ES;Ljava/lang/String;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;Lo/UpdateEngine;Lo/ES;Ljava/lang/String;)V
    .locals 6

    const-string v0, "profileGuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenLauncher"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiList"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionChangesListener"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodesListener"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBusFactory"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seasonsSelectionRepository"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleId"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p8

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;-><init>(Ljava/lang/String;Lo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->episodesListener:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->eventBusFactory:Lo/UpdateEngine;

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->seasonsSelectionRepository:Lo/ES;

    iput-object p8, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->titleId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;Lo/UpdateEngine;Lo/ES;Ljava/lang/String;ILo/amc;)V
    .locals 11

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_0

    .line 17
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    const-string v1, "OfflineUiHelper.getOfflinePlayableUiList()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;-><init>(Ljava/lang/String;Lo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;Lo/UpdateEngine;Lo/ES;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFindMoreButtonToModel()V
    .locals 0

    return-void
.end method

.method public bridge synthetic buildModels(Ljava/lang/Object;ZLjava/util/Map;)V
    .locals 0

    .line 14
    check-cast p1, Lo/Sz;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->buildModels(Lo/Sz;ZLjava/util/Map;)V

    return-void
.end method

.method public bridge synthetic buildModels(Lo/Qk;ZLjava/util/Map;)V
    .locals 0

    .line 14
    check-cast p1, Lo/Sz;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->buildModels(Lo/Sz;ZLjava/util/Map;)V

    return-void
.end method

.method public buildModels(Lo/Sz;ZLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Sz;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lo/Sz;->a()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lo/SI;

    invoke-direct {v0}, Lo/SI;-><init>()V

    const-string v3, "header"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lo/SI;->a(Ljava/lang/CharSequence;)Lo/SI;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->add(Lo/BiConsumer;)V

    .line 42
    :cond_1
    move-object v0, p1

    check-cast v0, Lo/Qk;

    invoke-super {p0, v0, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->buildModels(Lo/Qk;ZLjava/util/Map;)V

    .line 44
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->getHasVideos()Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 48
    :cond_2
    invoke-virtual {p1}, Lo/Sz;->d()Ljava/util/List;

    move-result-object p2

    .line 49
    invoke-virtual {p1}, Lo/Sz;->e()Lo/Bb;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 50
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    if-eqz p1, :cond_4

    .line 52
    new-instance p3, Lo/SE;

    invoke-direct {p3}, Lo/SE;-><init>()V

    const-string v0, "title"

    .line 53
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Lo/SE;->b(Ljava/lang/CharSequence;)Lo/SE;

    move-result-object p3

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->eventBusFactory:Lo/UpdateEngine;

    invoke-virtual {p3, v0}, Lo/SE;->e(Lo/UpdateEngine;)Lo/SE;

    move-result-object p3

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->seasonsSelectionRepository:Lo/ES;

    invoke-virtual {p3, v0}, Lo/SE;->a(Lo/ES;)Lo/SE;

    move-result-object p3

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->titleId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lo/SE;->d(Ljava/lang/String;)Lo/SE;

    move-result-object p3

    check-cast p3, Lo/BiConsumer;

    .line 51
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->add(Lo/BiConsumer;)V

    .line 59
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    :goto_1
    if-ge v1, p3, :cond_4

    .line 60
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AS;

    .line 61
    new-instance v3, Lo/SB;

    invoke-direct {v3}, Lo/SB;-><init>()V

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadable_episode_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lo/SB;->d(Ljava/lang/CharSequence;)Lo/SB;

    move-result-object v3

    .line 63
    invoke-virtual {v3, v0}, Lo/SB;->c(Lo/AS;)Lo/SB;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Lo/SB;->a(Lo/Bb;)Lo/SB;

    move-result-object v0

    .line 65
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->episodesListener:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;

    invoke-interface {v3}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$StateListAnimator;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;)V

    check-cast v3, Lo/AEADBadTagException;

    invoke-virtual {v0, v3}, Lo/SB;->c(Lo/AEADBadTagException;)Lo/SB;

    .line 72
    :cond_3
    check-cast v0, Lo/BiConsumer;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->add(Lo/BiConsumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final getEpisodesListener()Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->episodesListener:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;

    return-object v0
.end method

.method public final getEventBusFactory()Lo/UpdateEngine;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->eventBusFactory:Lo/UpdateEngine;

    return-object v0
.end method

.method public final getSeasonsSelectionRepository()Lo/ES;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->seasonsSelectionRepository:Lo/ES;

    return-object v0
.end method

.method public final getTitleId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->titleId:Ljava/lang/String;

    return-object v0
.end method
