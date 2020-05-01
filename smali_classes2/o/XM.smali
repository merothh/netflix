.class Lo/XM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/XO;

.field private final d:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/XO;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/XM;->a:Lo/XO;

    iput-object p2, p0, Lo/XM;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/XM;->d:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/XM;->a:Lo/XO;

    iget-object v1, p0, Lo/XM;->e:Ljava/lang/String;

    iget-object v2, p0, Lo/XM;->d:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    invoke-static {v0, v1, v2}, Lo/XO;->c(Lo/XO;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    return-void
.end method
