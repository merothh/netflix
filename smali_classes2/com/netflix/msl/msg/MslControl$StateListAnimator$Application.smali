.class Lcom/netflix/msl/msg/MslControl$StateListAnimator$Application;
.super Lo/aho;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MslControl$StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Lo/aho;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/msl/msg/MslControl$3;)V
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/netflix/msl/msg/MslControl$StateListAnimator$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/InputStream;Lo/ahn;)Lo/aht;
    .locals 0

    .line 339
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "DummyMslEncoderFactory.generateTokenizer() not supported."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([B)Lo/ahp;
    .locals 1

    .line 344
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string v0, "DummyMslEncoderFactory.parseObject() not supported."

    invoke-direct {p1, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lo/ahp;Lo/ahn;)[B
    .locals 0

    .line 349
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "DummyMslEncoderFactory.encodeObject() not supported."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/util/Set;)Lo/ahn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/ahn;",
            ">;)",
            "Lo/ahn;"
        }
    .end annotation

    .line 334
    sget-object p1, Lo/ahn;->a:Lo/ahn;

    return-object p1
.end method
