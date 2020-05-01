.class public Lcom/netflix/msl/crypto/MslSignatureEnvelope;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;
    }
.end annotation


# instance fields
.field private final c:[B

.field private final d:Lcom/netflix/msl/MslConstants$SignatureAlgo;

.field private final e:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/MslConstants$SignatureAlgo;[B)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->d:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->e:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    .line 123
    iput-object p1, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->d:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    .line 124
    iput-object p2, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->c:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->b:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->e:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->d:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    .line 112
    iput-object p1, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->c:[B

    return-void
.end method

.method public static a([BLo/aho;)Lcom/netflix/msl/crypto/MslSignatureEnvelope;
    .locals 3

    .line 198
    :try_start_0
    invoke-virtual {p1, p0}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p1
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "version"

    .line 209
    invoke-virtual {p1, v0}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Lo/ahp;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->b(I)Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    move-result-object v0
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 219
    :catch_1
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->b:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    goto :goto_2

    .line 216
    :catch_2
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->b:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    goto :goto_2

    .line 210
    :cond_1
    :goto_1
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->b:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    .line 224
    :goto_2
    sget-object v1, Lcom/netflix/msl/crypto/MslSignatureEnvelope$3;->b:[I

    invoke-virtual {v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :try_start_2
    const-string v0, "algorithm"

    .line 229
    invoke-virtual {p1, v0}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->a(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;

    move-result-object v0

    const-string v1, "signature"

    .line 230
    invoke-virtual {p1, v1}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object p1

    .line 231
    new-instance v1, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v1, v0, p1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>(Lcom/netflix/msl/MslConstants$SignatureAlgo;[B)V
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v1

    .line 239
    :catch_3
    new-instance p1, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {p1, p0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    return-object p1

    .line 235
    :catch_4
    new-instance p1, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {p1, p0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    return-object p1

    .line 242
    :cond_2
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object v0, Lo/agz;->ac:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signature envelope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_3
    new-instance p1, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {p1, p0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->c:[B

    return-object v0
.end method

.method public c(Lo/aho;Lo/ahn;)[B
    .locals 3

    .line 277
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$3;->b:[I

    iget-object v1, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->e:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->e:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 283
    iget-object v1, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->d:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    invoke-virtual {v1}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "algorithm"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 284
    iget-object v1, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->c:[B

    const-string v2, "signature"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 285
    invoke-virtual {p1, v0, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object p1

    return-object p1

    .line 287
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Signature envelope version "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->e:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " encoding unsupported."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->c:[B

    return-object p1
.end method
