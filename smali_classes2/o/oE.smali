.class public final Lo/oE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/og;


# instance fields
.field private b:J

.field private final c:Lo/oC;

.field private final d:Lo/oF;


# direct methods
.method public constructor <init>(Lo/oF;Lo/oC;)V
    .locals 1

    const-string v0, "progressInfo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "opd"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/oE;->d:Lo/oF;

    iput-object p2, p0, Lo/oE;->c:Lo/oC;

    const-wide/16 p1, -0x1

    .line 11
    iput-wide p1, p0, Lo/oE;->b:J

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 21
    iget-object v0, p0, Lo/oE;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ljava/lang/String;)J
    .locals 2

    const-string v0, "downloadableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lo/oE;->d:Lo/oF;

    iget-object v0, v0, Lo/oF;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/om;

    if-eqz p1, :cond_0

    .line 16
    iget-wide v0, p1, Lo/om;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/oE;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lo/oE;->b:J

    return-void
.end method
