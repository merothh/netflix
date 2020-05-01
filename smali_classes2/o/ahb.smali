.class public Lo/ahb;
.super Lo/agO;
.source ""


# instance fields
.field private final c:Lo/ahc;

.field private final d:Ljava/lang/String;

.field final e:Lo/aih;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/ahc;Lo/aih;)V
    .locals 1

    .line 61
    sget-object v0, Lo/agT;->c:Lo/agT;

    invoke-direct {p0, v0}, Lo/agO;-><init>(Lo/agT;)V

    .line 62
    iput-object p1, p0, Lo/ahb;->d:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lo/ahb;->c:Lo/ahc;

    .line 64
    iput-object p3, p0, Lo/ahb;->e:Lo/aih;

    return-void
.end method

.method public constructor <init>(Lo/ahc;Lo/aih;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0, p1, p2}, Lo/ahb;-><init>(Ljava/lang/String;Lo/ahc;Lo/aih;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/msl/util/MslContext;Lo/agQ;)Lo/agM;
    .locals 6

    .line 81
    instance-of v0, p2, Lo/agW;

    if-eqz v0, :cond_6

    .line 83
    check-cast p2, Lo/agW;

    .line 86
    invoke-virtual {p2}, Lo/agW;->c()Ljava/lang/String;

    move-result-object v2

    .line 87
    iget-object v0, p0, Lo/ahb;->e:Lo/aih;

    invoke-interface {v0, v2}, Lo/aih;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 91
    iget-object v0, p0, Lo/ahb;->e:Lo/aih;

    invoke-virtual {p0}, Lo/ahb;->e()Lo/agT;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lo/aih;->a(Ljava/lang/String;Lo/agT;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    invoke-virtual {p2}, Lo/agW;->e()Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lo/ahb;->c:Lo/ahc;

    invoke-interface {v1, v0}, Lo/ahc;->e(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    .line 97
    iget-object v1, p0, Lo/ahb;->c:Lo/ahc;

    invoke-interface {v1, v0}, Lo/ahc;->c(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 100
    iget-object v1, p0, Lo/ahb;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lo/agz;->bq:Lo/agz;

    invoke-direct {p1, v1, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslEntityAuthException;->e(Lo/agQ;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object p1

    throw p1

    .line 104
    :cond_1
    :goto_0
    iget-object v1, p0, Lo/ahb;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    .line 105
    :cond_2
    new-instance p1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lo/agz;->bh:Lo/agz;

    invoke-direct {p1, v1, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslEntityAuthException;->e(Lo/agQ;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object p1

    throw p1

    .line 108
    :cond_3
    :goto_1
    new-instance p2, Lcom/netflix/msl/crypto/RsaCryptoContext;

    sget-object v5, Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;->c:Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/crypto/RsaCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Lcom/netflix/msl/crypto/RsaCryptoContext$Mode;)V

    return-object p2

    .line 92
    :cond_4
    new-instance p1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v0, Lo/agz;->bj:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication Scheme for Device Type Not Supported "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahb;->e()Lo/agT;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslEntityAuthException;->e(Lo/agQ;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object p1

    throw p1

    .line 88
    :cond_5
    new-instance p1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v0, Lo/agz;->bp:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rsa "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/netflix/msl/MslEntityAuthException;->e(Lo/agQ;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object p1

    throw p1

    .line 82
    :cond_6
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

    .line 72
    new-instance p1, Lo/agW;

    invoke-direct {p1, p2}, Lo/agW;-><init>(Lo/ahp;)V

    return-object p1
.end method
