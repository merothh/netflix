.class public Lo/afQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private final a:Z

.field private final b:[B

.field private final c:[B

.field private final e:[B


# direct methods
.method private constructor <init>([BZ[B[B)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 46
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lo/afQ;->c:[B

    .line 48
    iput-boolean p2, p0, Lo/afQ;->a:Z

    if-eqz p3, :cond_1

    .line 50
    array-length p1, p3

    if-nez p1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lo/afQ;->b:[B

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lo/afQ;->b:[B

    :goto_1
    if-nez p4, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 61
    iput-object p1, p0, Lo/afQ;->e:[B

    goto :goto_2

    .line 65
    :cond_2
    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lo/afQ;->e:[B

    :goto_2
    return-void

    .line 42
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IKM (input keying material) should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B[B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0, p2, p3}, Lo/afQ;-><init>([BZ[B[B)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 110
    iget-object v0, p0, Lo/afQ;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lo/afQ;->a:Z

    return v0
.end method

.method public c()[B
    .locals 1

    .line 131
    iget-object v0, p0, Lo/afQ;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public e()[B
    .locals 1

    .line 141
    iget-object v0, p0, Lo/afQ;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
