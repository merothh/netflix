.class public Lo/aio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aim;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lo/ahX;)V
    .locals 0

    return-void
.end method

.method public b(Lo/ahS;Lo/ahX;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ahS;",
            "Lo/ahX;",
            ")",
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p2, p1}, Lo/ahX;->e(Lo/ahS;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lo/agz;->aB:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uit mtserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/ahX;->e()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "; mt "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/ahS;->b()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object p2, Lo/agz;->aF:Lo/agz;

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;)V

    throw p1

    .line 128
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/ahS;)Lo/agM;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lo/ahX;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;Lo/ahS;Lo/ahX;)V
    .locals 4

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 138
    invoke-virtual {p3, p2}, Lo/ahX;->e(Lo/ahS;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object v0, Lo/agz;->aB:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uit mtserialnumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lo/ahX;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "; mt "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/ahS;->b()J

    move-result-wide p2

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lo/ahS;)V
    .locals 0

    return-void
.end method

.method public d(Lo/ahS;)J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public d(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public e()Lo/ahS;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Lo/ahS;Lo/agM;)V
    .locals 0

    return-void
.end method

.method public e(Lo/ahX;)V
    .locals 0

    return-void
.end method
