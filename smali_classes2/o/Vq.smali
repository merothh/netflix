.class public final Lo/Vq;
.super Lo/MessagePdu;
.source ""


# static fields
.field public static final b:Lo/Vq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/Vq;

    invoke-direct {v0}, Lo/Vq;-><init>()V

    sput-object v0, Lo/Vq;->b:Lo/Vq;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "InteractiveUtil"

    .line 14
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/model/leafs/originals/interactive/Moment;)J
    .locals 1

    const-string v0, "moment"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, p1}, Lo/Vq;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/Vq;->d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;Lcom/netflix/model/leafs/originals/interactive/Moment;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)Ljava/lang/Long;
    .locals 2

    if-eqz p1, :cond_0

    .line 169
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;
    .locals 1

    .line 161
    instance-of v0, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;JLjava/util/Map;Lo/UpdateEngine;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap<",
            "*>;J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            ">;>;",
            "Lo/UpdateEngine;",
            ")Z"
        }
    .end annotation

    const-string v0, "momentsBySegment"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBusFactory"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 63
    new-instance v7, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;

    move-object v1, v7

    move-wide v2, p4

    move-object v4, v0

    move-object v5, p1

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveUtil$interactiveSeekTo$1;-><init>(JLkotlin/jvm/internal/Ref$BooleanRef;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/UpdateEngine;)V

    check-cast v7, Lo/alO;

    .line 59
    invoke-static {p2, p3, p6, v7}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    .line 157
    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    return p1
.end method

.method public final c(Ljava/lang/Long;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;J)Lo/Bm;
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->momentsBySegment()Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 31
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 32
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    new-array v9, v0, [Lo/Bo;

    .line 34
    new-instance v0, Lo/Bl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v0

    move-wide v7, p3

    invoke-direct/range {v1 .. v9}, Lo/Bl;-><init>(JLjava/lang/String;JJ[Lo/Bo;)V

    .line 35
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p3, Ljava/util/Map;

    .line 36
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance p4, Lo/Bm;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p3, p2, p1}, Lo/Bm;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    :cond_1
    return-object v0
.end method

.method public final d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;Lcom/netflix/model/leafs/originals/interactive/Moment;)J
    .locals 8

    const-string v0, "moment"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, p1}, Lo/Vq;->a(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 178
    :goto_0
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->uiHideMS()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v4, v0

    if-gez p1, :cond_1

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->endMs()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 p1, 0xbb8

    int-to-long v6, p1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->uiHideMS()Ljava/lang/Long;

    move-result-object p1

    .line 179
    :goto_1
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->startMs()Ljava/lang/Long;

    move-result-object v4

    const-string v5, "moment.startMs()"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v2, v6

    if-gez v4, :cond_2

    .line 180
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->startMs()Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 182
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-static {p1, p2, v0, v1}, Lo/amG;->d(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Ljava/lang/Long;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lo/Vq;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Vq;->a(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
