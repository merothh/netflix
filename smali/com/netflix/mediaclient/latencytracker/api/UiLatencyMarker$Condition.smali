.class public final enum Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation runtime Lcom/netflix/binder/UsedByReflection;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Condition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

.field public static final enum b:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

.field private static final synthetic c:[Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

.field public static final enum d:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

.field public static final enum e:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    const/4 v2, 0x0

    const-string v3, "USER_LOGGED_IN"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->b:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    const/4 v2, 0x1

    const-string v3, "LANGUAGE_INSTALL_PENDING"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->d:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    const/4 v2, 0x2

    const-string v3, "NETWORK_CONNECTED"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->a:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    const/4 v2, 0x3

    const-string v3, "PROFILE_CHANGED"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->e:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->c:[Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->c:[Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    return-object v0
.end method
