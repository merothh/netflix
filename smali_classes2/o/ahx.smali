.class public Lo/ahx;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo/ahx;

.field public static final b:Lo/ahx;

.field public static final c:Lo/ahx;

.field public static final d:Lo/ahx;

.field public static final e:Lo/ahx;

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/ahx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/ahx;->g:Ljava/util/Map;

    .line 34
    new-instance v0, Lo/ahx;

    const-string v1, "ASYMMETRIC_WRAPPED"

    invoke-direct {v0, v1}, Lo/ahx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahx;->b:Lo/ahx;

    .line 36
    new-instance v0, Lo/ahx;

    const-string v1, "DIFFIE_HELLMAN"

    invoke-direct {v0, v1}, Lo/ahx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahx;->e:Lo/ahx;

    .line 38
    new-instance v0, Lo/ahx;

    const-string v1, "JWE_LADDER"

    invoke-direct {v0, v1}, Lo/ahx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahx;->a:Lo/ahx;

    .line 40
    new-instance v0, Lo/ahx;

    const-string v1, "JWK_LADDER"

    invoke-direct {v0, v1}, Lo/ahx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahx;->d:Lo/ahx;

    .line 42
    new-instance v0, Lo/ahx;

    const-string v1, "SYMMETRIC_WRAPPED"

    invoke-direct {v0, v1}, Lo/ahx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/ahx;->c:Lo/ahx;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lo/ahx;->i:Ljava/lang/String;

    .line 53
    sget-object v0, Lo/ahx;->g:Ljava/util/Map;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lo/ahx;->g:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static c(Ljava/lang/String;)Lo/ahx;
    .locals 1

    .line 64
    sget-object v0, Lo/ahx;->g:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/ahx;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/ahx;->i:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 103
    :cond_0
    instance-of v0, p1, Lo/ahx;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 104
    :cond_1
    check-cast p1, Lo/ahx;

    .line 105
    iget-object v0, p0, Lo/ahx;->i:Ljava/lang/String;

    iget-object p1, p1, Lo/ahx;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 94
    iget-object v0, p0, Lo/ahx;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lo/ahx;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
