.class public final enum Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;
.super Ljava/lang/Enum;
.source "ApplicationPerformanceMetricsLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

.field public static final enum appStart:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

.field public static final enum inputEvent:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

.field public static final enum logout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

.field public static final enum resumeFromBackground:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 474
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    const-string/jumbo v1, "appStart"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->appStart:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    .line 475
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    const-string/jumbo v1, "inputEvent"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->inputEvent:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    .line 476
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    const-string/jumbo v1, "logout"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->logout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    .line 477
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    const-string/jumbo v1, "resumeFromBackground"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->resumeFromBackground:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    .line 473
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->appStart:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->inputEvent:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->logout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->resumeFromBackground:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 473
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;
    .locals 1

    .prologue
    .line 473
    const-class v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;
    .locals 1

    .prologue
    .line 473
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    return-object v0
.end method