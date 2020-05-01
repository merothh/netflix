.class public final Lo/FontRequest;
.super Lo/BrowserContract;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FontRequest$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/Browser;",
        ">",
        "Lo/BrowserContract<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/Browser;ZLo/NetworkViolation;Lo/LeakedClosableViolation;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Lo/NetworkViolation;",
            "Lo/LeakedClosableViolation;",
            "ZZ)V"
        }
    .end annotation

    .line 59
    invoke-direct/range {p0 .. p6}, Lo/BrowserContract;-><init>(Lo/Browser;ZLo/NetworkViolation;Lo/LeakedClosableViolation;ZZ)V

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;Lcom/netflix/falkor/BranchMap;Ljava/lang/String;)Lo/FontRequest$Activity;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/falkor/BranchMap<",
            "Lcom/netflix/model/branches/SummarizedList<",
            "Lo/OneTimeUseBuilder;",
            "Lcom/netflix/model/leafs/LoLoMoSummaryImpl;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lo/FontRequest$Activity;"
        }
    .end annotation

    monitor-enter p0

    .line 269
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/netflix/model/branches/SummarizedList;

    invoke-virtual {v0}, Lcom/netflix/model/branches/SummarizedList;->b()Lo/agi;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 270
    invoke-virtual {v0}, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;->getExpiryTimeStamp()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto/16 :goto_1

    .line 276
    :cond_0
    invoke-virtual {p2, p3}, Lcom/netflix/falkor/BranchMap;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    .line 277
    instance-of v2, v0, Lo/OneTimeUseBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lo/OneTimeUseBuilder;

    invoke-virtual {v2}, Lo/OneTimeUseBuilder;->a()Lo/TextInputTimePickerView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 278
    check-cast v0, Lo/OneTimeUseBuilder;

    invoke-virtual {v0}, Lo/OneTimeUseBuilder;->a()Lo/TextInputTimePickerView;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "summary"

    aput-object v5, v2, v3

    .line 280
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    invoke-interface {v0, v2}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v2

    .line 281
    instance-of v5, v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v5, :cond_1

    .line 282
    invoke-interface {v0}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object p2

    .line 283
    new-instance p3, Lo/FontRequest$Activity;

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p3, p1, v2, p2}, Lo/FontRequest$Activity;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p3

    :cond_1
    :try_start_1
    const-string v0, "continueWatching"

    .line 291
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "queue"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/falkor/BranchMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 298
    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 299
    invoke-virtual {p2, v2}, Lcom/netflix/falkor/BranchMap;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v5

    check-cast v5, Lo/OneTimeUseBuilder;

    if-eqz v5, :cond_3

    .line 301
    invoke-virtual {v5}, Lo/OneTimeUseBuilder;->a()Lo/TextInputTimePickerView;

    move-result-object v5

    if-eqz v5, :cond_3

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "summary"

    aput-object v7, v6, v3

    .line 303
    invoke-static {v6}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v6

    invoke-interface {v5, v6}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v5

    invoke-virtual {p0, v5}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v5

    .line 304
    instance-of v6, v5, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v6, :cond_3

    .line 305
    check-cast v5, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 306
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListContext()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 307
    new-instance p2, Lo/FontRequest$Activity;

    invoke-direct {p2, p1, v5, v2}, Lo/FontRequest$Activity;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    .line 315
    :cond_4
    monitor-exit p0

    return-object v1

    .line 292
    :cond_5
    :goto_0
    monitor-exit p0

    return-object v1

    .line 271
    :cond_6
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "getCurrLomoByType"

    .line 145
    invoke-direct {p0, v0}, Lo/FontRequest;->c(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const-string p2, "NetflixModelProxy"

    const-string v4, "getCurrLomoByType had lolomoId=null. Please provide a lolomoId"

    .line 149
    invoke-static {p2, v4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-array p2, v2, [Ljava/lang/Object;

    const-string v4, "lolomo"

    aput-object v4, p2, v3

    .line 150
    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p2

    check-cast p2, Lo/OneTimeUseBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 152
    monitor-exit p0

    return-object v1

    .line 155
    :cond_0
    :try_start_1
    new-instance v4, Lo/OneTimeUseBuilder;

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "lolomos"

    aput-object v6, v5, v3

    aput-object p2, v5, v2

    invoke-static {v5}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-direct {v4, p2}, Lo/OneTimeUseBuilder;-><init>(Lo/TextInputTimePickerView;)V

    move-object p2, v4

    .line 158
    :cond_1
    invoke-virtual {p2}, Lo/OneTimeUseBuilder;->a()Lo/TextInputTimePickerView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v4

    check-cast v4, Lcom/netflix/falkor/BranchMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    .line 160
    monitor-exit p0

    return-object v1

    .line 164
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lcom/netflix/falkor/BranchMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 165
    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 166
    invoke-virtual {p2}, Lo/OneTimeUseBuilder;->a()Lo/TextInputTimePickerView;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v5, v7, v3

    const-string v8, "summary"

    aput-object v8, v7, v2

    invoke-static {v7}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v7

    invoke-interface {v6, v7}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v6

    invoke-virtual {p0, v6}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v6

    check-cast v6, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v6, :cond_3

    .line 167
    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v7

    if-ne v7, p1, :cond_3

    .line 168
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 173
    :try_start_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const-string v2, "SPY-13393: Catch CME in getCurrLomoByType"

    invoke-interface {p2, v0, v2, p1}, Lo/SpinnerAdapter;->e(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/FontRequest$Activity;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "getListsByContext"

    .line 191
    invoke-direct {p0, v0}, Lo/FontRequest;->c(Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-array p2, v3, [Ljava/lang/Object;

    const-string v1, "lolomos"

    aput-object v1, p2, v2

    .line 199
    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p2

    check-cast p2, Lcom/netflix/falkor/BranchMap;

    if-eqz p2, :cond_2

    .line 201
    invoke-virtual {p2}, Lcom/netflix/falkor/BranchMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    invoke-virtual {p2, v2}, Lcom/netflix/falkor/BranchMap;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v3

    check-cast v3, Lcom/netflix/model/branches/SummarizedList;

    if-eqz v3, :cond_0

    .line 203
    invoke-virtual {v3}, Lcom/netflix/model/branches/SummarizedList;->b()Lo/agi;

    move-result-object v4

    instance-of v4, v4, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {v3}, Lcom/netflix/model/branches/SummarizedList;->b()Lo/agi;

    move-result-object v4

    check-cast v4, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    invoke-virtual {v4}, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;->getExpiryTimeStamp()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 206
    invoke-direct {p0, v2, v3, p1}, Lo/FontRequest;->c(Ljava/lang/String;Lcom/netflix/falkor/BranchMap;Ljava/lang/String;)Lo/FontRequest$Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "lolomos"

    aput-object v4, v1, v2

    aput-object p2, v1, v3

    .line 215
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/branches/SummarizedList;

    if-eqz v1, :cond_2

    .line 216
    invoke-virtual {v1}, Lcom/netflix/model/branches/SummarizedList;->b()Lo/agi;

    move-result-object v2

    instance-of v2, v2, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    if-eqz v2, :cond_2

    .line 218
    invoke-virtual {v1}, Lcom/netflix/model/branches/SummarizedList;->b()Lo/agi;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    invoke-virtual {v2}, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;->getExpiryTimeStamp()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 219
    invoke-direct {p0, p2, v1, p1}, Lo/FontRequest;->c(Ljava/lang/String;Lcom/netflix/falkor/BranchMap;Ljava/lang/String;)Lo/FontRequest$Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 221
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 227
    :try_start_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const-string v2, "SPY-13393: Catch CME in getListsByContext"

    invoke-interface {p2, v1, v2, p1}, Lo/SpinnerAdapter;->e(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;IJ)V
    .locals 3

    .line 382
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "NetflixModelProxy"

    const-string p2, "Can\'t update bookmark position - videoID is null"

    .line 383
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "bookmark"

    aput-object v1, v0, p1

    .line 391
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    .line 392
    invoke-virtual {p0, p1}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p1

    check-cast p1, Lo/agp;

    if-nez p1, :cond_1

    return-void

    .line 401
    :cond_1
    invoke-virtual {p1, p2, p3, p4}, Lo/agp;->b(IJ)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lo/TextInputTimePickerView;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 428
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p1, v2, v0

    const/4 p1, 0x2

    const-string p2, "episodes"

    aput-object p2, v2, p1

    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p0, v1}, Lo/FontRequest;->b([Lo/TextInputTimePickerView;)V

    return-void
.end method

.method c(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1, p2}, Lo/FontRequest;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 98
    :cond_0
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 99
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 103
    :goto_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public declared-synchronized c(Lo/TextInputTimePickerView;)Lo/agj;
    .locals 2

    monitor-enter p0

    .line 353
    :try_start_0
    invoke-interface {p1}, Lo/TextInputTimePickerView;->a()Ljava/util/LinkedHashSet;

    move-result-object p1

    .line 354
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/TextInputTimePickerView;

    .line 355
    invoke-virtual {p0, v0}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v0

    .line 358
    instance-of v1, v0, Lo/OneTimeUseBuilder;

    if-eqz v1, :cond_1

    .line 359
    check-cast v0, Lo/OneTimeUseBuilder;

    const-class v1, Lo/agj;

    invoke-virtual {v0, p0, v1}, Lo/OneTimeUseBuilder;->c(Lo/TableLayout;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 361
    :cond_1
    instance-of v1, v0, Lo/agj;

    if-eqz v1, :cond_0

    .line 362
    check-cast v0, Lo/agj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    .line 374
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
    .locals 4

    const-string v0, "getListByContextFromHomeLolomo"

    .line 248
    invoke-direct {p0, v0}, Lo/FontRequest;->c(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lo/FontRequest;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 251
    invoke-virtual {p0, p1, v1}, Lo/FontRequest;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/FontRequest$Activity;

    .line 254
    iget-object v3, v2, Lo/FontRequest$Activity;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    iget-object p1, v2, Lo/FontRequest$Activity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public declared-synchronized d(ILjava/util/Collection;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "LT::Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">(I",
            "Ljava/util/Collection<",
            "Lo/TextInputTimePickerView;",
            ">;)",
            "Ljava/util/List<",
            "T",
            "LT;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 321
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/TextInputTimePickerView;

    .line 324
    invoke-interface {v1}, Lo/TextInputTimePickerView;->a()Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 325
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/TextInputTimePickerView;

    .line 326
    invoke-virtual {p0, v3}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v4

    .line 327
    instance-of v5, v4, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v5, :cond_1

    .line 328
    check-cast v4, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 329
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 330
    invoke-interface {v4, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->setListPos(I)V

    .line 331
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_0

    :cond_2
    const-string v5, "NetflixModelProxy"

    const-string v6, "got unidentified lomo - pql: %s, lomo: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    .line 337
    invoke-static {v5, v6, v7}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 347
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [Lo/TextInputTimePickerView;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "searchLolomo"

    aput-object v3, v2, v0

    .line 441
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    aput-object v2, p1, v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "searchLolomos"

    aput-object v3, v2, v0

    .line 442
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v2, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "searchLists"

    aput-object v3, v1, v0

    .line 443
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    aput-object v0, p1, v2

    .line 440
    invoke-virtual {p0, p1}, Lo/FontRequest;->b([Lo/TextInputTimePickerView;)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Lo/TextInputTimePickerView;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "newSearch"

    aput-object v2, v1, v0

    .line 446
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lo/FontRequest;->b([Lo/TextInputTimePickerView;)V

    :goto_0
    return-void
.end method

.method e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 467
    invoke-virtual {p0}, Lo/FontRequest;->h()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "lolomo"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "summary"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 471
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/FontRequest;->e(Ljava/util/Collection;)Lo/TextClock;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    aput-object p1, v1, v5

    aput-object v4, v1, v0

    .line 472
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/FontRequest;->e(Ljava/util/Collection;)Lo/TextClock;

    .line 473
    invoke-virtual {p0}, Lo/FontRequest;->h()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "getHomeLolomoId"

    .line 118
    invoke-direct {p0, v0}, Lo/FontRequest;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "lolomo"

    aput-object v3, v1, v2

    .line 120
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v1

    check-cast v1, Lo/OneTimeUseBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 122
    monitor-exit p0

    return-object v2

    .line 125
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lo/OneTimeUseBuilder;->a()Lo/TextInputTimePickerView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 126
    invoke-interface {v1}, Lo/TextInputTimePickerView;->b()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    invoke-interface {v1}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 127
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Z
    .locals 4

    .line 406
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/FontRequest;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {p0, v1, v0}, Lo/FontRequest;->c(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 409
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "NetflixModelProxy"

    if-eqz v0, :cond_0

    const-string v0, "CW doesn\'t exist - lolomoId is empty"

    .line 410
    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 414
    :cond_0
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CW doesn\'t exist - lomo id is empty"

    .line 415
    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v0, -0x1

    .line 419
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CW doesn\'t exist - lomo index is invalid"

    .line 420
    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public o()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Lo/TextInputTimePickerView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "searchPage"

    aput-object v4, v2, v3

    const-string v4, "search"

    aput-object v4, v2, v0

    .line 455
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lo/FontRequest;->b([Lo/TextInputTimePickerView;)V

    return-void
.end method
