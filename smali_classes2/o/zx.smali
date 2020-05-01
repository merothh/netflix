.class public final Lo/zx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zG;


# instance fields
.field private final c:Lo/zO;


# direct methods
.method public constructor <init>(Lo/zO;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/zx;->c:Lo/zO;

    return-void
.end method


# virtual methods
.method public a()Lo/TableLayout;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/TableLayout<",
            "*>;"
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    invoke-interface {v0}, Lo/zI;->e()Lo/TableLayout;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManagerBrowse"

    const-string v1, "getModelProxy:: service is not available"

    .line 1228
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    monitor-enter p0

    .line 1166
    :try_start_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/zI;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "purgeCachedEpisodes:: service is not available"

    .line 1176
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1178
    :goto_0
    monitor-exit p0

    return-void

    .line 1167
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AR;",
            "Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lo/zI;->e(Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "logBillboardActivity:: service is not available"

    .line 1086
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Lo/ConfirmationCallback;Lo/zU;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p2}, Lo/zO;->b(Lo/zU;)I

    move-result p2

    .line 48
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lo/zI;->a(Lo/ConfirmationCallback;II)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchTask:: service is not available"

    .line 50
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(IILjava/lang/String;Lo/zU;)Z
    .locals 9

    .line 56
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ServiceManagerBrowse"

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p4}, Lo/zO;->b(Lo/zU;)I

    move-result v8

    const/4 p4, 0x1

    new-array v0, p4, [Ljava/lang/Object;

    .line 58
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "prefetchLolomo requestId= %s"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v3

    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->e()I

    move-result v7

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v3 .. v8}, Lo/zI;->a(IILjava/lang/String;II)V

    return p4

    :cond_0
    const-string p1, "prefetchLolomo:: service is not available"

    .line 62
    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public a(IILo/zU;)Z
    .locals 5

    .line 1093
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ServiceManagerBrowse"

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p3}, Lo/zO;->b(Lo/zU;)I

    move-result p3

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    .line 1096
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "fetchNotificationsList requestId=%s"

    invoke-static {v2, v1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1098
    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object v2, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v2}, Lo/zO;->e()I

    move-result v2

    invoke-interface {v1, p1, p2, v2, p3}, Lo/zI;->d(IIII)V

    return v0

    :cond_0
    const-string p1, "fetchNotificationsList:: service is not available"

    .line 1101
    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public declared-synchronized a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IILo/zU;)Z
    .locals 7

    monitor-enter p0

    .line 881
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p4}, Lo/zO;->b(Lo/zU;)I

    move-result v6

    .line 886
    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->e()I

    move-result v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lo/zI;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 887
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchSearchLolomoVideos:: service is not available"

    .line 889
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 890
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;IIIILo/zU;)Z
    .locals 9

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p6}, Lo/zO;->b(Lo/zU;)I

    move-result v8

    .line 86
    iget-object p6, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p6}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p6, p0, Lo/zx;->c:Lo/zO;

    .line 88
    invoke-interface {p6}, Lo/zO;->e()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 86
    invoke-interface/range {v1 .. v8}, Lo/zI;->b(Ljava/lang/String;IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 89
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "prefetchGenreLoLoMo:: service is not available"

    .line 91
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 92
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIZLo/zU;)Z
    .locals 9

    monitor-enter p0

    .line 906
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p6}, Lo/zO;->b(Lo/zU;)I

    move-result v5

    .line 911
    iget-object p6, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p6}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p6, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p6}, Lo/zO;->e()I

    move-result v4

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v1 .. v8}, Lo/zI;->e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 912
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "searchNetflix:: service is not available"

    .line 914
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 915
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILo/zU;)Z
    .locals 8

    monitor-enter p0

    .line 982
    :try_start_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 985
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p5}, Lo/zO;->b(Lo/zU;)I

    move-result v7

    .line 990
    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->e()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lo/zI;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 991
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "setVideoThumbRating:: service is not available"

    .line 993
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 994
    monitor-exit p0

    return p1

    .line 983
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z
    .locals 8

    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p5}, Lo/zO;->b(Lo/zU;)I

    move-result v7

    .line 353
    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->e()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lo/zI;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 354
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "logPostPlayImpression:: service is not available"

    .line 356
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 357
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z
    .locals 2

    .line 363
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p3}, Lo/zO;->b(Lo/zU;)I

    move-result p3

    .line 368
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p3}, Lo/zI;->d(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "logPostPlayImpression:: service is not available"

    .line 371
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z
    .locals 8

    monitor-enter p0

    .line 497
    :try_start_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p5, p1}, Lo/zO;->d(Lo/zU;Ljava/lang/String;)I

    move-result v7

    .line 505
    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->e()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lo/zI;->b(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 506
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchMovieDetails:: service is not available"

    .line 508
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 509
    monitor-exit p0

    return p1

    .line 498
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lo/zU;)Z
    .locals 2

    monitor-enter p0

    .line 416
    :try_start_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p2}, Lo/zO;->b(Lo/zU;)I

    move-result p2

    .line 424
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lo/zI;->b(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 425
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchLoLoMoSummary:: service is not available"

    .line 427
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 428
    monitor-exit p0

    return p1

    .line 417
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1237
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1238
    invoke-virtual {p0}, Lo/zx;->a()Lo/TableLayout;

    move-result-object v0

    check-cast v0, Lo/FontRequest;

    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {v0, p1}, Lo/FontRequest;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    const-string p1, "ServiceManagerBrowse"

    const-string v0, "getModelProxy:: service is not available"

    .line 1244
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public declared-synchronized b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/zU;)Z
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 137
    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p6}, Lo/zO;->b(Lo/zU;)I

    move-result v8

    .line 152
    iget-object p6, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p6}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p6, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p6}, Lo/zO;->e()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v8}, Lo/zI;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 153
    monitor-exit p0

    return p1

    :cond_1
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchVideos:: service is not available"

    .line 155
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    monitor-exit p0

    return v0

    .line 138
    :cond_2
    :goto_0
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SPY-10830 LoLoMo refresh crash"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_3

    const-string p1, ", lomo == null"

    .line 140
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string p3, ", lomo.id == "

    .line 142
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", lomo.title = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", lomo.class = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    :goto_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;IILo/zU;)Z
    .locals 7

    monitor-enter p0

    .line 857
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p4}, Lo/zO;->b(Lo/zU;)I

    move-result v6

    .line 862
    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->e()I

    move-result v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lo/zI;->a(Ljava/lang/String;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 863
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchSearchLoMos:: service is not available"

    .line 865
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 866
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/zU;)Z
    .locals 8

    monitor-enter p0

    .line 225
    :try_start_0
    invoke-static {p1}, Lo/aes;->e(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    .line 227
    new-instance p2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object p3, Lcom/netflix/mediaclient/StatusCode;->t:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p2, p3}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {p5, p1, p2}, Lo/zU;->j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_0
    monitor-exit p0

    return v1

    .line 232
    :cond_1
    :try_start_1
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p5}, Lo/zO;->b(Lo/zU;)I

    move-result v7

    .line 237
    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->e()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lo/zI;->d(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 238
    monitor-exit p0

    return p1

    :cond_2
    :try_start_2
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchEpisodes:: service is not available"

    .line 240
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z
    .locals 2

    monitor-enter p0

    .line 726
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p3}, Lo/zO;->b(Lo/zU;)I

    move-result p3

    .line 731
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p3}, Lo/zI;->d(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 732
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchGenreLists:: service is not available"

    .line 734
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 735
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z
    .locals 8

    .line 1025
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1028
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p5, p1}, Lo/zO;->d(Lo/zU;Ljava/lang/String;)I

    move-result v7

    .line 1033
    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->e()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lo/zI;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "removeFromQueue:: service is not available"

    .line 1036
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 1026
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z
    .locals 8

    monitor-enter p0

    .line 691
    :try_start_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p5, p1}, Lo/zO;->d(Lo/zU;Ljava/lang/String;)I

    move-result v7

    .line 699
    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    .line 704
    invoke-interface {p5}, Lo/zO;->e()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 699
    invoke-interface/range {v1 .. v7}, Lo/zI;->e(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 707
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchShowDetailsAndSeasons:: service is not available"

    .line 709
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 710
    monitor-exit p0

    return p1

    .line 692
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;Lo/zU;)Z
    .locals 2

    .line 444
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p2}, Lo/zO;->b(Lo/zU;)I

    move-result p2

    .line 452
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lo/zI;->a(Ljava/lang/String;II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchVideoSummary:: service is not available"

    .line 455
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 445
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;ZLo/zU;)Z
    .locals 2

    .line 1108
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p3}, Lo/zO;->b(Lo/zU;)I

    move-result p3

    .line 1113
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p3}, Lo/zI;->c(Ljava/lang/String;ZII)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchNotificationSummary:: service is not available"

    .line 1116
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/util/List;Lo/zU;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Av;",
            ">;",
            "Lo/zU;",
            ")Z"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p2}, Lo/zO;->b(Lo/zU;)I

    move-result p2

    .line 520
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lo/zI;->a(Ljava/util/List;II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "prefetchFromLolomoList:: service is not available"

    .line 523
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1195
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lo/zI;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "browse.%s.refresh"

    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "refreshIq:: service is not available"

    .line 1201
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public c(Ljava/util/List;Lo/zU;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/zU;",
            ")V"
        }
    .end annotation

    .line 1145
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p2}, Lo/zO;->b(Lo/zU;)I

    move-result p2

    .line 1150
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lo/zI;->b(Ljava/util/List;II)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "markNotificationsAsRead:: service is not available"

    .line 1152
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1183
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lo/zI;->d(ZLjava/lang/String;)V

    .line 1186
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "browse.cw.refresh"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string v0, "refreshCw:: service is not available"

    .line 1189
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public declared-synchronized c(IILjava/lang/String;Lo/zU;)Z
    .locals 8

    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p4}, Lo/zO;->b(Lo/zU;)I

    move-result v7

    .line 292
    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    const/4 v4, 0x0

    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->e()I

    move-result v6

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v7}, Lo/zI;->d(IIZLjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 293
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchCWVideos:: service is not available"

    .line 295
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 296
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;IILo/zU;)Z
    .locals 7

    monitor-enter p0

    .line 776
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchGenres:: service is not available"

    .line 777
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    monitor-exit p0

    return v1

    .line 781
    :cond_0
    :try_start_1
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 786
    monitor-exit p0

    return v1

    .line 789
    :cond_1
    :try_start_2
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p4}, Lo/zO;->b(Lo/zU;)I

    move-result v6

    .line 794
    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->e()I

    move-result v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lo/zI;->c(Ljava/lang/String;IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 795
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z
    .locals 2

    monitor-enter p0

    .line 752
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p3}, Lo/zO;->b(Lo/zU;)I

    move-result p3

    .line 757
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p3}, Lo/zI;->a(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 758
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchFilteredGenreLists:: service is not available"

    .line 760
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 761
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z
    .locals 2

    monitor-enter p0

    .line 666
    :try_start_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p3, p1}, Lo/zO;->d(Lo/zU;Ljava/lang/String;)I

    move-result p3

    .line 674
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p3}, Lo/zI;->b(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 675
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchShowDetails:: service is not available"

    .line 677
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 678
    monitor-exit p0

    return p1

    .line 667
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Lo/zU;)Z
    .locals 2

    monitor-enter p0

    .line 531
    :try_start_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p2}, Lo/zO;->b(Lo/zU;)I

    move-result p2

    .line 539
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lo/zI;->d(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 540
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchKidsCharacterDetails:: service is not available"

    .line 542
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 543
    monitor-exit p0

    return p1

    .line 532
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Ljava/lang/String;Lo/zU;)V
    .locals 2

    .line 612
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p2}, Lo/zO;->b(Lo/zU;)I

    move-result p2

    .line 617
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lo/zI;->f(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchAdvisories:: service is not available"

    .line 619
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 1123
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v2, v1}, Lo/zI;->b(ZZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string v0, "refreshIrisNotifications:: service is not available"

    .line 1126
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    .line 1043
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    invoke-interface {v0}, Lo/zI;->c()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "ServiceManagerBrowse"

    const-string v1, "flushCaches:: service is not available"

    .line 1047
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized d(IILjava/lang/String;Lo/zU;Z)Z
    .locals 8

    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p4}, Lo/zO;->b(Lo/zU;)I

    move-result v6

    .line 308
    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->e()I

    move-result v5

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lo/zI;->b(IILjava/lang/String;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 309
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchPreviews:: service is not available"

    .line 311
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 312
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z
    .locals 7

    monitor-enter p0

    .line 579
    :try_start_0
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p4}, Lo/zO;->b(Lo/zU;)I

    move-result v6

    .line 587
    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->e()I

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lo/zI;->d(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 588
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchScenePosition:: service is not available"

    .line 590
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 591
    monitor-exit p0

    return p1

    .line 580
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;IILo/zU;)Z
    .locals 7

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p4}, Lo/zO;->b(Lo/zU;)I

    move-result v6

    .line 116
    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->e()I

    move-result v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lo/zI;->b(Ljava/lang/String;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 117
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchLoMos:: service is not available"

    .line 119
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 120
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;IIZLo/zU;)Z
    .locals 8

    monitor-enter p0

    .line 932
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p5}, Lo/zO;->b(Lo/zU;)I

    move-result v4

    .line 937
    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->e()I

    move-result v3

    move-object v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lo/zI;->a(Ljava/lang/String;IIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 938
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "searchNetflix:: service is not available"

    .line 940
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 941
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;IIZZLo/zU;)Z
    .locals 9

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p6}, Lo/zO;->b(Lo/zU;)I

    move-result v8

    .line 201
    iget-object p6, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p6}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p6, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p6}, Lo/zO;->e()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v8}, Lo/zI;->e(Ljava/lang/String;IIZZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 202
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchFlatGenre:: service is not available"

    .line 204
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 205
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z
    .locals 5

    monitor-enter p0

    .line 258
    :try_start_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p3}, Lo/zO;->b(Lo/zU;)I

    move-result p3

    const-string v0, "ServiceManagerBrowse"

    const-string v2, "fetchSeasons requestId=%s id=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 264
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-static {v0, v2, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v2, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v2}, Lo/zO;->e()I

    move-result v2

    invoke-interface {v0, p1, p2, v2, p3}, Lo/zI;->e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchSeasons:: service is not available"

    .line 269
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    monitor-exit p0

    return v1

    .line 259
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Ljava/lang/String;Lo/zU;)Z
    .locals 9

    .line 1004
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1007
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p6, p1}, Lo/zO;->d(Lo/zU;Ljava/lang/String;)I

    move-result v8

    .line 1012
    iget-object p6, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p6}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p6, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p6}, Lo/zO;->e()I

    move-result v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v8}, Lo/zI;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Ljava/lang/String;II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "addToQueue:: service is not available"

    .line 1015
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 1005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()V
    .locals 2

    .line 1216
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    invoke-interface {v0}, Lo/zI;->b()V

    goto :goto_0

    :cond_0
    const-string v0, "ServiceManagerBrowse"

    const-string v1, "clearSearchResults:: service is not available"

    .line 1219
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public declared-synchronized e(IILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lo/zU;)Z
    .locals 8

    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p5}, Lo/zO;->b(Lo/zU;)I

    move-result v7

    .line 395
    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->e()I

    move-result v6

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lo/zI;->e(IILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 396
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchIQVideos:: service is not available"

    .line 398
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 399
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLo/zU;)Z
    .locals 8

    monitor-enter p0

    .line 175
    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p5}, Lo/zO;->b(Lo/zU;)I

    move-result v7

    .line 183
    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->e()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lo/zI;->b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 184
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchGenreVideos:: service is not available"

    .line 186
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 187
    monitor-exit p0

    return p1

    .line 176
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/zU;)Z
    .locals 8

    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p5}, Lo/zO;->b(Lo/zU;)I

    move-result v7

    .line 839
    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p5, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p5}, Lo/zO;->e()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lo/zI;->c(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 840
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "searchNetflix_Ab10025:: service is not available"

    .line 842
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 843
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ZLo/zU;)Z
    .locals 7

    monitor-enter p0

    .line 809
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p4}, Lo/zO;->b(Lo/zU;)I

    move-result v6

    .line 814
    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->e()I

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lo/zI;->c(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 815
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "searchNetflix:: service is not available"

    .line 817
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 818
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lo/zU;)Z
    .locals 7

    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p4}, Lo/zO;->b(Lo/zU;)I

    move-result v6

    .line 323
    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->e()I

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lo/zI;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 324
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchPostPlayVideos:: service is not available"

    .line 326
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 327
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/String;Ljava/lang/String;ZLo/zU;)Z
    .locals 7

    monitor-enter p0

    .line 636
    :try_start_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p4}, Lo/zO;->b(Lo/zU;)I

    move-result v6

    .line 644
    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->b()Lo/zI;

    move-result-object v1

    iget-object p4, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {p4}, Lo/zO;->e()I

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lo/zI;->a(Ljava/lang/String;Ljava/lang/String;ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 645
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchEpisodeDetails:: service is not available"

    .line 647
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 648
    monitor-exit p0

    return p1

    .line 637
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(Ljava/lang/String;Lo/zU;)Z
    .locals 2

    .line 462
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p2}, Lo/zO;->b(Lo/zU;)I

    move-result p2

    .line 470
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lo/zI;->e(Ljava/lang/String;II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "fetchFalkorVideo:: service is not available"

    .line 473
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 463
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ljava/lang/String;Lo/zU;)V
    .locals 2

    .line 1132
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0, p2}, Lo/zO;->b(Lo/zU;)I

    move-result p2

    .line 1137
    iget-object v0, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v0}, Lo/zO;->b()Lo/zI;

    move-result-object v0

    iget-object v1, p0, Lo/zx;->c:Lo/zO;

    invoke-interface {v1}, Lo/zO;->e()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lo/zI;->c(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManagerBrowse"

    const-string p2, "markNotificationAsRead:: service is not available"

    .line 1139
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
