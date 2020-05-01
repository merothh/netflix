.class public Lo/aib;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/aib;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lo/aib;

.field public static final j:Lo/aib;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/aib;->d:Ljava/util/Map;

    .line 35
    new-instance v0, Lo/aib;

    const-string v1, "EMAIL_PASSWORD"

    invoke-direct {v0, v1}, Lo/aib;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/aib;->g:Lo/aib;

    .line 37
    new-instance v0, Lo/aib;

    const-string v1, "USER_ID_TOKEN"

    invoke-direct {v0, v1}, Lo/aib;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/aib;->j:Lo/aib;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lo/aib;->a:Ljava/lang/String;

    .line 48
    sget-object v0, Lo/aib;->d:Ljava/util/Map;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lo/aib;->d:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static e(Ljava/lang/String;)Lo/aib;
    .locals 1

    .line 59
    sget-object v0, Lo/aib;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/aib;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/aib;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 98
    :cond_0
    instance-of v0, p1, Lo/aib;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 99
    :cond_1
    check-cast p1, Lo/aib;

    .line 100
    iget-object v0, p0, Lo/aib;->a:Ljava/lang/String;

    iget-object p1, p1, Lo/aib;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 89
    iget-object v0, p0, Lo/aib;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lo/aib;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
