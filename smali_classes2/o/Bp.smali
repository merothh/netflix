.class public Lo/Bp;
.super Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap<",
        "Lo/Bj;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:J


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bj;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-wide p4, p0, Lo/Bp;->d:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 28
    :cond_0
    iget-wide v0, p0, Lo/Bp;->d:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lo/Bp;->d:J

    return-wide v0
.end method
