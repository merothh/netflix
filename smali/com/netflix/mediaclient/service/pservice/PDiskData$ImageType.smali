.class public final enum Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;
.super Ljava/lang/Enum;
.source "PDiskData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

.field public static final enum HORIZONTAL_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

.field public static final enum STORY_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

.field public static final enum TITLE_CARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

.field public static final enum TRICKPLAY:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    const-string/jumbo v1, "STORY_ART"

    const-string/jumbo v2, "storyArt"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->STORY_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    .line 121
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    const-string/jumbo v1, "HORIZONTAL_ART"

    const-string/jumbo v2, "horizontalArt"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->HORIZONTAL_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    .line 122
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    const-string/jumbo v1, "TRICKPLAY"

    const-string/jumbo v2, "trickplay"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TRICKPLAY:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    .line 123
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    const-string/jumbo v1, "TITLE_CARD"

    const-string/jumbo v2, "titleCard"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TITLE_CARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    .line 124
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    .line 119
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->STORY_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->HORIZONTAL_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TRICKPLAY:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TITLE_CARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->$VALUES:[Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

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

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-object p3, p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->value:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;
    .locals 5

    .prologue
    .line 133
    invoke-static {}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->values()[Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 134
    iget-object v4, v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    :goto_1
    return-object v0

    .line 133
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->$VALUES:[Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->value:Ljava/lang/String;

    return-object v0
.end method
