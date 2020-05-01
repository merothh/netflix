.class Lo/xg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

.field private final d:Lo/wZ;

.field private final e:Lo/xo;

.field private final f:Lcom/netflix/mediaclient/media/PreferredLanguageData;

.field private final j:Z


# direct methods
.method public constructor <init>(Lo/wZ;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;JLo/xo;Lcom/netflix/mediaclient/media/PreferredLanguageData;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/xg;->d:Lo/wZ;

    iput-wide p2, p0, Lo/xg;->a:J

    iput-object p4, p0, Lo/xg;->c:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    iput-wide p5, p0, Lo/xg;->b:J

    iput-object p7, p0, Lo/xg;->e:Lo/xo;

    iput-object p8, p0, Lo/xg;->f:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    iput-boolean p9, p0, Lo/xg;->j:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lo/xg;->d:Lo/wZ;

    iget-wide v1, p0, Lo/xg;->a:J

    iget-object v3, p0, Lo/xg;->c:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    iget-wide v4, p0, Lo/xg;->b:J

    iget-object v6, p0, Lo/xg;->e:Lo/xo;

    iget-object v7, p0, Lo/xg;->f:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    iget-boolean v8, p0, Lo/xg;->j:Z

    invoke-static/range {v0 .. v8}, Lo/wZ;->b(Lo/wZ;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;JLo/xo;Lcom/netflix/mediaclient/media/PreferredLanguageData;Z)V

    return-void
.end method
