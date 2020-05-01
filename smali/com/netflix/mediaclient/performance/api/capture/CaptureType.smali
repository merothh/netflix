.class public final enum Lcom/netflix/mediaclient/performance/api/capture/CaptureType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/performance/api/capture/CaptureType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

.field public static final enum b:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

.field public static final enum c:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

.field public static final enum d:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

.field public static final enum e:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

.field private static final synthetic g:[Lcom/netflix/mediaclient/performance/api/capture/CaptureType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    new-instance v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    const/4 v2, 0x0

    const-string v3, "FPS"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->d:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    const/4 v2, 0x1

    const-string v3, "CPU"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->b:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    const/4 v2, 0x2

    const-string v3, "Battery"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->c:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    const/4 v2, 0x3

    const-string v3, "SystemMemory"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->e:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    const/4 v2, 0x4

    const-string v3, "RuntimeMemory"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->a:Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->g:[Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/performance/api/capture/CaptureType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/performance/api/capture/CaptureType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->g:[Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/performance/api/capture/CaptureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/performance/api/capture/CaptureType;

    return-object v0
.end method
