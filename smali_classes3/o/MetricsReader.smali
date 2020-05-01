.class public Lo/MetricsReader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/fasterxml/jackson/core/JsonLocation;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    iget-object v1, p0, Lo/MetricsReader;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/MetricsReader;->d:Ljava/lang/Class;

    .line 36
    invoke-static {v1}, Lo/ConnectivityThread;->e(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/MetricsReader;->e:Lcom/fasterxml/jackson/core/JsonLocation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Object id [%s] (for %s) at %s"

    .line 35
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
