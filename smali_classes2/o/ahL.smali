.class public Lo/ahL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ahr;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/netflix/msl/MslConstants$CompressionAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ahn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/netflix/msl/MslConstants$CompressionAlgorithm;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lo/ahn;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    const-class p1, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo/ahL;->c:Ljava/util/Set;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ahL;->a:Ljava/util/List;

    if-eqz p3, :cond_2

    goto :goto_2

    .line 105
    :cond_2
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    :goto_2
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo/ahL;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lo/ahp;)V
    .locals 5

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    :try_start_0
    const-class v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "compressionalgos"

    .line 119
    invoke-virtual {p1, v1}, Lo/ahp;->f(Ljava/lang/String;)Lo/ahm;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Lo/ahm;->c()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 121
    invoke-virtual {v1, v3}, Lo/ahm;->a(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :try_start_1
    invoke-static {v4}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_0
    :try_start_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/ahL;->c:Ljava/util/Set;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "languages"

    .line 131
    invoke-virtual {p1, v1}, Lo/ahp;->f(Ljava/lang/String;)Lo/ahm;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v1}, Lo/ahm;->c()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 133
    invoke-virtual {v1, v3}, Lo/ahm;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/ahL;->a:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "encoderformats"

    .line 138
    invoke-virtual {p1, v1}, Lo/ahp;->f(Ljava/lang/String;)Lo/ahm;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    .line 139
    invoke-virtual {v1}, Lo/ahm;->c()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 140
    invoke-virtual {v1, v2}, Lo/ahm;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v3}, Lo/ahn;->b(Ljava/lang/String;)Lo/ahn;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 144
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 146
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/ahL;->d:Ljava/util/Set;
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 148
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lo/agz;->e:Lo/agz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capabilities "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static d(Lo/ahL;Lo/ahL;)Lo/ahL;
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    const-class v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lo/ahL;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v1, p1, Lo/ahL;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/ahL;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    iget-object v2, p1, Lo/ahL;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 85
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 86
    iget-object p0, p0, Lo/ahL;->d:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 87
    iget-object p0, p1, Lo/ahL;->d:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 89
    new-instance p0, Lo/ahL;

    invoke-direct {p0, v0, v1, v2}, Lo/ahL;-><init>(Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/netflix/msl/MslConstants$CompressionAlgorithm;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lo/ahL;->c:Ljava/util/Set;

    return-object v0
.end method

.method public a(Lo/aho;Lo/ahn;)[B
    .locals 5

    .line 178
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lo/ahL;->c:Ljava/util/Set;

    invoke-virtual {p1, v1}, Lo/aho;->e(Ljava/util/Collection;)Lo/ahm;

    move-result-object v1

    const-string v2, "compressionalgos"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 180
    iget-object v1, p0, Lo/ahL;->a:Ljava/util/List;

    const-string v2, "languages"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 181
    invoke-virtual {p1}, Lo/aho;->c()Lo/ahm;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lo/ahL;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ahn;

    const/4 v4, -0x1

    .line 183
    invoke-virtual {v3}, Lo/ahn;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lo/ahm;->a(ILjava/lang/Object;)Lo/ahm;

    goto :goto_0

    :cond_0
    const-string v2, "encoderformats"

    .line 184
    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 185
    invoke-virtual {p1, v0, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/ahn;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lo/ahL;->d:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 194
    :cond_0
    instance-of v1, p1, Lo/ahL;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 195
    :cond_1
    check-cast p1, Lo/ahL;

    .line 196
    iget-object v1, p0, Lo/ahL;->c:Ljava/util/Set;

    iget-object v3, p1, Lo/ahL;->c:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/ahL;->a:Ljava/util/List;

    iget-object v3, p1, Lo/ahL;->a:Ljava/util/List;

    .line 197
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/ahL;->d:Ljava/util/Set;

    iget-object p1, p1, Lo/ahL;->d:Ljava/util/Set;

    .line 198
    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

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

    .line 206
    iget-object v0, p0, Lo/ahL;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/ahL;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/ahL;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
