.class public Lo/xi;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:J

.field private c:J

.field private final d:J

.field private final e:Lo/xz;


# direct methods
.method public constructor <init>(Lo/xz;J)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo/xi;->e:Lo/xz;

    .line 24
    iput-wide p2, p0, Lo/xi;->d:J

    return-void
.end method

.method private b()V
    .locals 6

    .line 48
    iget-wide v0, p0, Lo/xi;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "nf_play_cl"

    const-string v1, "removing CL context %s"

    invoke-static {v0, v1, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 50
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-wide v4, p0, Lo/xi;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 51
    iput-wide v2, p0, Lo/xi;->c:J

    :cond_0
    return-void
.end method


# virtual methods
.method public d(J)V
    .locals 5

    .line 28
    iget-wide v0, p0, Lo/xi;->a:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-direct {p0}, Lo/xi;->b()V

    .line 32
    iget-object v0, p0, Lo/xi;->e:Lo/xz;

    invoke-virtual {v0, p1, p2}, Lo/xz;->d(J)Ljava/lang/String;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/context/Xid;

    iget-wide v3, p0, Lo/xi;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v3, v4}, Lcom/netflix/cl/model/context/Xid;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v1

    iput-wide v1, p0, Lo/xi;->c:J

    .line 35
    const-class v1, Lo/E;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/E;

    if-eqz v1, :cond_1

    .line 37
    invoke-interface {v1, v0}, Lo/E;->d(Ljava/lang/String;)V

    .line 39
    :cond_1
    iput-wide p1, p0, Lo/xi;->a:J

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 40
    iget-wide v1, p0, Lo/xi;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, p2

    const/4 p2, 0x1

    aput-object v0, p1, p2

    const-string p2, "nf_play_cl"

    const-string v0, "adding CL context %s for XID %s"

    invoke-static {p2, v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public e()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lo/xi;->b()V

    return-void
.end method
