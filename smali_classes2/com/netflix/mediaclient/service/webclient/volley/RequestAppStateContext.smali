.class public final enum Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

.field public static final enum b:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

.field public static final c:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext$Activity;

.field public static final enum d:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

.field public static final enum e:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

.field private static final synthetic i:[Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;


# instance fields
.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    const/4 v2, 0x0

    const-string v3, "BACKGROUND"

    const-string v4, "background"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->b:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    const/4 v2, 0x1

    const-string v3, "FOREGROUND"

    const-string v4, "foreground"

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->a:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    const/4 v2, 0x2

    const-string v3, "IDLE"

    const-string v4, "idle"

    .line 16
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->e:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    const/4 v2, 0x3

    const-string v3, "UNKNOWN"

    const-string v4, "unknown"

    .line 17
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->d:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->i:[Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->c:Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext$Activity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->i:[Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/volley/RequestAppStateContext;->j:Ljava/lang/String;

    const-string v2, "appState"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSONObject().apply {\n   \u2026key)\n        }.toString()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
