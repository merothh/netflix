.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ConsolidatedLoggingSessionSpecification$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_ConsolidatedLoggingSessionSpecification$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDisableChancePercentagePerUserSession()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableChancePercentagePerUserSession"
    .end annotation
.end method

.method public abstract getSession()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session"
    .end annotation
.end method

.method public abstract getSuppressPercentagePerEvent()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suppressPercentagePerEvent"
    .end annotation
.end method
