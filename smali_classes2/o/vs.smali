.class public abstract Lo/vs;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(D)D
    .locals 2

    neg-double p0, p0

    .line 30
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static d(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lo/vs;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const p0, 0xf483

    const/16 v3, 0x3e

    const/16 v4, 0x14

    .line 26
    invoke-static {p0, v3, v4}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lcom/google/gson/Gson;

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/TypeAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p0
.end method


# virtual methods
.method public abstract a()D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "center"
    .end annotation
.end method

.method public abstract b()D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scale"
    .end annotation
.end method

.method public abstract c()D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end"
    .end annotation
.end method

.method public abstract d()D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gamma"
    .end annotation
.end method

.method public d(D)D
    .locals 6

    .line 34
    invoke-virtual {p0}, Lo/vs;->c()D

    move-result-wide v0

    invoke-virtual {p0}, Lo/vs;->e()D

    move-result-wide v2

    invoke-virtual {p0}, Lo/vs;->c()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p0}, Lo/vs;->a()D

    move-result-wide v4

    sub-double/2addr p1, v4

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double p1, p1, v4

    invoke-virtual {p0}, Lo/vs;->b()D

    move-result-wide v4

    div-double/2addr p1, v4

    invoke-static {p1, p2}, Lo/vs;->a(D)D

    move-result-wide p1

    invoke-virtual {p0}, Lo/vs;->d()D

    move-result-wide v4

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, p1

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public abstract e()D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start"
    .end annotation
.end method
