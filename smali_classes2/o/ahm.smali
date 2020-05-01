.class public Lo/ahm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ahm;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ahm;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    .line 74
    invoke-virtual {p0, v1, v0}, Lo/ahm;->a(ILjava/lang/Object;)Lo/ahm;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ahm;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 59
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const/4 v3, -0x1

    .line 60
    invoke-virtual {p0, v3, v2}, Lo/ahm;->a(ILjava/lang/Object;)Lo/ahm;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 3

    .line 256
    invoke-virtual {p0, p1}, Lo/ahm;->e(I)Ljava/lang/Object;

    move-result-object v0

    .line 257
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 258
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 259
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is not a string."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILjava/lang/Object;)Lo/ahm;
    .locals 4

    const/4 v0, -0x1

    if-lt p1, v0, :cond_a

    .line 572
    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v1, :cond_6

    instance-of v1, p2, [B

    if-nez v1, :cond_6

    instance-of v1, p2, Ljava/lang/Number;

    if-nez v1, :cond_6

    instance-of v1, p2, Lo/ahp;

    if-nez v1, :cond_6

    instance-of v1, p2, Lo/ahm;

    if-nez v1, :cond_6

    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_6

    instance-of v1, p2, Lo/ahr;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 583
    new-instance v1, Lo/ahp;

    check-cast p2, Ljava/util/Map;

    invoke-direct {v1, p2}, Lo/ahp;-><init>(Ljava/util/Map;)V

    goto :goto_1

    .line 584
    :cond_1
    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 585
    new-instance v1, Lo/ahm;

    check-cast p2, Ljava/util/Collection;

    invoke-direct {v1, p2}, Lo/ahm;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 586
    :cond_2
    instance-of v1, p2, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 587
    new-instance v1, Lo/ahm;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-direct {v1, p2}, Lo/ahm;-><init>([Ljava/lang/Object;)V

    goto :goto_1

    .line 588
    :cond_3
    instance-of v1, p2, Ljava/lang/Enum;

    if-eqz v1, :cond_4

    .line 589
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    move-object v1, v2

    goto :goto_1

    .line 593
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] is an unsupported type."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    move-object v1, p2

    .line 597
    :goto_1
    iget-object p2, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_2
    if-ge p2, p1, :cond_7

    .line 598
    iget-object v3, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    if-eq p1, v0, :cond_9

    .line 601
    iget-object p2, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_8

    goto :goto_3

    .line 607
    :cond_8
    iget-object p2, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-interface {p2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 602
    :cond_9
    :goto_3
    iget-object p1, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 568
    :cond_a
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MslArray["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is negative."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(I)[B
    .locals 3

    .line 135
    invoke-virtual {p0, p1}, Lo/ahm;->e(I)Ljava/lang/Object;

    move-result-object v0

    .line 136
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, [B

    check-cast v0, [B

    return-object v0

    .line 138
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is not binary data."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()I
    .locals 1

    .line 283
    iget-object v0, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_3

    .line 297
    iget-object v0, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 299
    iget-object v0, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 301
    :try_start_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Lo/ahp;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lo/ahp;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 303
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 304
    new-instance v0, Lo/ahm;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Lo/ahm;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 305
    :cond_1
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 306
    new-instance v0, Lo/ahm;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {v0, p1}, Lo/ahm;-><init>([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_2
    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 298
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is negative or exceeds array length."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(ILo/aho;)Lo/ahp;
    .locals 4

    .line 209
    invoke-virtual {p0, p1}, Lo/ahm;->e(I)Ljava/lang/Object;

    move-result-object v0

    .line 210
    instance-of v1, v0, Lo/ahp;

    if-eqz v1, :cond_0

    .line 211
    check-cast v0, Lo/ahp;

    return-object v0

    .line 216
    :cond_0
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 217
    new-instance p1, Lo/ahp;

    check-cast v0, Ljava/util/Map;

    invoke-direct {p1, v0}, Lo/ahp;-><init>(Ljava/util/Map;)V

    return-object p1

    .line 218
    :cond_1
    instance-of v1, v0, [B

    const-string v2, "] is not a MslObject."

    if-eqz v1, :cond_2

    .line 220
    :try_start_0
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p2, v0}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p1
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 222
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MslObject["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 225
    :cond_2
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MslArray["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public d(I[B)[B
    .locals 1

    .line 367
    invoke-virtual {p0, p1}, Lo/ahm;->c(I)Ljava/lang/Object;

    move-result-object p1

    .line 368
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 369
    check-cast p1, [B

    check-cast p1, [B

    return-object p1

    :cond_0
    return-object p2
.end method

.method public e(I)Ljava/lang/Object;
    .locals 3

    const-string v0, "MslArray["

    if-ltz p1, :cond_4

    .line 93
    iget-object v1, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 95
    iget-object v1, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 98
    instance-of p1, v1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 99
    new-instance p1, Lo/ahp;

    check-cast v1, Ljava/util/Map;

    invoke-direct {p1, v1}, Lo/ahp;-><init>(Ljava/util/Map;)V

    return-object p1

    .line 100
    :cond_0
    instance-of p1, v1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    .line 101
    new-instance p1, Lo/ahm;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p1, v1}, Lo/ahm;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 102
    :cond_1
    instance-of p1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 103
    new-instance p1, Lo/ahm;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p1, v1}, Lo/ahm;-><init>([Ljava/lang/Object;)V

    return-object p1

    :cond_2
    return-object v1

    .line 97
    :cond_3
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is null."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is negative or exceeds array length."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 765
    :cond_0
    instance-of v0, p1, Lo/ahm;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 766
    :cond_1
    check-cast p1, Lo/ahm;

    .line 768
    :try_start_0
    invoke-static {p0, p1}, Lo/ahq;->e(Lo/ahm;Lo/ahm;)Z

    move-result p1
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 779
    invoke-static {p0}, Lo/ahq;->e(Lo/ahm;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    iget-object v1, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x5b

    .line 791
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 794
    iget-object v1, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lo/aho;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_2

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    if-eqz v4, :cond_1

    const/16 v4, 0x2c

    .line 798
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 800
    :cond_1
    iget-object v4, p0, Lo/ahm;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lo/aho;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v1, 0x5d

    .line 804
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
