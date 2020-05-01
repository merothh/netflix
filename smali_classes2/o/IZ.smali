.class Lo/IZ;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final b:Lo/IL;


# direct methods
.method public constructor <init>(Lo/IL;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/IZ;->b:Lo/IL;

    iput-object p2, p0, Lo/IZ;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/IZ;->b:Lo/IL;

    iget-object v1, p0, Lo/IZ;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    check-cast p1, Lo/FC;

    invoke-static {v0, v1, p1}, Lo/IL;->d(Lo/IL;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/FC;)V

    return-void
.end method
