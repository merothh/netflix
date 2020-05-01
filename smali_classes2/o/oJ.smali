.class public Lo/oJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/op;


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ok;",
            ">;"
        }
    .end annotation
.end field

.field private final e:J


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ok;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/oJ;->d:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lo/oJ;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object p1, p0, Lo/oJ;->d:Ljava/util/List;

    invoke-static {p1}, Lo/ok;->d(Ljava/util/List;)V

    .line 24
    iput-object p2, p0, Lo/oJ;->b:Ljava/lang/String;

    .line 25
    iput-wide p3, p0, Lo/oJ;->e:J

    return-void
.end method

.method public static b(Lo/sP;)Lo/oJ;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 29
    invoke-virtual {p0}, Lo/sP;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {p0}, Lo/sP;->c()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 34
    invoke-static {v5}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 35
    new-instance v6, Lo/ok;

    const-wide/16 v7, 0x1

    const/4 v9, 0x1

    invoke-direct {v6, v5, v9, v7, v8}, Lo/ok;-><init>(Ljava/lang/String;IJ)V

    .line 40
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 43
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 44
    new-instance v0, Lo/oJ;

    .line 45
    invoke-virtual {p0}, Lo/sP;->d()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {p0}, Lo/sP;->a()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lo/oJ;-><init>(Ljava/util/List;Ljava/lang/String;J)V

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
    .locals 1

    .line 68
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->e:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lo/oJ;->e:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/oJ;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ok;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lo/oJ;->d:Ljava/util/List;

    return-object v0
.end method
