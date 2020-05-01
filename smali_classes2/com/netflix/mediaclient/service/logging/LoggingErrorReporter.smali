.class public final enum Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$TaskDescription;,
        Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;,
        Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

.field public static final enum d:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;


# instance fields
.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;",
            "Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->d:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    .line 21
    sget-object v2, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->d:Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->a:[Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->e:Ljava/util/Map;

    return-void
.end method

.method private b(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;-><init>(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;)V

    .line 47
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->e(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->c()V

    .line 56
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    const-string v0, "LoggingErrorReporter"

    .line 62
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 63
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->e:Ljava/util/Map;

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

    check-cast v3, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;

    .line 64
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$ActionBar;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preference_logging_delivery_stats"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Saved"

    .line 67
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to create a JSON!"

    .line 70
    invoke-static {v0, v1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;
    .locals 1

    .line 21
    const-class v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;
    .locals 1

    .line 21
    sget-object v0, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->a:[Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;

    return-object v0
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->b(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;Lcom/netflix/mediaclient/StatusCode;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter;->b(Lcom/netflix/mediaclient/service/logging/LoggingErrorReporter$LoggingType;Lcom/netflix/mediaclient/StatusCode;)V

    return-void
.end method
