.class public Lo/tO;
.super Lo/tC;
.source ""


# instance fields
.field private final b:Lcom/netflix/mediaclient/service/net/NetworkType;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;Lcom/netflix/mediaclient/service/net/NetworkType;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lo/tC;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    .line 15
    iput-object p5, p0, Lo/tO;->b:Lcom/netflix/mediaclient/service/net/NetworkType;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lo/tO;->b:Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/NetworkType;->e(Lcom/netflix/mediaclient/service/net/NetworkType;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lo/tO;->b:Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/NetworkType;->c(Lcom/netflix/mediaclient/service/net/NetworkType;)Z

    move-result v0

    return v0
.end method
