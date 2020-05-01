.class public Lo/aha;
.super Lo/agO;
.source ""


# instance fields
.field final d:Lo/aih;


# direct methods
.method public constructor <init>(Lo/aih;)V
    .locals 1

    .line 40
    sget-object v0, Lo/agT;->f:Lo/agT;

    invoke-direct {p0, v0}, Lo/agO;-><init>(Lo/agT;)V

    .line 41
    iput-object p1, p0, Lo/aha;->d:Lo/aih;

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/msl/util/MslContext;Lo/agQ;)Lo/agM;
    .locals 4

    .line 58
    instance-of p1, p2, Lo/agY;

    if-eqz p1, :cond_2

    .line 60
    check-cast p2, Lo/agY;

    .line 63
    invoke-virtual {p2}, Lo/agY;->c()Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lo/aha;->d:Lo/aih;

    invoke-interface {v0, p1}, Lo/aih;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lo/aha;->d:Lo/aih;

    invoke-virtual {p0}, Lo/aha;->e()Lo/agT;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lo/aih;->a(Ljava/lang/String;Lo/agT;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance p1, Lo/agS;

    invoke-direct {p1}, Lo/agS;-><init>()V

    return-object p1

    .line 69
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lo/agz;->bj:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication Scheme for Device Type Not Supported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/aha;->e()Lo/agT;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/netflix/msl/MslEntityAuthException;->e(Lo/agQ;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object p1

    throw p1

    .line 65
    :cond_1
    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lo/agz;->bp:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "none "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/netflix/msl/MslEntityAuthException;->e(Lo/agQ;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object p1

    throw p1

    .line 59
    :cond_2
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect authentication data type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/netflix/msl/util/MslContext;Lo/ahp;)Lo/agQ;
    .locals 0

    .line 49
    new-instance p1, Lo/agY;

    invoke-direct {p1, p2}, Lo/agY;-><init>(Lo/ahp;)V

    return-object p1
.end method
