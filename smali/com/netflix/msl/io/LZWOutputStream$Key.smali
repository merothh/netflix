.class Lcom/netflix/msl/io/LZWOutputStream$Key;
.super Ljava/lang/Object;
.source "LZWOutputStream.java"


# instance fields
.field private final bytes:[B

.field private final hashCode:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/msl/io/LZWOutputStream$Key;->bytes:[B

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/netflix/msl/io/LZWOutputStream$Key;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/io/LZWOutputStream$Key;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream$Key;->bytes:[B

    check-cast p1, Lcom/netflix/msl/io/LZWOutputStream$Key;

    iget-object v1, p1, Lcom/netflix/msl/io/LZWOutputStream$Key;->bytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/netflix/msl/io/LZWOutputStream$Key;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream$Key;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
