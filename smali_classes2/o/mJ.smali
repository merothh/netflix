.class public Lo/mJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/msl/msg/MessageContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/mJ$Application;
    }
.end annotation


# instance fields
.field a:Lo/ahJ;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:[B

.field private g:Lo/aie;

.field private h:Lo/agH;

.field private i:Ljava/lang/String;

.field private j:Z

.field private m:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lo/ahJ;Lo/aie;[BLjava/lang/String;Lo/agH;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lo/mJ;->d:Z

    if-eqz p2, :cond_1

    .line 89
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    iput-boolean v0, p0, Lo/mJ;->e:Z

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    .line 90
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lo/mJ;->b:Z

    .line 91
    iput-object p4, p0, Lo/mJ;->i:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Lo/mJ;->a:Lo/ahJ;

    .line 93
    iput-object p6, p0, Lo/mJ;->g:Lo/aie;

    .line 94
    iput-object p7, p0, Lo/mJ;->f:[B

    .line 95
    iput-object p8, p0, Lo/mJ;->c:Ljava/lang/String;

    .line 96
    iput-object p9, p0, Lo/mJ;->h:Lo/agH;

    if-eqz p10, :cond_3

    .line 97
    invoke-virtual {p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lo/mJ;->j:Z

    if-eqz p11, :cond_4

    .line 98
    invoke-virtual {p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_4
    iput-boolean p1, p0, Lo/mJ;->m:Z

    return-void
.end method

.method public static n()Lo/mJ$Application;
    .locals 1

    .line 268
    new-instance v0, Lo/mJ$Application;

    invoke-direct {v0}, Lo/mJ$Application;-><init>()V

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

    .line 130
    iget-object v0, p0, Lo/mJ;->h:Lo/agH;

    invoke-interface {v0}, Lo/agH;->n()Lo/ahz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b()Lo/ahJ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lo/ahM;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lo/mJ;->f:[B

    if-eqz v0, :cond_0

    .line 171
    :try_start_0
    invoke-virtual {p1, v0}, Lo/ahM;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {p1}, Lo/ahM;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lo/ahM;->close()V

    .line 175
    throw v0

    .line 177
    :cond_0
    invoke-virtual {p1}, Lo/ahM;->close()V

    :goto_0
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

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

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

    .line 116
    iget-object p1, p0, Lo/mJ;->g:Lo/aie;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lo/mJ;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Lo/ahQ;Z)V
    .locals 5

    .line 141
    iget-boolean p2, p0, Lo/mJ;->m:Z

    if-eqz p2, :cond_4

    const-string p2, "msl_AndroidRequestMessageContext"

    const-string v0, "updateServiceTokens:: Removing service tokens from request!"

    .line 142
    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 144
    invoke-virtual {p1}, Lo/ahQ;->a()Ljava/util/Set;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ahV;

    if-nez v1, :cond_0

    const-string v1, "Service token is null, this should NOT happen"

    .line 147
    invoke-static {p2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v1}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Service token name is empty, this should NOT happen"

    .line 151
    invoke-static {p2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 154
    invoke-virtual {v1}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Excluding service token %s"

    invoke-static {p2, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    invoke-virtual {v1}, Lo/ahV;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/ahQ;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string p1, "updateServiceTokens:: builder is null! This should not happen!"

    .line 159
    invoke-static {p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_12

    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 216
    :cond_1
    check-cast p1, Lo/mJ;

    .line 218
    iget-boolean v2, p0, Lo/mJ;->d:Z

    iget-boolean v3, p1, Lo/mJ;->d:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 219
    :cond_2
    iget-boolean v2, p0, Lo/mJ;->e:Z

    iget-boolean v3, p1, Lo/mJ;->e:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 220
    :cond_3
    iget-boolean v2, p0, Lo/mJ;->b:Z

    iget-boolean v3, p1, Lo/mJ;->b:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 221
    :cond_4
    iget-boolean v2, p0, Lo/mJ;->j:Z

    iget-boolean v3, p1, Lo/mJ;->j:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 222
    :cond_5
    iget-object v2, p0, Lo/mJ;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lo/mJ;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lo/mJ;->c:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_0
    return v1

    .line 224
    :cond_7
    iget-object v2, p0, Lo/mJ;->a:Lo/ahJ;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lo/mJ;->a:Lo/ahJ;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_8
    iget-object v2, p1, Lo/mJ;->a:Lo/ahJ;

    if-eqz v2, :cond_9

    :goto_1
    return v1

    .line 226
    :cond_9
    iget-object v2, p0, Lo/mJ;->i:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lo/mJ;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_a
    iget-object v2, p1, Lo/mJ;->i:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_2
    return v1

    .line 227
    :cond_b
    iget-object v2, p0, Lo/mJ;->g:Lo/aie;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lo/mJ;->g:Lo/aie;

    invoke-virtual {v2, v3}, Lo/aie;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_3

    :cond_c
    iget-object v2, p1, Lo/mJ;->g:Lo/aie;

    if-eqz v2, :cond_d

    :goto_3
    return v1

    .line 229
    :cond_d
    iget-object v2, p0, Lo/mJ;->f:[B

    iget-object v3, p1, Lo/mJ;->f:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 230
    :cond_e
    iget-boolean v2, p0, Lo/mJ;->m:Z

    iget-boolean v3, p1, Lo/mJ;->m:Z

    if-eq v2, v3, :cond_f

    return v1

    .line 231
    :cond_f
    iget-object v2, p0, Lo/mJ;->h:Lo/agH;

    iget-object p1, p1, Lo/mJ;->h:Lo/agH;

    if-eqz v2, :cond_10

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_10
    if-nez p1, :cond_11

    goto :goto_4

    :cond_11
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_12
    :goto_5
    return v1
.end method

.method public f()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lo/mJ;->b:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lo/mJ;->d:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lo/mJ;->i:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 236
    iget-boolean v0, p0, Lo/mJ;->d:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 237
    iget-boolean v1, p0, Lo/mJ;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 238
    iget-boolean v1, p0, Lo/mJ;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 239
    iget-object v1, p0, Lo/mJ;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 240
    iget-object v1, p0, Lo/mJ;->a:Lo/ahJ;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 241
    iget-object v1, p0, Lo/mJ;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 242
    iget-object v1, p0, Lo/mJ;->g:Lo/aie;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lo/aie;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 243
    iget-object v1, p0, Lo/mJ;->f:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 244
    iget-object v1, p0, Lo/mJ;->h:Lo/agH;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 245
    iget-boolean v1, p0, Lo/mJ;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 246
    iget-boolean v1, p0, Lo/mJ;->m:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lo/mJ;->e:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lo/mJ;->j:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidRequestMessageContext{encrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/mJ;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", integrityProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/mJ;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nonReplayable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/mJ;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", remoteEntityIdentity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mJ;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", debugContext="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/mJ;->a:Lo/ahJ;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/mJ;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", userAuthData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mJ;->g:Lo/aie;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mJ;->f:[B

    .line 260
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyRequestDataProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mJ;->h:Lo/agH;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestingTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/mJ;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", excludeServiceTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/mJ;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
