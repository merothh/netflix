.class public Lcom/netflix/msl/crypto/MslCiphertextEnvelope;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ahr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private c:Lcom/netflix/msl/MslConstants$CipherSpec;

.field private final d:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

.field private final e:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B)V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    sget-object v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->c:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    iput-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->d:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    .line 151
    iput-object p1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->c:Lcom/netflix/msl/MslConstants$CipherSpec;

    .line 153
    iput-object p2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->b:[B

    .line 154
    iput-object p3, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->e:[B

    return-void
.end method

.method public constructor <init>(Lo/ahp;Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;)V
    .locals 6

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    sget-object v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$3;->e:[I

    invoke-virtual {p2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "ciphertext"

    const-string v3, "iv"

    const/4 v4, 0x0

    const-string v5, "ciphertext envelope "

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :try_start_0
    const-string p2, "version"

    .line 211
    invoke-virtual {p1, p2}, Lo/ahp;->c(Ljava/lang/String;)I

    move-result p2

    .line 212
    invoke-static {p2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->c(I)Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->d:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    .line 213
    sget-object p2, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->e:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    iget-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->d:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-virtual {p2, v0}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 215
    iput-object v4, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->a:Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p2, "cipherspec"

    .line 217
    invoke-virtual {p1, p2}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netflix/msl/MslConstants$CipherSpec;->b(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CipherSpec;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->c:Lcom/netflix/msl/MslConstants$CipherSpec;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :try_start_2
    invoke-virtual {p1, v3}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v3}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v4

    :cond_0
    iput-object v4, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->b:[B

    .line 222
    invoke-virtual {p1, v2}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->e:[B

    goto/16 :goto_0

    :catch_0
    move-exception p2

    .line 219
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lo/agz;->Z:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 214
    :cond_1
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object v0, Lo/agz;->W:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/ahp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p2

    .line 224
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lo/agz;->e:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 228
    :cond_2
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object v0, Lo/agz;->aa:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ciphertext envelope version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_3
    :try_start_3
    sget-object p2, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->c:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    iput-object p2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->d:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    const-string p2, "keyid"

    .line 200
    invoke-virtual {p1, p2}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->a:Ljava/lang/String;

    .line 201
    iput-object v4, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->c:Lcom/netflix/msl/MslConstants$CipherSpec;

    .line 202
    invoke-virtual {p1, v3}, Lo/ahp;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, v3}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object v4

    :cond_4
    iput-object v4, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->b:[B

    .line 203
    invoke-virtual {p1, v2}, Lo/ahp;->e(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->e:[B

    const-string p2, "sha256"

    .line 204
    invoke-virtual {p1, p2}, Lo/ahp;->e(Ljava/lang/String;)[B
    :try_end_3
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    return-void

    :catch_2
    move-exception p2

    .line 206
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lo/agz;->e:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lo/aho;Lo/ahn;)[B
    .locals 5

    .line 276
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v0

    .line 277
    sget-object v1, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$3;->e:[I

    iget-object v2, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->d:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-virtual {v2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "iv"

    const-string v4, "ciphertext"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 285
    iget-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->d:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 286
    iget-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->c:Lcom/netflix/msl/MslConstants$CipherSpec;

    invoke-virtual {v1}, Lcom/netflix/msl/MslConstants$CipherSpec;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cipherspec"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 287
    iget-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->b:[B

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->e:[B

    invoke-virtual {v0, v4, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    goto :goto_0

    .line 291
    :cond_1
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ciphertext envelope version "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->d:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " encoding unsupported."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->a:Ljava/lang/String;

    const-string v2, "keyid"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 280
    iget-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->b:[B

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->e:[B

    invoke-virtual {v0, v4, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v1, "AA=="

    .line 282
    invoke-static {v1}, Lo/aik;->b(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "sha256"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 293
    :goto_0
    invoke-virtual {p1, v0, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object p1

    return-object p1
.end method

.method public b()[B
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->b:[B

    return-object v0
.end method

.method public d()[B
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->e:[B

    return-object v0
.end method
