.class public final enum Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;
.super Ljava/lang/Enum;
.source "CustomerServiceLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

.field public static final enum green:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

.field public static final enum red:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

.field public static final enum yellow:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    const-string/jumbo v1, "red"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->red:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    const-string/jumbo v1, "yellow"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->yellow:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    const-string/jumbo v1, "green"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->green:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->red:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->yellow:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->green:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    return-object v0
.end method
