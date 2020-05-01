.class public final Lo/agF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/msl/msg/MessageContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/agF$Activity;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lo/ahJ;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:[B

.field private final g:Lo/agH;

.field private final h:Lo/aie;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agM;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lo/ahJ;Lo/aie;[BLjava/lang/String;Lo/agH;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lo/ahJ;",
            "Lo/aie;",
            "[B",
            "Ljava/lang/String;",
            "Lo/agH;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agM;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lo/agF;->a:Z

    if-eqz p2, :cond_1

    .line 65
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    iput-boolean v0, p0, Lo/agF;->d:Z

    if-eqz p3, :cond_2

    .line 66
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lo/agF;->b:Z

    .line 67
    iput-object p4, p0, Lo/agF;->j:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lo/agF;->c:Lo/ahJ;

    .line 69
    iput-object p6, p0, Lo/agF;->h:Lo/aie;

    .line 70
    iput-object p7, p0, Lo/agF;->f:[B

    .line 71
    iput-object p8, p0, Lo/agF;->e:Ljava/lang/String;

    .line 72
    iput-object p9, p0, Lo/agF;->g:Lo/agH;

    if-eqz p10, :cond_3

    goto :goto_2

    .line 73
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p10

    :goto_2
    iput-object p10, p0, Lo/agF;->i:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lo/ahJ;Lo/aie;[BLjava/lang/String;Lo/agH;Ljava/util/Map;Lo/agF$5;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p10}, Lo/agF;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lo/ahJ;Lo/aie;[BLjava/lang/String;Lo/agH;Ljava/util/Map;)V

    return-void
.end method

.method public static k()Lo/agF$Activity;
    .locals 1

    .line 62
    new-instance v0, Lo/agF$Activity;

    invoke-direct {v0}, Lo/agF$Activity;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/ahz;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lo/agF;->g:Lo/agH;

    invoke-interface {v0}, Lo/agH;->n()Lo/ahz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b()Lo/ahJ;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/agF;->c:Lo/ahJ;

    return-object v0
.end method

.method public b(Lo/ahM;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lo/agF;->f:[B

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1, v0}, Lo/ahM;->write([B)V

    .line 130
    invoke-virtual {p1}, Lo/ahM;->close()V

    :cond_0
    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agM;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lo/agF;->i:Ljava/util/Map;

    return-object v0
.end method

.method public d()Lo/ahU;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lo/aie;
    .locals 0

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 96
    iget-object p1, p0, Lo/agF;->h:Lo/aie;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/agF;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Lo/ahQ;Z)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lo/agF;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo/agF;

    invoke-virtual {p0}, Lo/agF;->g()Z

    move-result v1

    invoke-virtual {p1}, Lo/agF;->g()Z

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lo/agF;->i()Z

    move-result v1

    invoke-virtual {p1}, Lo/agF;->i()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lo/agF;->f()Z

    move-result v1

    invoke-virtual {p1}, Lo/agF;->f()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lo/agF;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/agF;->e()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_0
    return v2

    :cond_6
    invoke-virtual {p0}, Lo/agF;->b()Lo/ahJ;

    move-result-object v1

    invoke-virtual {p1}, Lo/agF;->b()Lo/ahJ;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_1
    return v2

    :cond_8
    invoke-virtual {p0}, Lo/agF;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/agF;->h()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_2
    return v2

    :cond_a
    invoke-virtual {p0}, Lo/agF;->o()Lo/aie;

    move-result-object v1

    invoke-virtual {p1}, Lo/agF;->o()Lo/aie;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_3
    return v2

    :cond_c
    invoke-virtual {p0}, Lo/agF;->l()[B

    move-result-object v1

    invoke-virtual {p1}, Lo/agF;->l()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lo/agF;->m()Lo/agH;

    move-result-object v1

    invoke-virtual {p1}, Lo/agF;->m()Lo/agH;

    move-result-object v3

    if-nez v1, :cond_e

    if-eqz v3, :cond_f

    goto :goto_4

    :cond_e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_4
    return v2

    :cond_f
    invoke-virtual {p0}, Lo/agF;->n()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lo/agF;->n()Ljava/util/Map;

    move-result-object p1

    if-nez v1, :cond_10

    if-eqz p1, :cond_11

    goto :goto_5

    :cond_10
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    :goto_5
    return v2

    :cond_11
    return v0
.end method

.method public f()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lo/agF;->b:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lo/agF;->a:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/agF;->j:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 28
    invoke-virtual {p0}, Lo/agF;->g()Z

    move-result v0

    const/16 v1, 0x4f

    const/16 v2, 0x61

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v3, 0x3b

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lo/agF;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x4f

    goto :goto_1

    :cond_1
    const/16 v4, 0x61

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lo/agF;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x61

    :goto_2
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lo/agF;->e()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    const/16 v2, 0x2b

    if-nez v1, :cond_3

    const/16 v1, 0x2b

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lo/agF;->b()Lo/ahJ;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_4

    const/16 v1, 0x2b

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lo/agF;->h()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_5

    const/16 v1, 0x2b

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lo/agF;->o()Lo/aie;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_6

    const/16 v1, 0x2b

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lo/agF;->l()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lo/agF;->m()Lo/agH;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_7

    const/16 v1, 0x2b

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lo/agF;->n()Ljava/util/Map;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    return v0
.end method

.method public i()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lo/agF;->d:Z

    return v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()[B
    .locals 1

    .line 56
    iget-object v0, p0, Lo/agF;->f:[B

    return-object v0
.end method

.method public m()Lo/agH;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/agF;->g:Lo/agH;

    return-object v0
.end method

.method public n()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agM;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lo/agF;->i:Ljava/util/Map;

    return-object v0
.end method

.method public o()Lo/aie;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/agF;->h:Lo/aie;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientRequestMessageContext(encrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agF;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", integrityProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agF;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nonReplayable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agF;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", remoteEntityIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agF;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", debugContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agF;->b()Lo/ahJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agF;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userAuthData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agF;->o()Lo/aie;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agF;->l()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyRequestDataProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agF;->m()Lo/agH;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceTokenCryptoContexts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agF;->n()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
