.class public final enum Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;
.super Ljava/lang/Enum;
.source "BarkerHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

.field public static final enum NARROW:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

.field public static final enum STANDARD:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

.field public static final enum WIDE:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;


# instance fields
.field private mBookmarkColumnSpan:I

.field private mCreditsColumnSpan:I

.field private mEpImgColumnSpan:I

.field private mEpSynopsisColumnSpan:I

.field private mModalColumnSpan:I

.field private mPreReleaseColumnSpan:I

.field private mSimsNumber:I

.field private mStartRangeDp:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    const-string/jumbo v1, "NARROW"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/16 v8, 0x8

    const/4 v9, 0x6

    const/4 v10, 0x4

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->NARROW:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    const-string/jumbo v1, "STANDARD"

    const/4 v2, 0x1

    const/16 v3, 0x2d1

    const/16 v4, 0xa

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x6

    const/4 v10, 0x4

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->STANDARD:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    const-string/jumbo v1, "WIDE"

    const/4 v2, 0x2

    const/16 v3, 0x4c7

    const/16 v4, 0xa

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x6

    const/4 v10, 0x6

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;-><init>(Ljava/lang/String;IIIIIIIII)V

    sput-object v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->WIDE:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->NARROW:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->STANDARD:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->WIDE:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->$VALUES:[Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mStartRangeDp:I

    iput p4, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mModalColumnSpan:I

    iput p5, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mEpImgColumnSpan:I

    iput p6, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mEpSynopsisColumnSpan:I

    iput p7, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mBookmarkColumnSpan:I

    iput p8, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mCreditsColumnSpan:I

    iput p9, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mPreReleaseColumnSpan:I

    iput p10, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mSimsNumber:I

    return-void
.end method

.method public static getFormatForDevice(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;
    .locals 8

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInDPs(Landroid/content/Context;)I

    move-result v3

    const/4 v1, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->values()[Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v2, v4, v1

    iget v6, v2, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mStartRangeDp:I

    if-le v3, v6, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->$VALUES:[Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;

    return-object v0
.end method


# virtual methods
.method public getBookmarkColumnSpan()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mBookmarkColumnSpan:I

    return v0
.end method

.method public getCreditsColumnSpan()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mCreditsColumnSpan:I

    return v0
.end method

.method public getEpisodeImageColumnSpan()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mEpImgColumnSpan:I

    return v0
.end method

.method public getEpisodeSynopsisColumnSpan()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mEpSynopsisColumnSpan:I

    return v0
.end method

.method public getModalColumnSpan()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mModalColumnSpan:I

    return v0
.end method

.method public getNumberOfSims()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mSimsNumber:I

    return v0
.end method

.method public getPreReleaseColumnSpan()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ModalFormat;->mPreReleaseColumnSpan:I

    return v0
.end method
