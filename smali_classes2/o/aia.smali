.class public Lo/aia;
.super Lo/aie;
.source ""


# static fields
.field private static final b:Lorg/slf4j/Logger;


# instance fields
.field private final a:Lo/ahX;

.field private final c:Lo/ahS;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/netflix/msl/util/MslContext;

.field private h:Ljava/lang/String;

.field private final j:Ljava/util/Map;
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

    .line 70
    const-class v0, Lo/aia;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lo/aia;->b:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahX;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 119
    sget-object v0, Lo/ahW;->b:Lo/aib;

    invoke-direct {p0, v0}, Lo/aie;-><init>(Lo/aib;)V

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/aia;->j:Ljava/util/Map;

    .line 120
    iput-object p1, p0, Lo/aia;->e:Lcom/netflix/msl/util/MslContext;

    .line 121
    iput-object p2, p0, Lo/aia;->c:Lo/ahS;

    .line 122
    iput-object p3, p0, Lo/aia;->a:Lo/ahX;

    .line 123
    iput-object p4, p0, Lo/aia;->d:Ljava/lang/String;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const-string p5, ""

    .line 124
    :goto_0
    iput-object p5, p0, Lo/aia;->h:Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 127
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p3, :cond_1

    .line 132
    sget-object p1, Lo/aia;->b:Lorg/slf4j/Logger;

    const-string p2, "Target ESN = {}"

    invoke-interface {p1, p2, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 130
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "userIdToken is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "entityIdentity is null/empty"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static d(Lcom/netflix/msl/util/MslContext;Lo/ahS;)Lo/agM;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->f()Lo/aim;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/aim;->b(Lo/ahS;)Lo/agM;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Lo/agP;

    invoke-direct {v0, p0, p1}, Lo/agP;-><init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V

    return-object v0
.end method


# virtual methods
.method public b(Lo/aho;Lo/ahn;)Lo/ahp;
    .locals 5

    .line 268
    iget-object v0, p0, Lo/aia;->j:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object p1, p0, Lo/aia;->j:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ahp;

    return-object p1

    .line 274
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/aia;->e:Lcom/netflix/msl/util/MslContext;

    iget-object v1, p0, Lo/aia;->c:Lo/ahS;

    invoke-static {v0, v1}, Lo/aia;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;)Lo/agM;

    move-result-object v0
    :try_end_0
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_0 .. :try_end_0} :catch_1

    .line 280
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v1

    .line 281
    iget-object v2, p0, Lo/aia;->a:Lo/ahX;

    const-string v3, "useridtoken"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 282
    iget-object v2, p0, Lo/aia;->d:Ljava/lang/String;

    const-string v3, "entityidentity"

    invoke-virtual {v1, v3, v2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 283
    invoke-virtual {p1, v1, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object v1

    .line 286
    :try_start_1
    invoke-virtual {v0, v1, p1, p2}, Lo/agM;->e([BLo/aho;Lo/ahn;)[B

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1, p1, p2}, Lo/agM;->c([BLo/aho;Lo/ahn;)[B

    move-result-object v0
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 293
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v2

    .line 294
    iget-object v3, p0, Lo/aia;->c:Lo/ahS;

    const-string v4, "mastertoken"

    invoke-virtual {v2, v4, v3}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v3, "userdata"

    .line 295
    invoke-virtual {v2, v3, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    const-string v1, "signature"

    .line 296
    invoke-virtual {v2, v1, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 297
    iget-object v0, p0, Lo/aia;->h:Ljava/lang/String;

    const-string v1, "auxinfo"

    invoke-virtual {v2, v1, v0}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 300
    invoke-virtual {p1, v2, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object v0

    .line 301
    invoke-virtual {p1, v0}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p1

    .line 304
    iget-object v0, p0, Lo/aia;->j:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catch_0
    move-exception p1

    .line 289
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Error encrypting and signing the authentication data."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 276
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Master token crypto context cannot be retrieved or created."

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 314
    :cond_0
    instance-of v1, p1, Lo/aia;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 315
    :cond_1
    move-object v1, p1

    check-cast v1, Lo/aia;

    .line 316
    invoke-super {p0, p1}, Lo/aie;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/aia;->c:Lo/ahS;

    iget-object v3, v1, Lo/aia;->c:Lo/ahS;

    invoke-virtual {p1, v3}, Lo/ahS;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/aia;->a:Lo/ahX;

    iget-object v3, v1, Lo/aia;->a:Lo/ahX;

    invoke-virtual {p1, v3}, Lo/ahX;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/aia;->d:Ljava/lang/String;

    iget-object v3, v1, Lo/aia;->d:Ljava/lang/String;

    .line 317
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/aia;->h:Ljava/lang/String;

    iget-object v1, v1, Lo/aia;->h:Ljava/lang/String;

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

    .line 325
    invoke-super {p0}, Lo/aie;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/aia;->c:Lo/ahS;

    invoke-virtual {v1}, Lo/ahS;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/aia;->a:Lo/ahX;

    invoke-virtual {v1}, Lo/ahX;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/aia;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/aia;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
