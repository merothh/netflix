.class Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;
.super Ljava/lang/Object;
.source "MeasureTranslator.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_render"


# instance fields
.field private mDeviceHeight:I

.field private mDeviceWidth:I

.field private mHorizontalOffset:I

.field private mRootContainerHeight:I

.field private mRootContainerWidth:I

.field private mScaleFactor:F

.field private mVerticalOffset:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    .line 47
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v0, "nf_subtitles_render"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Device display area w/h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and root container for images w/h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    iput p2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerHeight:I

    .line 52
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerWidth:I

    .line 53
    iput p4, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mDeviceHeight:I

    .line 54
    iput p3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mDeviceWidth:I

    .line 56
    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 57
    int-to-float v1, p4

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 59
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const-string/jumbo v2, "nf_subtitles_render"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scale factors w/h: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->isAspectRationFourByThree(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 64
    const-string/jumbo v1, "nf_subtitles_render"

    const-string/jumbo v2, "Movie gots whole width"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput v5, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mHorizontalOffset:I

    .line 66
    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    .line 67
    int-to-float v0, p2

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v0, p4, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mVerticalOffset:I

    .line 69
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mVerticalOffset:I

    if-gez v0, :cond_2

    .line 70
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Offset can not be negative!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput v5, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mVerticalOffset:I

    .line 83
    :cond_2
    :goto_0
    return-void

    .line 74
    :cond_3
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "Movie gots whole height"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput v5, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mVerticalOffset:I

    .line 76
    iput v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    .line 77
    int-to-float v0, p1

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v0, p3, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mHorizontalOffset:I

    .line 78
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mHorizontalOffset:I

    if-gez v0, :cond_2

    .line 79
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "Offset can not be negative!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput v5, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mHorizontalOffset:I

    goto :goto_0
.end method

.method public static createMeasureTranslator(IILandroid/view/View;)Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 90
    if-lez v1, :cond_0

    if-gtz v2, :cond_1

    .line 91
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v1, "DisplayView measures not know!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;-><init>(IIII)V

    goto :goto_0
.end method

.method private static isAspectRationFourByThree(II)Z
    .locals 2

    .prologue
    .line 99
    mul-int/lit8 v0, p0, 0x4

    mul-int/lit8 v1, p1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDeviceHeight()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mDeviceHeight:I

    return v0
.end method

.method public getDeviceWidth()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mDeviceWidth:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mHorizontalOffset:I

    return v0
.end method

.method public getRootContainerHeight()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerHeight:I

    return v0
.end method

.method public getRootContainerWidth()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerWidth:I

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mVerticalOffset:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MeasureTranslator [mScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVerticalOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mVerticalOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mHorizontalOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mHorizontalOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRootContainerWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRootContainerHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mRootContainerHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeviceWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mDeviceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeviceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/MeasureTranslator;->mDeviceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
