.class public abstract Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$Activity;,
        Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/Bj;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->b:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->c:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)J
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/Bj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e:Ljava/util/Map;

    iget-object p1, p1, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Bj;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e:Ljava/util/Map;

    return-object v0
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lo/Bj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Bj;

    return-object p1
.end method

.method public j()Lo/Bj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Bj;

    return-object v0
.end method
