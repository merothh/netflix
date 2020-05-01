.class public Lo/agT;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo/agT;

.field public static final b:Lo/agT;

.field public static final c:Lo/agT;

.field public static final d:Lo/agT;

.field public static final e:Lo/agT;

.field public static final f:Lo/agT;

.field public static final g:Lo/agT;

.field public static final h:Lo/agT;

.field public static final i:Lo/agT;

.field private static j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agT;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final k:Ljava/lang/String;

.field private final m:Z

.field private final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/agT;->j:Ljava/util/Map;

    .line 35
    new-instance v0, Lo/agT;

    const/4 v1, 0x1

    const-string v2, "PSK"

    invoke-direct {v0, v2, v1, v1}, Lo/agT;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agT;->a:Lo/agT;

    .line 37
    new-instance v0, Lo/agT;

    const-string v2, "PSK_PROFILE"

    invoke-direct {v0, v2, v1, v1}, Lo/agT;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agT;->b:Lo/agT;

    .line 39
    new-instance v0, Lo/agT;

    const/4 v2, 0x0

    const-string v3, "X509"

    invoke-direct {v0, v3, v2, v1}, Lo/agT;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agT;->d:Lo/agT;

    .line 41
    new-instance v0, Lo/agT;

    const-string v3, "RSA"

    invoke-direct {v0, v3, v2, v1}, Lo/agT;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agT;->c:Lo/agT;

    .line 43
    new-instance v0, Lo/agT;

    const-string v3, "ECC"

    invoke-direct {v0, v3, v2, v1}, Lo/agT;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agT;->e:Lo/agT;

    .line 45
    new-instance v0, Lo/agT;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lo/agT;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agT;->f:Lo/agT;

    .line 47
    new-instance v0, Lo/agT;

    const-string v1, "NONE_SUFFIXED"

    invoke-direct {v0, v1, v2, v2}, Lo/agT;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agT;->g:Lo/agT;

    .line 49
    new-instance v0, Lo/agT;

    const-string v1, "MT_PROTECTED"

    invoke-direct {v0, v1, v2, v2}, Lo/agT;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agT;->h:Lo/agT;

    .line 51
    new-instance v0, Lo/agT;

    const-string v1, "PROVISIONED"

    invoke-direct {v0, v1, v2, v2}, Lo/agT;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/agT;->i:Lo/agT;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lo/agT;->k:Ljava/lang/String;

    .line 63
    iput-boolean p2, p0, Lo/agT;->m:Z

    .line 64
    iput-boolean p3, p0, Lo/agT;->o:Z

    .line 67
    sget-object p2, Lo/agT;->j:Ljava/util/Map;

    monitor-enter p2

    .line 68
    :try_start_0
    sget-object p3, Lo/agT;->j:Ljava/util/Map;

    invoke-interface {p3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static b(Ljava/lang/String;)Lo/agT;
    .locals 1

    .line 78
    sget-object v0, Lo/agT;->j:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/agT;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lo/agT;->o:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lo/agT;->m:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/agT;->k:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 131
    :cond_0
    instance-of v0, p1, Lo/agT;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 132
    :cond_1
    check-cast p1, Lo/agT;

    .line 133
    iget-object v0, p0, Lo/agT;->k:Ljava/lang/String;

    iget-object p1, p1, Lo/agT;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 122
    iget-object v0, p0, Lo/agT;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lo/agT;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
