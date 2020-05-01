.class public Lo/agR;
.super Lo/agM;
.source ""


# static fields
.field private static final j:[B


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljavax/crypto/SecretKey;

.field protected final c:Ljavax/crypto/SecretKey;

.field protected final d:Ljavax/crypto/SecretKey;

.field protected final e:Lcom/netflix/msl/util/MslContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 74
    fill-array-data v0, :array_0

    sput-object v0, Lo/agR;->j:[B

    return-void

    :array_0
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 4

    .line 136
    invoke-direct {p0}, Lo/agM;-><init>()V

    const-string v0, "Encryption key must be an AES key."

    const-string v1, "AES"

    if-eqz p3, :cond_1

    .line 137
    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    .line 140
    invoke-interface {p4}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HmacSHA256"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 141
    invoke-interface {p4}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AESCmac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 143
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Encryption key must be an HmacSHA256 or AESCmac key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz p5, :cond_5

    .line 145
    invoke-interface {p5}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 146
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_5
    :goto_2
    iput-object p1, p0, Lo/agR;->e:Lcom/netflix/msl/util/MslContext;

    .line 149
    iput-object p2, p0, Lo/agR;->a:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lo/agR;->c:Ljavax/crypto/SecretKey;

    .line 151
    iput-object p4, p0, Lo/agR;->b:Ljavax/crypto/SecretKey;

    .line 152
    iput-object p5, p0, Lo/agR;->d:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public c([BLo/aho;Lo/ahn;)[B
    .locals 3

    const-string v0, "HmacSHA256"

    .line 349
    iget-object v1, p0, Lo/agR;->b:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_2

    .line 354
    :try_start_0
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    invoke-static {v0}, Lo/agJ;->a(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lo/agR;->b:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 357
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lo/agR;->b:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AESCmac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v1, p0, Lo/agR;->b:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 360
    new-instance v1, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    .line 361
    new-instance v2, Lorg/bouncycastle/crypto/macs/CMac;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 362
    invoke-virtual {v2, v0}, Lorg/bouncycastle/crypto/macs/CMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 363
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1, v0}, Lorg/bouncycastle/crypto/macs/CMac;->update([BII)V

    .line 364
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/macs/CMac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    .line 365
    invoke-virtual {v2, p1, v1}, Lorg/bouncycastle/crypto/macs/CMac;->doFinal([BI)I

    .line 371
    :goto_0
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, p1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    invoke-virtual {v0, p2, p3}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->c(Lo/aho;Lo/ahn;)[B

    move-result-object p1

    return-object p1

    .line 367
    :cond_1
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->k:Lo/agz;

    const-string p3, "Unsupported algorithm."

    invoke-direct {p1, p2, p3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 377
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->ae:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 375
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->x:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 373
    new-instance p2, Lcom/netflix/msl/MslInternalException;

    const-string p3, "Invalid MAC algorithm specified."

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 350
    :cond_2
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->k:Lo/agz;

    const-string p3, "No signature key."

    invoke-direct {p1, p2, p3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method

.method public d([BLo/aho;)[B
    .locals 3

    .line 204
    iget-object v0, p0, Lo/agR;->c:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_1

    .line 208
    :try_start_0
    invoke-virtual {p2, p1}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p1

    .line 209
    new-instance p2, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    sget-object v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->c:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-direct {p2, p1, v0}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Lo/ahp;Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;)V

    .line 212
    invoke-virtual {p2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->d()[B

    move-result-object p1

    .line 213
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    .line 215
    :cond_0
    invoke-virtual {p2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->b()[B

    move-result-object p2

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 216
    invoke-static {v0}, Lo/agJ;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 217
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x2

    .line 218
    iget-object v2, p0, Lo/agR;->c:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, p2, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 219
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 237
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object v0, Lo/agz;->g:Lo/agz;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 235
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object v0, Lo/agz;->j:Lo/agz;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 233
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object v0, Lo/agz;->R:Lo/agz;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 231
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object v0, Lo/agz;->w:Lo/agz;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    .line 229
    new-instance p2, Lcom/netflix/msl/MslInternalException;

    const-string v0, "Unsupported padding exception."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_5
    move-exception p1

    .line 227
    new-instance p2, Lcom/netflix/msl/MslInternalException;

    const-string v0, "Invalid cipher algorithm specified."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_6
    move-exception p1

    .line 225
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object v0, Lo/agz;->m:Lo/agz;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_7
    move-exception p1

    .line 223
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object v0, Lo/agz;->m:Lo/agz;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_8
    move-exception p1

    .line 221
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object v0, Lo/agz;->u:Lo/agz;

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    .line 205
    :cond_1
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->n:Lo/agz;

    const-string v0, "no encryption/decryption key"

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method

.method public e([B[BLo/aho;)Z
    .locals 2

    const-string v0, "HmacSHA256"

    .line 383
    iget-object v1, p0, Lo/agR;->b:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_2

    .line 387
    :try_start_0
    invoke-static {p2, p3}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->a([BLo/aho;)Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    move-result-object p2

    .line 391
    iget-object p3, p0, Lo/agR;->b:Ljavax/crypto/SecretKey;

    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 392
    invoke-static {v0}, Lo/agJ;->a(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p3

    .line 393
    iget-object v0, p0, Lo/agR;->b:Ljavax/crypto/SecretKey;

    invoke-virtual {p3, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 394
    invoke-virtual {p3, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    goto :goto_0

    .line 395
    :cond_0
    iget-object p3, p0, Lo/agR;->b:Ljavax/crypto/SecretKey;

    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AESCmac"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 396
    new-instance p3, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v0, p0, Lo/agR;->b:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 397
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    .line 398
    new-instance v1, Lorg/bouncycastle/crypto/macs/CMac;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 399
    invoke-virtual {v1, p3}, Lorg/bouncycastle/crypto/macs/CMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 400
    array-length p3, p1

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p3}, Lorg/bouncycastle/crypto/macs/CMac;->update([BII)V

    .line 401
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/macs/CMac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    .line 402
    invoke-virtual {v1, p1, v0}, Lorg/bouncycastle/crypto/macs/CMac;->doFinal([BI)I

    .line 408
    :goto_0
    invoke-virtual {p2}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->a()[B

    move-result-object p2

    invoke-static {p1, p2}, Lo/ain;->e([B[B)Z

    move-result p1

    return p1

    .line 404
    :cond_1
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->q:Lo/agz;

    const-string p3, "Unsupported algorithm."

    invoke-direct {p1, p2, p3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 414
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->x:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 412
    new-instance p2, Lcom/netflix/msl/MslInternalException;

    const-string p3, "Invalid MAC algorithm specified."

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 410
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->Y:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    .line 384
    :cond_2
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->q:Lo/agz;

    const-string p3, "No signature key."

    invoke-direct {p1, p2, p3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method

.method public e([BLo/aho;Lo/ahn;)[B
    .locals 5

    .line 160
    iget-object v0, p0, Lo/agR;->c:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_1

    .line 164
    :try_start_0
    iget-object v0, p0, Lo/agR;->e:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->j()Ljava/util/Random;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 166
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 170
    array-length v0, p1

    if-eqz v0, :cond_0

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 171
    invoke-static {v0}, Lo/agJ;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 172
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    .line 173
    iget-object v4, p0, Lo/agR;->c:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 174
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 180
    :goto_0
    new-instance v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    iget-object v2, p0, Lo/agR;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v1, p1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Ljava/lang/String;[B[B)V

    .line 181
    invoke-virtual {v0, p2, p3}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->a(Lo/aho;Lo/ahn;)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 195
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->o:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 193
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->h:Lo/agz;

    const-string v0, "not expected when encrypting"

    invoke-direct {p2, p3, v0, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 191
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->i:Lo/agz;

    const-string v0, "not expected when padding is specified"

    invoke-direct {p2, p3, v0, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 189
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->R:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    .line 187
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->w:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_5
    move-exception p1

    .line 185
    new-instance p2, Lcom/netflix/msl/MslInternalException;

    const-string p3, "Invalid cipher algorithm specified."

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_6
    move-exception p1

    .line 183
    new-instance p2, Lcom/netflix/msl/MslInternalException;

    const-string p3, "Unsupported padding exception."

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 161
    :cond_1
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->f:Lo/agz;

    const-string p3, "no encryption/decryption key"

    invoke-direct {p1, p2, p3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method
