.class public Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;
.super Ljava/lang/Object;
.source "CellResolution.java"


# static fields
.field public static final CELL_RESOLUTION_40x19:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

.field public static final CELL_RESOLUTION_52x19:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

.field private static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x13

    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    const/16 v1, 0x28

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;-><init>(II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->CELL_RESOLUTION_40x19:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    const/16 v1, 0x34

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;-><init>(II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->CELL_RESOLUTION_52x19:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->mWidth:I

    iput p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->mHeight:I

    return-void
.end method

.method public static createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;
    .locals 6

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cell resolution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->extractNumberPair(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v3, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;-><init>(II)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "New cell resolution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cell resolution ajust using extent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->extractNumberPair(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->extractNumberPair(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v0

    :goto_1
    if-eqz v2, :cond_6

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v3, v0

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v2

    div-int v0, v3, v0

    int-to-float v0, v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->CELL_RESOLUTION_52x19:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->CELL_RESOLUTION_40x19:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Find cell resolution not ajusted to extent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    float-to-double v0, p3

    cmpl-double v0, v0, v4

    if-lez v0, :cond_7

    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->CELL_RESOLUTION_52x19:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->CELL_RESOLUTION_40x19:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public getHeightCount()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->mHeight:I

    return v0
.end method

.method public getWidthCount()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->mWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CellResolution [width count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
