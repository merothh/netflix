.class Lo/aY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/aZ;

.field private final b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final c:Lo/aeb$StateListAnimator;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/aZ;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lo/aeb$StateListAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aY;->a:Lo/aZ;

    iput-object p2, p0, Lo/aY;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p3, p0, Lo/aY;->e:Ljava/lang/String;

    iput-object p4, p0, Lo/aY;->c:Lo/aeb$StateListAnimator;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lo/aY;->a:Lo/aZ;

    iget-object v1, p0, Lo/aY;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p0, Lo/aY;->e:Ljava/lang/String;

    iget-object v3, p0, Lo/aY;->c:Lo/aeb$StateListAnimator;

    invoke-static {v0, v1, v2, v3}, Lo/aZ;->e(Lo/aZ;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lo/aeb$StateListAnimator;)V

    return-void
.end method
