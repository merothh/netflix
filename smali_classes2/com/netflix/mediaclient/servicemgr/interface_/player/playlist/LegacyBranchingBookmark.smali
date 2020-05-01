.class public Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;
.super Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;
.source ""


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 20
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ENTIRE_PLAYABLE_AS_A_SEGMENT"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;J)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;
    .locals 8

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->c()Ljava/util/Map;

    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Bj;

    .line 45
    iget-wide v3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->e:J

    iget-wide v5, v2, Lo/Bj;->e:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    iget-wide v3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->e:J

    iget-wide v5, v2, Lo/Bj;->d:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    .line 48
    iget-wide v3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->e:J

    add-long/2addr v3, p2

    iget-wide v5, v2, Lo/Bj;->d:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    .line 49
    iget-wide v3, v2, Lo/Bj;->d:J

    sub-long/2addr v3, p2

    iget-wide p1, v2, Lo/Bj;->e:J

    sub-long/2addr v3, p1

    const-wide/16 p1, 0x0

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_0

    .line 51
    :cond_2
    iget-wide p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->e:J

    iget-wide v1, v2, Lo/Bj;->e:J

    sub-long/2addr p1, v1

    .line 53
    :goto_0
    new-instance p3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p3, v1, v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object p3

    :cond_3
    return-object v1
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->e:J

    return-wide v0
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;
    .locals 2

    const-wide/16 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;J)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;
    .locals 2

    const-wide/16 v0, 0xbb8

    .line 34
    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/LegacyBranchingBookmark;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;J)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object p1

    return-object p1
.end method
