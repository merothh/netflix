.class public final enum Lcom/netflix/mediaclient/ui/common/PlayLocationType;
.super Ljava/lang/Enum;
.source "PlayLocationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/common/PlayLocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/common/PlayLocationType;

.field public static final enum DIRECT_PLAY:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

.field public static final enum EPISODE:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

.field public static final enum STORY_ART:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/ui/common/PlayLocationType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    const-string/jumbo v1, "STORY_ART"

    const-string/jumbo v2, "storyArt"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->STORY_ART:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    const-string/jumbo v1, "EPISODE"

    const-string/jumbo v2, "episode"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->EPISODE:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    const-string/jumbo v1, "DIRECT_PLAY"

    const-string/jumbo v2, "directPlay"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->DIRECT_PLAY:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->UNKNOWN:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->STORY_ART:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->EPISODE:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->DIRECT_PLAY:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->UNKNOWN:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->$VALUES:[Lcom/netflix/mediaclient/ui/common/PlayLocationType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayLocationType;
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->values()[Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->UNKNOWN:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayLocationType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/common/PlayLocationType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->$VALUES:[Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/common/PlayLocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->value:Ljava/lang/String;

    return-object v0
.end method
