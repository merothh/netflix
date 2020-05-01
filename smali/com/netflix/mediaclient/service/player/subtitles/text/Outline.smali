.class public final Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;
.super Ljava/lang/Object;
.source "Outline.java"


# static fields
.field private static DEFAULT_OUTLINE_BLUR:Ljava/lang/Integer;

.field private static DEFAULT_OUTLINE_COLOR:Ljava/lang/String;

.field private static DEFAULT_OUTLINE_WIDTH:Ljava/lang/Integer;


# instance fields
.field private mEdgeColor:Ljava/lang/String;

.field private mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

.field private mOutlineBlur:Ljava/lang/Integer;

.field private mOutlineWidth:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->DEFAULT_OUTLINE_WIDTH:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->DEFAULT_OUTLINE_BLUR:Ljava/lang/Integer;

    const-string/jumbo v0, "000000"

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->DEFAULT_OUTLINE_COLOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeColor:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mOutlineWidth:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mOutlineBlur:Ljava/lang/Integer;

    return-void
.end method

.method static createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    invoke-direct {v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;-><init>()V

    sget-object v4, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->getLookupValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    iput-object v0, v3, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    :cond_1
    :goto_1
    iget-object v0, v3, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mOutlineBlur:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->DROP_SHADOW:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    iput-object v0, v3, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_2
    const-string/jumbo v4, " "

    invoke-static {p0, v4}, Lcom/netflix/mediaclient/util/StringUtils;->safeSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->startsWithDigit(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    array-length v5, v4

    if-ge v5, v1, :cond_5

    move-object v0, v2

    goto :goto_0

    :cond_3
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    aget-object v0, v4, v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->findColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeColor:Ljava/lang/String;

    move v0, v1

    :cond_5
    aget-object v1, v4, v0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeParsePixelSize(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mOutlineWidth:Ljava/lang/Integer;

    add-int/lit8 v0, v0, 0x1

    array-length v1, v4

    if-ge v0, v1, :cond_1

    aget-object v0, v4, v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeParsePixelSize(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mOutlineBlur:Ljava/lang/Integer;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->UNIFORM:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    iput-object v0, v3, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    goto :goto_2
.end method

.method public static getDefaultOutline()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;
    .locals 5

    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->UNIFORM:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->DEFAULT_OUTLINE_COLOR:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->DEFAULT_OUTLINE_WIDTH:Ljava/lang/Integer;

    sget-object v4, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->DEFAULT_OUTLINE_BLUR:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public getEdgeColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeColor:Ljava/lang/String;

    return-object v0
.end method

.method public getEdgeType()Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    return-object v0
.end method

.method public getOutlineBlur()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mOutlineBlur:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutlineWidth()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mOutlineWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getShadow()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->getShadow()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    move-result-object v0

    goto :goto_0
.end method

.method public isOutlineRequired()Z
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStrokeTextRequired()Z
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->UNIFORM:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setEdgeColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeColor:Ljava/lang/String;

    return-void
.end method

.method public setEdgeType(Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Outline [mEdgeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeType:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEdgeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mEdgeColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOutlineWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mOutlineWidth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOutlineBlur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline;->mOutlineBlur:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
