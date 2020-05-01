.class public final enum Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

.field private static final synthetic b:[Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

.field public static final enum c:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

.field public static final enum e:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    const/4 v2, 0x0

    const-string v3, "SUCCESS"

    const-string v4, "success"

    .line 4
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->c:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    const/4 v2, 0x1

    const-string v3, "FAILURE"

    const-string v4, "failure"

    .line 5
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->a:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    const/4 v2, 0x2

    const-string v3, "CANCEL"

    const-string v4, "cancel"

    .line 6
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->e:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->b:[Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->b:[Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->d:Ljava/lang/String;

    return-object v0
.end method
