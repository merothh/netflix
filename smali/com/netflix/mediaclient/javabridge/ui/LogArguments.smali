.class public final Lcom/netflix/mediaclient/javabridge/ui/LogArguments;
.super Ljava/lang/Object;
.source "LogArguments.java"


# static fields
.field public static final LOG_LEVEL:Ljava/lang/String; = "logLevel"

.field public static final MSG:Ljava/lang/String; = "msg"

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final TRACEAREA:Ljava/lang/String; = "traceArea"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field public logLevel:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

.field public msg:Ljava/lang/String;

.field public tags:[Ljava/lang/String;

.field public traceArea:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->logLevel:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    iput-object p2, p0, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->type:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->tags:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "logLevel"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->logLevel:Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/javabridge/ui/LogArguments$LogLevel;->getLevelInString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "msg"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "traceArea"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->traceArea:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "tags"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/LogArguments;->tags:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
