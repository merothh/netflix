.class Lo/xu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/xu$Application;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lo/xu$Application;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/xs;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lo/xs;)V
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lo/xu;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lo/xs;I)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;Lo/xs;I)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/xu;->c:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lo/xu;->a:Ljava/util/PriorityQueue;

    .line 66
    iput-object p1, p0, Lo/xu;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    .line 67
    iput-object p2, p0, Lo/xu;->b:Lo/xs;

    .line 68
    iput p3, p0, Lo/xu;->d:I

    return-void
.end method


# virtual methods
.method public declared-synchronized b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lo/xu;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    instance-of v0, v0, Lo/Bp;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    iget-object p1, p0, Lo/xu;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    check-cast p1, Lo/Bp;

    invoke-virtual {p1}, Lo/Bp;->d()J

    move-result-wide p1

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    .line 82
    iget-object v0, p0, Lo/xu;->b:Lo/xs;

    invoke-interface {v0, p1, p2}, Lo/xs;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 135
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 87
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    iget v3, p0, Lo/xu;->d:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-nez p2, :cond_2

    .line 88
    iget-object p1, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p1, p2, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    .line 89
    :goto_0
    iget-object p2, p0, Lo/xu;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 92
    iget-object p2, p0, Lo/xu;->a:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->clear()V

    .line 93
    iget-object p2, p0, Lo/xu;->a:Ljava/util/PriorityQueue;

    new-instance v3, Lo/xu$Application;

    const v4, 0x7fffffff

    invoke-direct {v3, p1, v4}, Lo/xu$Application;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 94
    iput-object p1, p0, Lo/xu;->j:Ljava/lang/String;

    .line 96
    :cond_3
    :goto_1
    iget-object p1, p0, Lo/xu;->a:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_8

    .line 97
    iget-object p1, p0, Lo/xu;->a:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/xu$Application;

    .line 98
    invoke-static {p1}, Lo/xu$Application;->b(Lo/xu$Application;)Ljava/lang/String;

    move-result-object v4

    .line 99
    iget-object v5, p0, Lo/xu;->c:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v5, p0, Lo/xu;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {v5, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gtz v7, :cond_4

    goto :goto_1

    .line 104
    :cond_4
    iget-object v7, p0, Lo/xu;->b:Lo/xs;

    invoke-interface {v7, v5, v6}, Lo/xs;->a(J)Z

    move-result v7

    if-nez v7, :cond_5

    .line 105
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "PlaylistManifestHelper"

    const-string v8, "breadth first search missing manifest %s"

    new-array p2, p2, [Ljava/lang/Object;

    .line 106
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, p2, v3

    invoke-static {v7, v8, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 107
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_5
    iget-object p2, p0, Lo/xu;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {p2, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object p2

    iget-object p2, p2, Lo/Bj;->b:[Lo/Bo;

    array-length v4, p2

    :goto_2
    if-ge v3, v4, :cond_7

    aget-object v5, p2, v3

    .line 110
    iget-object v6, p0, Lo/xu;->c:Ljava/util/Map;

    iget-object v7, v5, Lo/Bo;->a:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 111
    iget-object v6, p0, Lo/xu;->a:Ljava/util/PriorityQueue;

    new-instance v7, Lo/xu$Application;

    iget-object v8, v5, Lo/Bo;->a:Ljava/lang/String;

    invoke-static {p1}, Lo/xu$Application;->c(Lo/xu$Application;)I

    move-result v9

    div-int/lit8 v9, v9, 0x64

    iget v5, v5, Lo/Bo;->b:I

    mul-int v9, v9, v5

    invoke-direct {v7, v8, v9}, Lo/xu$Application;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 114
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lo/xu;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt p1, p2, :cond_3

    .line 115
    monitor-exit p0

    return-object v0

    .line 121
    :cond_8
    :try_start_3
    iget-object p1, p0, Lo/xu;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->c()Ljava/util/Map;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lo/xu;->e:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 124
    iget-object v4, p0, Lo/xu;->b:Lo/xs;

    invoke-interface {v4, v1, v2}, Lo/xs;->a(J)Z

    move-result v4

    if-nez v4, :cond_a

    .line 125
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "PlaylistManifestHelper"

    const-string v5, "exhaustive search missing manifest %s"

    new-array v6, p2, [Ljava/lang/Object;

    .line 126
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lo/xu;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v1, v2, :cond_9

    .line 130
    monitor-exit p0

    return-object v0

    .line 133
    :cond_b
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
