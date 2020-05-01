.class Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/StatusCode;",
            "Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->d:Ljava/util/Map;

    .line 102
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->e:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 106
    iget v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->a:I

    .line 107
    iget v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->c:I

    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 4

    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->e:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    iget v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->a:I

    const-string v2, "total"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    iget v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->b:I

    const-string v2, "totalFailed"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    iget v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->c:I

    const-string v2, "totalSuccess"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "failuresPerCause"

    .line 132
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$TaskDescription;

    .line 134
    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$TaskDescription;->c(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 2

    .line 111
    iget v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->a:I

    .line 112
    iget v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->b:I

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$TaskDescription;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$TaskDescription;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$TaskDescription;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 117
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$TaskDescription;->d()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatsPerLoggingType{loggingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->e:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalNumberOfDeliveryAttempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalNumberOfSuccessDeliveries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalNumberOfFailures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failureCauseMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
