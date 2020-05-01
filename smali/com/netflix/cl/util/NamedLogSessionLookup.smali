.class public final enum Lcom/netflix/cl/util/NamedLogSessionLookup;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/util/NamedLogSessionLookup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/util/NamedLogSessionLookup;

.field public static final enum INSTANCE:Lcom/netflix/cl/util/NamedLogSessionLookup;


# instance fields
.field private sessionIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/netflix/cl/util/NamedLogSessionLookup;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/util/NamedLogSessionLookup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/util/NamedLogSessionLookup;->INSTANCE:Lcom/netflix/cl/util/NamedLogSessionLookup;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/cl/util/NamedLogSessionLookup;

    .line 10
    sget-object v2, Lcom/netflix/cl/util/NamedLogSessionLookup;->INSTANCE:Lcom/netflix/cl/util/NamedLogSessionLookup;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/cl/util/NamedLogSessionLookup;->$VALUES:[Lcom/netflix/cl/util/NamedLogSessionLookup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/netflix/cl/util/NamedLogSessionLookup;->sessionIdMap:Ljava/util/Map;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/util/NamedLogSessionLookup;
    .locals 1

    .line 10
    const-class v0, Lcom/netflix/cl/util/NamedLogSessionLookup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/util/NamedLogSessionLookup;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/util/NamedLogSessionLookup;
    .locals 1

    .line 10
    sget-object v0, Lcom/netflix/cl/util/NamedLogSessionLookup;->$VALUES:[Lcom/netflix/cl/util/NamedLogSessionLookup;

    invoke-virtual {v0}, [Lcom/netflix/cl/util/NamedLogSessionLookup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/util/NamedLogSessionLookup;

    return-object v0
.end method


# virtual methods
.method public addSession(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/netflix/cl/util/NamedLogSessionLookup;->sessionIdMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeSessionId(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/netflix/cl/util/NamedLogSessionLookup;->sessionIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method
