.class public final enum Lcom/netflix/mediaclient/service/logging/perf/Events;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/logging/perf/Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic c:[Lcom/netflix/mediaclient/service/logging/perf/Events;

.field public static final enum d:Lcom/netflix/mediaclient/service/logging/perf/Events;

.field public static final enum e:Lcom/netflix/mediaclient/service/logging/perf/Events;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Events;

    const/4 v1, 0x0

    const-string v2, "DP_METADATA_FETCHED_EVENT"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/perf/Events;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Events;->e:Lcom/netflix/mediaclient/service/logging/perf/Events;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Events;

    const/4 v2, 0x1

    const-string v3, "APP_TRIM_MEMORY"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/logging/perf/Events;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Events;->d:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/perf/Events;

    .line 14
    sget-object v3, Lcom/netflix/mediaclient/service/logging/perf/Events;->e:Lcom/netflix/mediaclient/service/logging/perf/Events;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->d:Lcom/netflix/mediaclient/service/logging/perf/Events;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Events;->c:[Lcom/netflix/mediaclient/service/logging/perf/Events;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/perf/Events;
    .locals 1

    .line 14
    const-class v0, Lcom/netflix/mediaclient/service/logging/perf/Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/logging/perf/Events;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/perf/Events;
    .locals 1

    .line 14
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Events;->c:[Lcom/netflix/mediaclient/service/logging/perf/Events;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/perf/Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/perf/Events;

    return-object v0
.end method
