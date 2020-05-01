.class public Lo/aig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aig$Activity;,
        Lo/aig$StateListAnimator;,
        Lo/aig$ActionBar;
    }
.end annotation


# static fields
.field private static volatile a:I

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/msl/MslConstants$CompressionAlgorithm;",
            "Lo/aig$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lo/aig;->c:Ljava/util/Map;

    const/16 v0, 0xc8

    .line 44
    sput v0, Lo/aig;->a:I

    .line 174
    sget-object v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->c:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    new-instance v1, Lo/aig$StateListAnimator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/aig$StateListAnimator;-><init>(Lo/aig$5;)V

    invoke-static {v0, v1}, Lo/aig;->c(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;Lo/aig$ActionBar;)V

    .line 175
    sget-object v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->d:Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    new-instance v1, Lo/aig$Activity;

    invoke-direct {v1, v2}, Lo/aig$Activity;-><init>(Lo/aig$5;)V

    invoke-static {v0, v1}, Lo/aig;->c(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;Lo/aig$ActionBar;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;[B)[B
    .locals 4

    .line 216
    sget-object v0, Lo/aig;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aig$ActionBar;

    if-eqz v0, :cond_1

    .line 220
    :try_start_0
    invoke-interface {v0, p1}, Lo/aig$ActionBar;->a([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    array-length v1, v0

    array-length p0, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 223
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lo/agz;->bX:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 218
    :cond_1
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object v0, Lo/agz;->bP:Lo/agz;

    invoke-virtual {p0}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;[B)[B
    .locals 4

    .line 236
    sget-object v0, Lo/aig;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aig$ActionBar;

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    sget v1, Lo/aig;->a:I

    invoke-interface {v0, p1, v1}, Lo/aig$ActionBar;->b([BI)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 242
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lo/agz;->bV:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 238
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslException;

    sget-object v0, Lo/agz;->bP:Lo/agz;

    invoke-virtual {p0}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/netflix/msl/MslException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;Lo/aig$ActionBar;)V
    .locals 1

    if-nez p1, :cond_0

    .line 187
    sget-object p1, Lo/aig;->c:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 189
    :cond_0
    sget-object v0, Lo/aig;->c:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
