.class public Lo/agP;
.super Lo/agR;
.source ""


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V
    .locals 6

    .line 41
    invoke-virtual {p2}, Lo/ahS;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lo/ahS;->f()Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-virtual {p2}, Lo/ahS;->g()Ljavax/crypto/SecretKey;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/agP;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    .line 42
    invoke-virtual {p2}, Lo/ahS;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v0, Lo/agz;->aj:Lo/agz;

    invoke-direct {p1, v0, p2}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lo/agz;Lo/ahS;)V

    throw p1
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 6

    if-eqz p3, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/ahS;->c()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lo/ahS;->c()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v2, p2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lo/agR;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-void
.end method
