.class Lo/oq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/oq;->b:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lo/oq;->d:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lo/oq;->e:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 24
    iput-object p3, p0, Lo/oq;->c:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lo/oq;->a:Ljava/lang/String;

    return-void
.end method

.method public static d(Lo/oC;Lo/op;Ljava/lang/String;)Lo/oq;
    .locals 7

    .line 32
    new-instance v6, Lo/oq;

    invoke-interface {p0}, Lo/oC;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lo/oC;->c()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-interface {p1}, Lo/op;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lo/op;->a()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-result-object v4

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/oq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;Ljava/lang/String;)V

    return-object v6
.end method
