.class public final enum Lcom/netflix/cl/model/android/PartnerInputSource;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/model/android/PartnerInputSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/model/android/PartnerInputSource;

.field public static final enum bixbyHome:Lcom/netflix/cl/model/android/PartnerInputSource;

.field public static final enum bixbyVoice:Lcom/netflix/cl/model/android/PartnerInputSource;

.field public static final enum sFinder:Lcom/netflix/cl/model/android/PartnerInputSource;

.field public static final enum sFinderRecommendation:Lcom/netflix/cl/model/android/PartnerInputSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/netflix/cl/model/android/PartnerInputSource;

    const/4 v1, 0x0

    const-string v2, "bixbyHome"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/android/PartnerInputSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/android/PartnerInputSource;->bixbyHome:Lcom/netflix/cl/model/android/PartnerInputSource;

    .line 8
    new-instance v0, Lcom/netflix/cl/model/android/PartnerInputSource;

    const/4 v2, 0x1

    const-string v3, "bixbyVoice"

    invoke-direct {v0, v3, v2}, Lcom/netflix/cl/model/android/PartnerInputSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/android/PartnerInputSource;->bixbyVoice:Lcom/netflix/cl/model/android/PartnerInputSource;

    .line 9
    new-instance v0, Lcom/netflix/cl/model/android/PartnerInputSource;

    const/4 v3, 0x2

    const-string v4, "sFinder"

    invoke-direct {v0, v4, v3}, Lcom/netflix/cl/model/android/PartnerInputSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/android/PartnerInputSource;->sFinder:Lcom/netflix/cl/model/android/PartnerInputSource;

    .line 10
    new-instance v0, Lcom/netflix/cl/model/android/PartnerInputSource;

    const/4 v4, 0x3

    const-string v5, "sFinderRecommendation"

    invoke-direct {v0, v5, v4}, Lcom/netflix/cl/model/android/PartnerInputSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/android/PartnerInputSource;->sFinderRecommendation:Lcom/netflix/cl/model/android/PartnerInputSource;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/cl/model/android/PartnerInputSource;

    .line 6
    sget-object v5, Lcom/netflix/cl/model/android/PartnerInputSource;->bixbyHome:Lcom/netflix/cl/model/android/PartnerInputSource;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/cl/model/android/PartnerInputSource;->bixbyVoice:Lcom/netflix/cl/model/android/PartnerInputSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/cl/model/android/PartnerInputSource;->sFinder:Lcom/netflix/cl/model/android/PartnerInputSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/cl/model/android/PartnerInputSource;->sFinderRecommendation:Lcom/netflix/cl/model/android/PartnerInputSource;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/cl/model/android/PartnerInputSource;->$VALUES:[Lcom/netflix/cl/model/android/PartnerInputSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/android/PartnerInputSource;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/cl/model/android/PartnerInputSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/model/android/PartnerInputSource;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/model/android/PartnerInputSource;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/cl/model/android/PartnerInputSource;->$VALUES:[Lcom/netflix/cl/model/android/PartnerInputSource;

    invoke-virtual {v0}, [Lcom/netflix/cl/model/android/PartnerInputSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/model/android/PartnerInputSource;

    return-object v0
.end method
