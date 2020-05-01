.class public final enum Lcom/netflix/cl/model/VideoQualityLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/model/VideoQualityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/model/VideoQualityLevel;

.field public static final enum high:Lcom/netflix/cl/model/VideoQualityLevel;

.field public static final enum standard:Lcom/netflix/cl/model/VideoQualityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/netflix/cl/model/VideoQualityLevel;

    const/4 v1, 0x0

    const-string v2, "high"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/VideoQualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/VideoQualityLevel;->high:Lcom/netflix/cl/model/VideoQualityLevel;

    .line 8
    new-instance v0, Lcom/netflix/cl/model/VideoQualityLevel;

    const/4 v2, 0x1

    const-string v3, "standard"

    invoke-direct {v0, v3, v2}, Lcom/netflix/cl/model/VideoQualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/VideoQualityLevel;->standard:Lcom/netflix/cl/model/VideoQualityLevel;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/cl/model/VideoQualityLevel;

    .line 6
    sget-object v3, Lcom/netflix/cl/model/VideoQualityLevel;->high:Lcom/netflix/cl/model/VideoQualityLevel;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/cl/model/VideoQualityLevel;->standard:Lcom/netflix/cl/model/VideoQualityLevel;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/cl/model/VideoQualityLevel;->$VALUES:[Lcom/netflix/cl/model/VideoQualityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/VideoQualityLevel;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/cl/model/VideoQualityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/model/VideoQualityLevel;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/model/VideoQualityLevel;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/cl/model/VideoQualityLevel;->$VALUES:[Lcom/netflix/cl/model/VideoQualityLevel;

    invoke-virtual {v0}, [Lcom/netflix/cl/model/VideoQualityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/model/VideoQualityLevel;

    return-object v0
.end method
