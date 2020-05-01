.class public Lo/mK;
.super Lo/agM;
.source ""


# static fields
.field public static d:Z = false


# instance fields
.field private a:Lcom/netflix/msl/util/MslContext;

.field private b:Lo/dc$ActionBar;

.field private c:Lo/dc$ActionBar;

.field private transient e:Lo/dc$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V
    .locals 4

    .line 68
    invoke-direct {p0}, Lo/agM;-><init>()V

    const-string v0, "encryptionKeyId"

    .line 70
    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hmacKeyId"

    .line 71
    invoke-virtual {p2, v1}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keySetId"

    .line 72
    invoke-virtual {p2, v2}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "nf_msl_WidevineCryptoContext"

    const-string v3, "WidevineCryptoContex:: restoring crypto session...."

    .line 74
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 80
    iput-object p1, p0, Lo/mK;->a:Lcom/netflix/msl/util/MslContext;

    .line 81
    new-instance p1, Lo/dc$ActionBar;

    invoke-direct {p1, v0}, Lo/dc$ActionBar;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/mK;->b:Lo/dc$ActionBar;

    .line 82
    new-instance p1, Lo/dc$ActionBar;

    invoke-direct {p1, v1}, Lo/dc$ActionBar;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/mK;->c:Lo/dc$ActionBar;

    .line 84
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object p1

    new-instance v0, Lo/dc$ActionBar;

    invoke-direct {v0, p2}, Lo/dc$ActionBar;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lo/dc;->b(Lo/dc$ActionBar;)Lo/dc$TaskDescription;

    move-result-object p1

    iput-object p1, p0, Lo/mK;->e:Lo/dc$TaskDescription;

    .line 86
    iget-object p1, p0, Lo/mK;->e:Lo/dc$TaskDescription;

    if-eqz p1, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to restore crypto session!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MSL context is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lo/ahD;Lo/ahC;Lo/ahS;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lo/agM;-><init>()V

    const-string p2, "nf_msl_WidevineCryptoContext"

    const-string p5, "WidevineCryptoContex::"

    .line 94
    invoke-static {p2, p5}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 109
    iput-object p1, p0, Lo/mK;->a:Lcom/netflix/msl/util/MslContext;

    .line 110
    new-instance p1, Lo/dc$ActionBar;

    invoke-virtual {p4}, Lo/ahC;->b()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lo/dc$ActionBar;-><init>([B)V

    iput-object p1, p0, Lo/mK;->b:Lo/dc$ActionBar;

    .line 111
    new-instance p1, Lo/dc$ActionBar;

    invoke-virtual {p4}, Lo/ahC;->a()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lo/dc$ActionBar;-><init>([B)V

    iput-object p1, p0, Lo/mK;->c:Lo/dc$ActionBar;

    .line 113
    invoke-virtual {p4}, Lo/ahC;->c()[B

    move-result-object p1

    .line 114
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object p2

    iget-object p4, p0, Lo/mK;->b:Lo/dc$ActionBar;

    iget-object p5, p0, Lo/mK;->c:Lo/dc$ActionBar;

    invoke-interface {p2, p3, p1, p4, p5}, Lo/dc;->c(Lo/ahD;[BLo/dc$ActionBar;Lo/dc$ActionBar;)Lo/dc$TaskDescription;

    move-result-object p1

    iput-object p1, p0, Lo/mK;->e:Lo/dc$TaskDescription;

    return-void

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CDM response is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CDM request is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MSL context is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lo/mK;
    .locals 1

    .line 269
    new-instance v0, Lo/mK;

    invoke-direct {v0, p0, p1}, Lo/mK;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 2

    const-string v0, "nf_msl_WidevineCryptoContext"

    const-string v1, "Widevine crypto context, release crypto session!"

    .line 255
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object v0

    iget-object v1, p0, Lo/mK;->e:Lo/dc$TaskDescription;

    invoke-interface {v0, v1}, Lo/dc;->a(Lo/dc$TaskDescription;)V

    return-void
.end method

.method public c([BLo/aho;Lo/ahn;)[B
    .locals 3

    .line 187
    iget-object v0, p0, Lo/mK;->c:Lo/dc$ActionBar;

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object v0

    iget-object v1, p0, Lo/mK;->e:Lo/dc$TaskDescription;

    iget-object v2, p0, Lo/mK;->c:Lo/dc$ActionBar;

    invoke-interface {v0, v1, v2, p1}, Lo/dc;->d(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B)[B

    move-result-object p1

    .line 193
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v0, p1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    invoke-virtual {v0, p2, p3}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->c(Lo/aho;Lo/ahn;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 195
    new-instance p2, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;

    sget-object p3, Lcom/netflix/mediaclient/StatusCode;->cE:Lcom/netflix/mediaclient/StatusCode;

    const-string v0, "WidevineCryptoContext::sign failed."

    invoke-direct {p2, v0, p3, p1}, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    throw p2

    .line 188
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->k:Lo/agz;

    const-string p3, "No signature key."

    invoke-direct {p1, p2, p3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method

.method public d()Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    .line 223
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 224
    iget-object v1, p0, Lo/mK;->b:Lo/dc$ActionBar;

    invoke-virtual {v1}, Lo/dc$ActionBar;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "encryptionKeyId"

    invoke-virtual {v0, v2, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 225
    iget-object v1, p0, Lo/mK;->c:Lo/dc$ActionBar;

    invoke-virtual {v1}, Lo/dc$ActionBar;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hmacKeyId"

    invoke-virtual {v0, v2, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 226
    iget-object v1, p0, Lo/mK;->e:Lo/dc$TaskDescription;

    iget-object v1, v1, Lo/dc$TaskDescription;->b:Lo/dc$ActionBar;

    invoke-virtual {v1}, Lo/dc$ActionBar;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keySetId"

    invoke-virtual {v0, v2, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    return-object v0
.end method

.method public d([BLo/aho;)[B
    .locals 3

    .line 151
    iget-object v0, p0, Lo/mK;->b:Lo/dc$ActionBar;

    if-eqz v0, :cond_1

    .line 157
    :try_start_0
    invoke-virtual {p2, p1}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p1

    .line 158
    new-instance p2, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    sget-object v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->c:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-direct {p2, p1, v0}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Lo/ahp;Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;)V

    .line 161
    invoke-virtual {p2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->d()[B

    move-result-object p1

    .line 162
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    .line 166
    :cond_0
    invoke-virtual {p2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->b()[B

    move-result-object p2

    .line 167
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object v0

    iget-object v1, p0, Lo/mK;->e:Lo/dc$TaskDescription;

    iget-object v2, p0, Lo/mK;->b:Lo/dc$ActionBar;

    invoke-interface {v0, v1, v2, p1, p2}, Lo/dc;->c(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 170
    new-instance p2, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cy:Lcom/netflix/mediaclient/StatusCode;

    const-string v1, "WidevineCryptoContext::decrypt failed."

    invoke-direct {p2, v1, v0, p1}, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    throw p2

    .line 152
    :cond_1
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->n:Lo/agz;

    const-string v0, "no encryption/decryption key"

    invoke-direct {p1, p2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method

.method public e([B[BLo/aho;)Z
    .locals 2

    .line 205
    iget-object v0, p0, Lo/mK;->c:Lo/dc$ActionBar;

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    invoke-static {p2, p3}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->a([BLo/aho;)Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    move-result-object p2

    .line 211
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object p3

    iget-object v0, p0, Lo/mK;->e:Lo/dc$TaskDescription;

    iget-object v1, p0, Lo/mK;->c:Lo/dc$ActionBar;

    invoke-virtual {p2}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->a()[B

    move-result-object p2

    invoke-interface {p3, v0, v1, p1, p2}, Lo/dc;->e(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)Z

    move-result p1
    :try_end_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 217
    new-instance p2, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;

    sget-object p3, Lcom/netflix/mediaclient/StatusCode;->cz:Lcom/netflix/mediaclient/StatusCode;

    const-string v0, "WidevineCryptoContext::verify failed."

    invoke-direct {p2, v0, p3, p1}, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    throw p2

    :catch_0
    move-exception p1

    .line 215
    throw p1

    :catch_1
    move-exception p1

    .line 213
    new-instance p2, Lcom/netflix/msl/MslCryptoException;

    sget-object p3, Lo/agz;->Y:Lo/agz;

    invoke-direct {p2, p3, p1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/Throwable;)V

    throw p2

    .line 206
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->q:Lo/agz;

    const-string p3, "No signature key."

    invoke-direct {p1, p2, p3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method

.method public e([BLo/aho;Lo/ahn;)[B
    .locals 4

    .line 120
    iget-object v0, p0, Lo/mK;->b:Lo/dc$ActionBar;

    if-eqz v0, :cond_1

    .line 126
    :try_start_0
    iget-object v0, p0, Lo/mK;->a:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->j()Ljava/util/Random;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 132
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object v0

    iget-object v2, p0, Lo/mK;->e:Lo/dc$TaskDescription;

    iget-object v3, p0, Lo/mK;->b:Lo/dc$ActionBar;

    invoke-interface {v0, v2, v3, p1, v1}, Lo/dc;->a(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 141
    :goto_0
    new-instance v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    const-string v2, ""

    invoke-direct {v0, v2, v1, p1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Ljava/lang/String;[B[B)V

    .line 142
    invoke-virtual {v0, p2, p3}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->a(Lo/aho;Lo/ahn;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 144
    new-instance p2, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;

    sget-object p3, Lcom/netflix/mediaclient/StatusCode;->cB:Lcom/netflix/mediaclient/StatusCode;

    const-string v0, "WidevineCryptoContext::encrypt failed."

    invoke-direct {p2, v0, p3, p1}, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    throw p2

    .line 121
    :cond_1
    new-instance p1, Lcom/netflix/msl/MslCryptoException;

    sget-object p2, Lo/agz;->f:Lo/agz;

    const-string p3, "no encryption/decryption key"

    invoke-direct {p1, p2, p3}, Lcom/netflix/msl/MslCryptoException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidevineCryptoContext{encryptionKeyId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mK;->b:Lo/dc$ActionBar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hmacKeyId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/mK;->c:Lo/dc$ActionBar;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ctx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/mK;->a:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cryptoSession=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/mK;->e:Lo/dc$TaskDescription;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
