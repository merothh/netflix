.class Lo/tv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lo/Bq;

.field private final d:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;


# direct methods
.method public constructor <init>(Lo/Bq;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/tv;->c:Lo/Bq;

    iput-object p2, p0, Lo/tv;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/tv;->d:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/tv;->c:Lo/Bq;

    iget-object v1, p0, Lo/tv;->b:Ljava/lang/String;

    iget-object v2, p0, Lo/tv;->d:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    invoke-static {v0, v1, v2}, Lo/tt;->d(Lo/Bq;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    return-void
.end method
