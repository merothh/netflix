.class public Lo/ahn;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo/ahn;

.field public static final b:Lo/ahn;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/ahn;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[C


# instance fields
.field private final d:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/ahn;->c:Ljava/util/Map;

    const-string v0, "0123456789ABCDEF"

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lo/ahn;->e:[C

    .line 40
    new-instance v0, Lo/ahn;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x7b

    aput-byte v3, v1, v2

    const-string v2, "JSON"

    invoke-direct {v0, v2, v1}, Lo/ahn;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Lo/ahn;->a:Lo/ahn;

    .line 42
    new-instance v0, Lo/ahn;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "CBOR"

    invoke-direct {v0, v2, v1}, Lo/ahn;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Lo/ahn;->b:Lo/ahn;

    return-void

    :array_0
    .array-data 1
        -0x27t
        -0x27t
        -0x9t
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/ahn;->d:Ljava/lang/String;

    .line 53
    invoke-static {p2}, Lo/ahn;->a([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/ahn;->g:Ljava/lang/String;

    .line 56
    sget-object p2, Lo/ahn;->c:Ljava/util/Map;

    monitor-enter p2

    .line 57
    :try_start_0
    sget-object v0, Lo/ahn;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .line 133
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 134
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 135
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 136
    sget-object v4, Lo/ahn;->e:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 137
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lo/ahn;
    .locals 1

    .line 67
    sget-object v0, Lo/ahn;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/ahn;

    return-object p0
.end method

.method public static b([B)Lo/ahn;
    .locals 3

    .line 76
    array-length v0, p0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0}, Lo/ahn;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 77
    sget-object v0, Lo/ahn;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ahn;

    .line 78
    iget-object v2, v1, Lo/ahn;->g:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/ahn;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 127
    :cond_0
    instance-of v1, p1, Lo/ahn;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 128
    :cond_1
    check-cast p1, Lo/ahn;

    .line 129
    iget-object v1, p0, Lo/ahn;->d:Ljava/lang/String;

    iget-object v3, p1, Lo/ahn;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/ahn;->g:Ljava/lang/String;

    iget-object p1, p1, Lo/ahn;->g:Ljava/lang/String;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 118
    iget-object v0, p0, Lo/ahn;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/ahn;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lo/ahn;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
