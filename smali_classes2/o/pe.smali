.class public Lo/pe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Bh;


# instance fields
.field private final a:Lo/pb;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/oV;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

.field private g:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;Ljava/util/List;Lo/pb;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;",
            "Ljava/util/List<",
            "Lo/oV;",
            ">;",
            "Lo/pb;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lo/pe;->g:J

    .line 86
    iput-object p1, p0, Lo/pe;->e:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    .line 87
    iput-object p2, p0, Lo/pe;->b:Ljava/util/List;

    .line 88
    iput-object p3, p0, Lo/pe;->a:Lo/pb;

    .line 89
    iput p4, p0, Lo/pe;->c:I

    .line 90
    iput-object p5, p0, Lo/pe;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 61
    iget-object v0, p0, Lo/pe;->a:Lo/pb;

    invoke-virtual {v0}, Lo/pb;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 2

    .line 102
    iget-wide v0, p0, Lo/pe;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lo/pe;->g:J

    return-void
.end method

.method public b(Lo/oC;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lo/pe;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/oC;

    .line 123
    invoke-interface {v1}, Lo/oC;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lo/oC;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lo/pe;->a:Lo/pb;

    invoke-virtual {v0}, Lo/pb;->e()Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/pe;->d:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/io/File;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/pe;->a:Lo/pb;

    invoke-virtual {v0}, Lo/pb;->c()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public d(Lo/oC;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lo/pe;->b:Ljava/util/List;

    check-cast p1, Lo/oV;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()J
    .locals 2

    .line 55
    iget-object v0, p0, Lo/pe;->a:Lo/pb;

    invoke-virtual {v0}, Lo/pb;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lo/pe;->g:J

    return-void
.end method

.method public f()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lo/pe;->e:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->p()I

    move-result v0

    iget v1, p0, Lo/pe;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()J
    .locals 2

    .line 68
    iget-object v0, p0, Lo/pe;->a:Lo/pb;

    invoke-virtual {v0}, Lo/pb;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lo/pe;->g:J

    return-wide v0
.end method

.method public i()I
    .locals 1

    .line 73
    iget v0, p0, Lo/pe;->c:I

    return v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/oV;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lo/pe;->b:Ljava/util/List;

    return-object v0
.end method

.method public k()V
    .locals 2

    .line 131
    invoke-virtual {p0}, Lo/pe;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lo/aed;->e(Ljava/io/File;)Landroid/os/StatFs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lo/pe;->a:Lo/pb;

    invoke-virtual {v1, v0}, Lo/pb;->c(Landroid/os/StatFs;)V

    :cond_0
    return-void
.end method

.method public n()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lo/pe;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
