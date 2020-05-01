.class Lo/rz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;


# instance fields
.field private final d:Lo/rr;


# direct methods
.method public constructor <init>(Lo/rr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/rz;->d:Lo/rr;

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V
    .locals 1

    iget-object v0, p0, Lo/rz;->d:Lo/rr;

    invoke-static {v0, p1}, Lo/rr;->e(Lo/rr;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V

    return-void
.end method
