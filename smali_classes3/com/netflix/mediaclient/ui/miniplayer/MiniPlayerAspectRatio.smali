.class public final enum Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASPECT_RATIO_16_9:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "16x9"
    .end annotation
.end field

.field public static final enum ASPECT_RATIO_1_1:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "1x1"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Unknown"
    .end annotation
.end field

.field private static final synthetic d:[Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;


# instance fields
.field private final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;

    new-instance v1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;

    const v2, 0x3fe38e39

    const/4 v3, 0x0

    const-string v4, "ASPECT_RATIO_16_9"

    .line 6
    invoke-direct {v1, v4, v3, v2}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;->ASPECT_RATIO_16_9:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;

    const/4 v3, 0x1

    const-string v4, "ASPECT_RATIO_1_1"

    const/high16 v5, 0x3f800000    # 1.0f

    .line 8
    invoke-direct {v1, v4, v3, v5}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;->ASPECT_RATIO_1_1:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    .line 10
    invoke-direct {v1, v4, v3, v2}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;->UNKNOWN:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;->d:[Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;->e:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;->d:[Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;

    return-object v0
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;->e:F

    return v0
.end method
