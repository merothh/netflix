.class public Lcom/netflix/mediaclient/service/logging/logblob/Log;
.super Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.source "Log.java"


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/ui/LogArguments;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/logblob/Log;->populate(Lcom/netflix/mediaclient/javabridge/ui/LogArguments;)V

    return-void
.end method

.method private populate(Lcom/netflix/mediaclient/javabridge/ui/LogArguments;)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Log arguments are null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/Log;->mType:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/Log;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "logLevel"

    iget-object v3, p1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->logLevel:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->getLevelInString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/Log;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "msg"

    iget-object v3, p1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->traceArea:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/Log;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "traceArea"

    iget-object v3, p1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->traceArea:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->tags:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->tags:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->tags:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->tags:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v0, :cond_2

    :goto_0
    iget-object v2, p1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->tags:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->tags:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Log;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "traceArea"

    iget-object v2, p1, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->traceArea:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-void
.end method


# virtual methods
.method public getSeverity()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Log;->mType:Ljava/lang/String;

    return-object v0
.end method
