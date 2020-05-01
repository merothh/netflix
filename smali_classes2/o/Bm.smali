.class public Lo/Bm;
.super Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Bm$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap<",
        "Lo/Bl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bl;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lo/Bm;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object p1

    check-cast p1, Lo/Bl;

    if-eqz p1, :cond_1

    .line 23
    iget-wide v0, p1, Lo/Bl;->g:J

    :cond_1
    return-wide v0
.end method

.method public b()Lo/Bm$ActionBar;
    .locals 3

    .line 27
    new-instance v0, Lo/Bm$ActionBar;

    iget-object v1, p0, Lo/Bm;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lo/Bm$ActionBar;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {v0}, Lo/Bm$ActionBar;->b(Lo/Bm$ActionBar;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lo/Bm;->e:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 29
    iget-object v1, p0, Lo/Bm;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/Bm$ActionBar;->c(Lo/Bm$ActionBar;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenericPlaylistMap id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Bm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " segmentsMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Bm;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " initialSegmentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Bm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
