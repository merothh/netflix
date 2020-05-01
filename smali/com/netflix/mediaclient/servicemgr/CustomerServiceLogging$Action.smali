.class public final enum Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;
.super Ljava/lang/Enum;
.source "CustomerServiceLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

.field public static final enum back:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

.field public static final enum dial:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

.field public static final enum home:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

.field public static final enum up:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

.field public static final enum url:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const-string/jumbo v1, "url"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->url:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const-string/jumbo v1, "dial"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->dial:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const-string/jumbo v1, "back"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->back:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const-string/jumbo v1, "home"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->home:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const-string/jumbo v1, "up"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->up:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->url:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->dial:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->back:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->home:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->up:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    return-object v0
.end method
