.class public Lo/agU;
.super Lo/agQ;
.source ""


# static fields
.field private static final e:Lorg/slf4j/Logger;


# instance fields
.field private final a:Lcom/netflix/msl/util/MslContext;

.field private final b:Lo/ahS;

.field private c:Ljava/lang/String;

.field private final d:Lo/agQ;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/ahn;",
            "Lo/ahp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lo/agU;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lo/agU;->e:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/agQ;Ljava/lang/String;)V
    .locals 1

    .line 102
    sget-object v0, Lo/agX;->m:Lo/agT;

    invoke-direct {p0, v0}, Lo/agQ;-><init>(Lo/agT;)V

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/agU;->f:Ljava/util/Map;

    .line 103
    iput-object p1, p0, Lo/agU;->a:Lcom/netflix/msl/util/MslContext;

    .line 104
    iput-object p2, p0, Lo/agU;->b:Lo/ahS;

    .line 105
    iput-object p3, p0, Lo/agU;->d:Lo/agQ;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, ""

    .line 106
    :goto_0
    iput-object p4, p0, Lo/agU;->c:Ljava/lang/String;

    .line 109
    :try_start_0
    sget-object p1, Lo/agU;->e:Lorg/slf4j/Logger;

    const-string p2, "Target ESN = {}"

    invoke-virtual {p3}, Lo/agQ;->c()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 112
    sget-object p2, Lo/agU;->e:Lorg/slf4j/Logger;

    const-string p3, "Target ESN = Unknown"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;)V
    .locals 8

    const-string v0, "migration authdata "

    .line 136
    sget-object v1, Lo/agX;->m:Lo/agT;

    invoke-direct {p0, v1}, Lo/agQ;-><init>(Lo/agT;)V

    .line 300
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lo/agU;->f:Ljava/util/Map;

    .line 137
    iput-object p1, p0, Lo/agU;->a:Lcom/netflix/msl/util/MslContext;

    .line 139
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v1

    :try_start_0
    const-string v2, "authdata"

    .line 144
    invoke-virtual {p2, v2}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "signature"

    .line 145
    invoke-virtual {p2, v3}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_4

    .line 147
    :try_start_1
    new-instance v4, Lo/ahS;

    const-string v5, "mastertoken"

    invoke-virtual {p2, v5, v1}, Lo/ahp;->d(Ljava/lang/String;Lo/aho;)Lo/ahp;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lo/ahS;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahp;)V

    iput-object v4, p0, Lo/agU;->b:Lo/ahS;

    .line 148
    sget-object v4, Lo/agU;->e:Lorg/slf4j/Logger;

    const-string v5, "Found source MasterToken with ESN {}"

    iget-object v6, p0, Lo/agU;->b:Lo/ahS;

    invoke-virtual {v6}, Lo/ahS;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_4

    .line 162
    :try_start_2
    iget-object v4, p0, Lo/agU;->b:Lo/ahS;

    invoke-static {p1, v4}, Lo/agU;->e(Lcom/netflix/msl/util/MslContext;Lo/ahS;)Lo/agM;

    move-result-object v4

    .line 163
    sget-object v5, Lo/agU;->e:Lorg/slf4j/Logger;

    const-string v6, "Got crypto context for MasterToken with ESN {}"

    iget-object v7, p0, Lo/agU;->b:Lo/ahS;

    invoke-virtual {v7}, Lo/ahS;->e()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    :try_start_3
    invoke-virtual {v4, v2, v3, v1}, Lo/agM;->e([B[BLo/aho;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    invoke-virtual {v4, v2, v1}, Lo/agM;->d([BLo/aho;)[B

    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Lo/aho;->c([B)Lo/ahp;

    move-result-object v1

    .line 178
    sget-object v2, Lo/agU;->e:Lorg/slf4j/Logger;

    const-string v3, "Target auth data: {}"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    invoke-static {p1, v1}, Lo/agQ;->e(Lcom/netflix/msl/util/MslContext;Lo/ahp;)Lo/agQ;

    move-result-object p1

    iput-object p1, p0, Lo/agU;->d:Lo/agQ;
    :try_end_3
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string p1, "auxinfo"

    .line 187
    invoke-virtual {p2, p1}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/agU;->c:Ljava/lang/String;

    .line 188
    sget-object p1, Lo/agU;->e:Lorg/slf4j/Logger;

    const-string p2, "Auxiliary info: {}"

    iget-object v0, p0, Lo/agU;->c:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    sget-object p1, Lo/agU;->e:Lorg/slf4j/Logger;

    const-string p2, "No optional auxiliary info field received"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 193
    :goto_0
    sget-object p1, Lo/agU;->e:Lorg/slf4j/Logger;

    iget-object p2, p0, Lo/agU;->b:Lo/ahS;

    invoke-virtual {p2}, Lo/ahS;->e()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lo/agU;->d:Lo/agQ;

    invoke-virtual {v0}, Lo/agQ;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Source ESN = {}, Target ESN = {}"

    invoke-interface {p1, v1, p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 173
    :cond_0
    :try_start_5
    sget-object p1, Lo/agU;->e:Lorg/slf4j/Logger;

    const-string v1, "Entity migration received ciphertext that failed verification with current session keys, there is some sort of mismatch"

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 174
    new-instance p1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lo/agz;->bv:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/ahp;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p1

    .line 182
    sget-object v1, Lo/agU;->e:Lorg/slf4j/Logger;

    const-string v2, "Error parsing decrypted data"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lo/agz;->e:Lo/agz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/ahp;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p1

    .line 166
    sget-object p2, Lo/agU;->e:Lorg/slf4j/Logger;

    const-string v0, "Unable to get crypto context for this MasterToken"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    new-instance p2, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v0, Lo/agz;->bs:Lo/agz;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 151
    :try_start_6
    sget-object v1, Lo/agU;->e:Lorg/slf4j/Logger;

    const-string v2, "Could not create MasterToken"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lo/agz;->by:Lo/agz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/ahp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, p1}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception p1

    .line 155
    sget-object v0, Lo/agU;->e:Lorg/slf4j/Logger;

    const-string v1, "Trouble extracting auth data fields"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lo/agz;->e:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migration protected authdata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/ahp;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static e(Lcom/netflix/msl/util/MslContext;Lo/ahS;)Lo/agM;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/aim;->b(Lo/ahS;)Lo/agM;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lo/agP;

    invoke-direct {v0, p0, p1}, Lo/agP;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lo/agU;->d:Lo/agQ;

    invoke-virtual {v0}, Lo/agQ;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lo/ahS;
    .locals 1

    .line 203
    iget-object v0, p0, Lo/agU;->b:Lo/ahS;

    return-object v0
.end method

.method public d(Lo/aho;Lo/ahn;)Lo/ahp;
    .locals 5

    .line 229
    iget-object v0, p0, Lo/agU;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object p1, p0, Lo/agU;->f:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ahp;

    return-object p1

    .line 235
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/agU;->a:Lcom/netflix/msl/util/MslContext;

    iget-object v1, p0, Lo/agU;->b:Lo/ahS;

    invoke-static {v0, v1}, Lo/agU;->e(Lcom/netflix/msl/util/MslContext;Lo/ahS;)Lo/agM;

    move-result-object v0
    :try_end_0
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    iget-object v1, p0, Lo/agU;->d:Lo/agQ;

    invoke-virtual {v1, p1, p2}, Lo/agQ;->a(Lo/aho;Lo/ahn;)[B

    move-result-object v1

    .line 244
    :try_start_1
    invoke-virtual {v0, v1, p1, p2}, Lo/agM;->e([BLo/aho;Lo/ahn;)[B

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1, p1, p2}, Lo/agM;->c([BLo/aho;Lo/ahn;)[B

    move-result-object v0
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v2

    .line 252
    iget-object v3, p0, Lo/agU;->b:Lo/ahS;

    const-string v4, "mastertoken"

    invoke-virtual {v2, v4, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v3, "authdata"

    .line 253
    invoke-virtual {v2, v3, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v1, "signature"

    .line 254
    invoke-virtual {v2, v1, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 255
    iget-object v0, p0, Lo/agU;->c:Ljava/lang/String;

    const-string v1, "auxinfo"

    invoke-virtual {v2, v1, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 258
    invoke-virtual {p1, v2, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object v0

    .line 259
    invoke-virtual {p1, v0}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p1

    .line 262
    iget-object v0, p0, Lo/agU;->f:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catch_0
    move-exception p1

    .line 247
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error encrypting and signing the authentication data."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 237
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Master token crypto context cannot be retrieved or created."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public e()Lo/agQ;
    .locals 1

    .line 212
    iget-object v0, p0, Lo/agU;->d:Lo/agQ;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 272
    :cond_0
    instance-of v1, p1, Lo/agU;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 273
    :cond_1
    move-object v1, p1

    check-cast v1, Lo/agU;

    .line 274
    invoke-super {p0, p1}, Lo/agQ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/agU;->b:Lo/ahS;

    iget-object v3, v1, Lo/agU;->b:Lo/ahS;

    invoke-virtual {p1, v3}, Lo/ahS;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/agU;->d:Lo/agQ;

    iget-object v3, v1, Lo/agU;->d:Lo/agQ;

    invoke-virtual {p1, v3}, Lo/agQ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/agU;->c:Ljava/lang/String;

    iget-object v1, v1, Lo/agU;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 285
    invoke-super {p0}, Lo/agQ;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/agU;->b:Lo/ahS;

    invoke-virtual {v1}, Lo/ahS;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/agU;->d:Lo/agQ;

    invoke-virtual {v1}, Lo/agQ;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/agU;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
