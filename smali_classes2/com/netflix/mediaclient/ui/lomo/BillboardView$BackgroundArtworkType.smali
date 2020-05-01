.class public final enum Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/lomo/BillboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackgroundArtworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

.field public static final enum b:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

.field public static final enum c:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

.field public static final enum d:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

.field public static final enum e:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

.field private static final synthetic g:[Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;


# instance fields
.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 182
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    const/4 v1, 0x0

    const-string v2, "BillBoard"

    const-string v3, "BILLBOARD"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    .line 183
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    const/4 v2, 0x1

    const-string v3, "VerticalBillboard"

    const-string v4, "VERTICAL_BILLBOARD"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    .line 184
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    const/4 v3, 0x2

    const-string v4, "VerticalStoryArt"

    const-string v5, "VERTICAL_STORY_ART"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->b:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    .line 185
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    const/4 v4, 0x3

    const-string v5, "BoxShot"

    const-string v6, "boxshot"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->d:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    .line 186
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    const/4 v5, 0x4

    const-string v6, "StoryArt"

    invoke-direct {v0, v6, v5, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->c:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    .line 181
    sget-object v6, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->b:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->d:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->c:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->g:[Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

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

    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 192
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->i:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 208
    invoke-interface {p0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->i:Ljava/lang/String;

    invoke-interface {p0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object p0

    invoke-interface {p0}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getArtWorkType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 1

    .line 200
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->a(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->b:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->a(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic b(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;)Z
    .locals 0

    .line 181
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->a(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;)Z

    move-result p0

    return p0
.end method

.method public static d(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 1

    .line 196
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->a(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;
    .locals 1

    .line 181
    const-class v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;
    .locals 1

    .line 181
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->g:[Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/lomo/BillboardView$BackgroundArtworkType;

    return-object v0
.end method
