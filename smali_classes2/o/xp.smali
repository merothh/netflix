.class Lo/xp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo/xf;

.field private final d:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/xf;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/xp;->b:Lo/xf;

    iput-object p2, p0, Lo/xp;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/xp;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    iput-object p4, p0, Lo/xp;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V
    .locals 4

    iget-object v0, p0, Lo/xp;->b:Lo/xf;

    iget-object v1, p0, Lo/xp;->e:Ljava/lang/String;

    iget-object v2, p0, Lo/xp;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    iget-object v3, p0, Lo/xp;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lo/xf;->d(Lo/xf;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V

    return-void
.end method
