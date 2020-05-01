.class abstract Lo/gs;
.super Lo/hq;
.source ""


# instance fields
.field public countFailuresToDeliverEvents:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "countFailuresToDeliverEvents"
    .end annotation
.end field

.field public disableRetries:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableRetries"
    .end annotation
.end field

.field public logDetailsForFailureToDeliverEvents:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logDetailsForFailureToDeliverEvents"
    .end annotation
.end field

.field public retryAllFailuresWhenNetworkAvailable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retryAllFailuresWhenNetworkAvailable"
    .end annotation
.end field

.field public retryOnFailureToDeliver:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retryOnFailureToDeliver"
    .end annotation
.end field

.field public retryTimeoutInHours:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retryTimeoutInHours"
    .end annotation
.end field

.field public retryWhenScheduled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retryWhenScheduled"
    .end annotation
.end field

.field public undeliveredPayloadExpirationInHours:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "undeliveredPayloadExpirationInHours"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lo/gs;->retryOnFailureToDeliver:Z

    .line 29
    iput-boolean v0, p0, Lo/gs;->retryAllFailuresWhenNetworkAvailable:Z

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lo/gs;->retryWhenScheduled:Z

    const/16 v2, 0x18

    .line 41
    iput v2, p0, Lo/gs;->retryTimeoutInHours:I

    const/16 v2, 0x48

    .line 47
    iput v2, p0, Lo/gs;->undeliveredPayloadExpirationInHours:I

    .line 53
    iput-boolean v0, p0, Lo/gs;->logDetailsForFailureToDeliverEvents:Z

    .line 59
    iput-boolean v1, p0, Lo/gs;->countFailuresToDeliverEvents:Z

    .line 65
    iput-boolean v0, p0, Lo/gs;->disableRetries:Z

    return-void
.end method
