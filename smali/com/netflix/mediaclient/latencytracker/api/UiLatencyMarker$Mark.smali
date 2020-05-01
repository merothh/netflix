.class public final enum Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;
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
    name = "Mark"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

.field public static final enum b:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

.field public static final enum c:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

.field public static final enum d:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

.field public static final enum e:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

.field public static final enum f:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

.field public static final enum g:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

.field public static final enum h:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

.field public static final enum i:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

.field public static final enum j:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

.field private static final synthetic k:[Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    const/4 v2, 0x0

    const-string v3, "APP_ON_CREATE_START"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->c:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    const/4 v2, 0x1

    const-string v3, "APP_ON_CREATE_END"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->b:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    const/4 v2, 0x2

    const-string v3, "LAUNCH_ACTIVITY_CREATE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->a:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    const/4 v2, 0x3

    const-string v3, "LAUNCH_ACTIVITY_READY"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->e:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    const/4 v2, 0x4

    const-string v3, "PROFILE_SELECTION_ACTIVITY_CREATE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->d:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    const/4 v2, 0x5

    const-string v3, "PROFILE_SELECTION_TTI_END"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->f:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    const/4 v2, 0x6

    const-string v3, "PROFILE_SELECTION_TTR_END"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->j:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    const/4 v2, 0x7

    const-string v3, "PROFILE_SELECTION_CLICKED"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->h:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    const/16 v2, 0x8

    const-string v3, "RELAUNCH_ACTIVITY_CREATE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->g:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    const/16 v2, 0x9

    const-string v3, "HOME_ACTIVITY_CREATE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->i:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->k:[Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->k:[Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    return-object v0
.end method
