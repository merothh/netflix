.class public final enum Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;
.super Ljava/lang/Enum;
.source "SuspendLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

.field public static final enum background:Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

.field public static final enum resumeFromBackground:Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

.field public static final enum resumeFromSuspend:Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    const-string/jumbo v1, "background"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;->background:Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    const-string/jumbo v1, "resumeFromBackground"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;->resumeFromBackground:Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    const-string/jumbo v1, "resumeFromSuspend"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;->resumeFromSuspend:Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;->background:Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;->resumeFromBackground:Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;->resumeFromSuspend:Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/SuspendLogging$Reason;

    return-object v0
.end method
