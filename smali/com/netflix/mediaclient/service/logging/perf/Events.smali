.class public final enum Lcom/netflix/mediaclient/service/logging/perf/Events;
.super Ljava/lang/Enum;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/perf/Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/perf/Events;

.field public static final enum DP_METADATA_FETCHED_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

.field public static final enum DP_PREFETCH_REQUEST_IN_FLIGHT_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

.field public static final enum HOME_ACTIVITY_CREATED:Lcom/netflix/mediaclient/service/logging/perf/Events;

.field public static final enum LOLOMO_METADATA_FETCHED_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

.field public static final enum NETFLIX_SERVICE_STARTED_COMMAND:Lcom/netflix/mediaclient/service/logging/perf/Events;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Events;

    const-string/jumbo v1, "HOME_ACTIVITY_CREATED"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Events;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Events;->HOME_ACTIVITY_CREATED:Lcom/netflix/mediaclient/service/logging/perf/Events;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Events;

    const-string/jumbo v1, "NETFLIX_SERVICE_STARTED_COMMAND"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/perf/Events;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Events;->NETFLIX_SERVICE_STARTED_COMMAND:Lcom/netflix/mediaclient/service/logging/perf/Events;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Events;

    const-string/jumbo v1, "LOLOMO_METADATA_FETCHED_EVENT"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/logging/perf/Events;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Events;->LOLOMO_METADATA_FETCHED_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Events;

    const-string/jumbo v1, "DP_METADATA_FETCHED_EVENT"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/logging/perf/Events;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Events;->DP_METADATA_FETCHED_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Events;

    const-string/jumbo v1, "DP_PREFETCH_REQUEST_IN_FLIGHT_EVENT"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/service/logging/perf/Events;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Events;->DP_PREFETCH_REQUEST_IN_FLIGHT_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/perf/Events;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->HOME_ACTIVITY_CREATED:Lcom/netflix/mediaclient/service/logging/perf/Events;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->NETFLIX_SERVICE_STARTED_COMMAND:Lcom/netflix/mediaclient/service/logging/perf/Events;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->LOLOMO_METADATA_FETCHED_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->DP_METADATA_FETCHED_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->DP_PREFETCH_REQUEST_IN_FLIGHT_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Events;->$VALUES:[Lcom/netflix/mediaclient/service/logging/perf/Events;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/perf/Events;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/logging/perf/Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/Events;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/perf/Events;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Events;->$VALUES:[Lcom/netflix/mediaclient/service/logging/perf/Events;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/perf/Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/perf/Events;

    return-object v0
.end method
