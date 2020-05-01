.class Lo/wN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final b:J

.field private final c:Lo/wG;

.field private final d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;


# direct methods
.method public constructor <init>(Lo/wG;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/wN;->c:Lo/wG;

    iput-object p2, p0, Lo/wN;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput-object p3, p0, Lo/wN;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;

    iput-wide p4, p0, Lo/wN;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lo/wN;->c:Lo/wG;

    iget-object v1, p0, Lo/wN;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, p0, Lo/wN;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;

    iget-wide v3, p0, Lo/wN;->b:J

    invoke-static {v0, v1, v2, v3, v4}, Lo/wG;->a(Lo/wG;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixdatasource/NetflixNetworkError;J)V

    return-void
.end method
