.class public final enum Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;
.super Ljava/lang/Enum;
.source "BarkerHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

.field public static final enum REGULAR:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

.field public static final enum SHORT:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

.field public static final enum TALL:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;


# instance fields
.field private mHRatio:I

.field private mStartRangeDp:I

.field private mWRatio:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v4, 0x10

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    const-string/jumbo v1, "SHORT"

    const/16 v5, 0x8

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->SHORT:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    new-instance v5, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    const-string/jumbo v6, "REGULAR"

    const/16 v8, 0x2d0

    const/16 v10, 0x9

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->REGULAR:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    new-instance v8, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    const-string/jumbo v9, "TALL"

    const/16 v11, 0x3c0

    const/4 v12, 0x4

    move v10, v14

    invoke-direct/range {v8 .. v13}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->TALL:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    new-array v0, v13, [Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    sget-object v1, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->SHORT:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->REGULAR:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->TALL:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    aput-object v1, v0, v14

    sput-object v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->$VALUES:[Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->mWRatio:I

    iput p5, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->mHRatio:I

    iput p3, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->mStartRangeDp:I

    return-void
.end method

.method public static getFormatForDevice(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;
    .locals 8

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v3

    const/4 v1, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->values()[Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v2, v4, v1

    iget v6, v2, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->mStartRangeDp:I

    if-le v3, v6, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->$VALUES:[Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;

    return-object v0
.end method


# virtual methods
.method public getHeightRatio()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->mHRatio:I

    return v0
.end method

.method public getRatio()I
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->getWidthRatio()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->getHeightRatio()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public getWidthRatio()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$ArtworkFormat;->mWRatio:I

    return v0
.end method
