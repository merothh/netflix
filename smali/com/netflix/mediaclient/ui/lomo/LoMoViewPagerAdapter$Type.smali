.class public final enum Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;
.super Ljava/lang/Enum;
.source "LoMoViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field public static final enum BILLBOARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field public static final enum CHARACTER:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field public static final enum CW:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field public static final enum DISCOVERY:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field public static final enum ERROR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field public static final enum IQ:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field public static final enum KUBRICK_HERO:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field public static final enum KUBRICK_HERO_DUPLICATE:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field public static final enum KUBRICK_KIDS_POPULAR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field public static final enum KUBRICK_KIDS_TOP_TEN:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field public static final enum LOADING:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

.field public static final enum STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->LOADING:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->ERROR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    .line 64
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    const-string/jumbo v1, "STANDARD"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    const-string/jumbo v1, "IQ"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->IQ:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    const-string/jumbo v1, "CW"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->CW:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    const-string/jumbo v1, "BILLBOARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->BILLBOARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    const-string/jumbo v1, "DISCOVERY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->DISCOVERY:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    .line 65
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    const-string/jumbo v1, "CHARACTER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->CHARACTER:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    .line 66
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    const-string/jumbo v1, "KUBRICK_HERO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_HERO:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    const-string/jumbo v1, "KUBRICK_HERO_DUPLICATE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_HERO_DUPLICATE:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    const-string/jumbo v1, "KUBRICK_KIDS_TOP_TEN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_KIDS_TOP_TEN:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    const-string/jumbo v1, "KUBRICK_KIDS_POPULAR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_KIDS_POPULAR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    .line 62
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->LOADING:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->ERROR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->IQ:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->CW:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->BILLBOARD:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->DISCOVERY:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->CHARACTER:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_HERO:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_HERO_DUPLICATE:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_KIDS_TOP_TEN:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->KUBRICK_KIDS_POPULAR:Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->$VALUES:[Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->$VALUES:[Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/lomo/LoMoViewPagerAdapter$Type;

    return-object v0
.end method
