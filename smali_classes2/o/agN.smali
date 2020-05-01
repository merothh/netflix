.class public abstract Lo/agN;
.super Lo/agM;
.source ""


# instance fields
.field protected final a:Ljava/security/PrivateKey;

.field protected final b:Ljava/security/PublicKey;

.field protected final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/security/spec/AlgorithmParameterSpec;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lo/agM;-><init>()V

    .line 78
    iput-object p1, p0, Lo/agN;->c:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lo/agN;->a:Ljava/security/PrivateKey;

    .line 80
    iput-object p3, p0, Lo/agN;->b:Ljava/security/PublicKey;

    .line 81
    iput-object p4, p0, Lo/agN;->d:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lo/agN;->e:Ljava/security/spec/AlgorithmParameterSpec;

    .line 83
    iput-object p6, p0, Lo/agN;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c([BLo/aho;Lo/ahn;)[B
    .locals 2

    .line 210
    iget-object v0, p0, Lo/agN;->f:Ljava/lang/String;

    const-string v1, "nullOp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    .line 212
    :cond_0
    iget-object v0, p0, Lo/agN;->a:Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    .line 215
    :try_start_0
    iget-object v0, p0, Lo/agN;->f:Ljava/lang/String;

    invoke-static {v0}, Lo/agJ;->d(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lo/agN;->a:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 217
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 218
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    .line 221
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, p1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    invoke-virtual {v0, p2, p3}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->c(Lo/aho;Lo/ahn;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 229
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->ae:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 227
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->t:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 225
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->b:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 223
    new-instance p2, Lcom/netflix/msl/MslInternalException;

    const-string p3, "Invalid signature algorithm specified."

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 213
    :cond_1
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->k:Lo/agz;

    const-string p3, "no private key."

    invoke-direct {p1, p2, p3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method

.method public d([BLo/aho;)[B
    .locals 4

    .line 141
    iget-object v0, p0, Lo/agN;->d:Ljava/lang/String;

    const-string v1, "nullOp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 143
    :cond_0
    iget-object v0, p0, Lo/agN;->a:Ljava/security/PrivateKey;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 148
    :try_start_0
    invoke-virtual {p2, p1}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p1

    .line 149
    new-instance p2, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    sget-object v1, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->c:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-direct {p2, p1, v1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Lo/ahp;Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;)V

    .line 152
    iget-object p1, p0, Lo/agN;->d:Ljava/lang/String;

    invoke-static {p1}, Lo/agJ;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x2

    .line 153
    iget-object v2, p0, Lo/agN;->a:Ljava/security/PrivateKey;

    iget-object v3, p0, Lo/agN;->e:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 154
    invoke-virtual {p2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->d()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 181
    :try_start_1
    throw v0

    :catch_1
    move-exception p1

    move-object v0, p1

    .line 178
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->R:Lo/agz;

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    move-object v0, p1

    .line 175
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->m:Lo/agz;

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p1

    move-object v0, p1

    .line 172
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->m:Lo/agz;

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p1

    move-object v0, p1

    .line 169
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->g:Lo/agz;

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p1

    move-object v0, p1

    .line 166
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->j:Lo/agz;

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p1

    :catch_6
    move-exception p1

    move-object v0, p1

    .line 163
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->b:Lo/agz;

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p1

    :catch_7
    move-exception p1

    move-object v0, p1

    .line 160
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Invalid cipher algorithm specified."

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_8
    move-exception p1

    move-object v0, p1

    .line 157
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Unsupported padding exception."

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 185
    iget-object p2, p0, Lo/agN;->d:Ljava/lang/String;

    invoke-static {p2}, Lo/agJ;->b(Ljava/lang/String;)V

    .line 186
    :cond_1
    throw p1

    .line 144
    :cond_2
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->n:Lo/agz;

    const-string v0, "no private key"

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method

.method public e([B[BLo/aho;)Z
    .locals 2

    .line 238
    iget-object v0, p0, Lo/agN;->f:Ljava/lang/String;

    const-string v1, "nullOp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 240
    :cond_0
    iget-object v0, p0, Lo/agN;->b:Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    .line 244
    :try_start_0
    invoke-static {p2, p3}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->a([BLo/aho;)Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    move-result-object p2

    .line 246
    iget-object p3, p0, Lo/agN;->f:Ljava/lang/String;

    invoke-static {p3}, Lo/agJ;->d(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p3

    .line 247
    iget-object v0, p0, Lo/agN;->b:Ljava/security/PublicKey;

    invoke-virtual {p3, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 248
    invoke-virtual {p3, p1}, Ljava/security/Signature;->update([B)V

    .line 249
    invoke-virtual {p2}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->a()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 257
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->Y:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 255
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->t:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 253
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->c:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 251
    new-instance p2, Lcom/netflix/msl/MslInternalException;

    const-string p3, "Invalid signature algorithm specified."

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 241
    :cond_1
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->q:Lo/agz;

    const-string p3, "no public key."

    invoke-direct {p1, p2, p3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method

.method public e([BLo/aho;Lo/ahn;)[B
    .locals 5

    .line 91
    iget-object v0, p0, Lo/agN;->d:Ljava/lang/String;

    const-string v1, "nullOp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 93
    :cond_0
    iget-object v0, p0, Lo/agN;->b:Ljava/security/PublicKey;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 98
    :try_start_0
    iget-object v1, p0, Lo/agN;->d:Ljava/lang/String;

    invoke-static {v1}, Lo/agJ;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 99
    iget-object v3, p0, Lo/agN;->b:Ljava/security/PublicKey;

    iget-object v4, p0, Lo/agN;->e:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 100
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 103
    new-instance v1, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    iget-object v2, p0, Lo/agN;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Ljava/lang/String;[B[B)V

    .line 104
    invoke-virtual {v1, p2, p3}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->a(Lo/aho;Lo/ahn;)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 128
    :try_start_1
    throw v0

    :catch_1
    move-exception p1

    move-object v0, p1

    .line 125
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->o:Lo/agz;

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    move-object v0, p1

    .line 122
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->R:Lo/agz;

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p1

    move-object v0, p1

    .line 119
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->h:Lo/agz;

    const-string p3, "not expected when encrypting"

    invoke-direct {p1, p2, p3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p1

    move-object v0, p1

    .line 116
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->i:Lo/agz;

    const-string p3, "not expected when padding is specified"

    invoke-direct {p1, p2, p3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p1

    move-object v0, p1

    .line 113
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->c:Lo/agz;

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p1

    :catch_6
    move-exception p1

    move-object v0, p1

    .line 110
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Invalid cipher algorithm specified."

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_7
    move-exception p1

    move-object v0, p1

    .line 107
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "Unsupported padding exception."

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 132
    iget-object p2, p0, Lo/agN;->d:Ljava/lang/String;

    invoke-static {p2}, Lo/agJ;->b(Ljava/lang/String;)V

    .line 133
    :cond_1
    throw p1

    .line 94
    :cond_2
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->f:Lo/agz;

    const-string p3, "no public key"

    invoke-direct {p1, p2, p3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method
