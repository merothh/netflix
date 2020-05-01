.class public final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;
.super Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;-><init>()V

    .line 38
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const-string v2, "it"

    .line 40
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Rq;->f()Ljava/util/List;

    move-result-object v0

    const-string v2, "it.listOfAdapterData"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 348
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    const-string v3, "data"

    .line 41
    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    const-string v3, "data.videoAndProfileData.video"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data.videoAndProfileData.video.playableId"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_0
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;->e:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;)Ljava/util/Map;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;->e:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public a(Lo/Rq;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
    .locals 1

    const-string v0, "uiList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playableId"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;->e:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    return-object p1
.end method

.method public c()Z
    .locals 10

    .line 74
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->d()Z

    move-result v0

    .line 76
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Companion$errorResolver$1$deleteAllDownloadsWithErrors$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Companion$errorResolver$1$deleteAllDownloadsWithErrors$1;-><init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;)V

    move-object v7, v1

    check-cast v7, Lo/alB;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lo/ala;->d(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILo/alB;ILjava/lang/Object;)Ljava/lang/Thread;

    return v0
.end method

.method public d()Z
    .locals 10

    .line 60
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->d()Z

    move-result v0

    .line 62
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Companion$errorResolver$1$renewAllDownloads$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Companion$errorResolver$1$renewAllDownloads$1;-><init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;)V

    move-object v7, v1

    check-cast v7, Lo/alB;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lo/ala;->d(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILo/alB;ILjava/lang/Object;)Ljava/lang/Thread;

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 48
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application$TaskDescription;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
