.class public abstract Lo/ValueCallback;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lo/ValueCallback;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lo/TracingConfig$StateListAnimator;

    invoke-direct {v0, p0}, Lo/TracingConfig$StateListAnimator;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method static a()Lo/ValueCallback;
    .locals 4

    .line 30
    new-instance v0, Lo/TracingConfig;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo/TracingConfig;-><init>(IJ)V

    return-object v0
.end method

.method public static e(I)Lo/ValueCallback;
    .locals 3

    .line 37
    new-instance v0, Lo/TracingConfig;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lo/TracingConfig;-><init>(IJ)V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstSeenTime"
    .end annotation
.end method

.method public d(I)Z
    .locals 6

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p0}, Lo/ValueCallback;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract e()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "api"
    .end annotation
.end method
