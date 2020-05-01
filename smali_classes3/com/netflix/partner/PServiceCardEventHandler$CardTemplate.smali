.class final enum Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/partner/PServiceCardEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CardTemplate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

.field public static final enum b:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

.field public static final enum c:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

.field public static final enum d:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

.field public static final enum e:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

.field private static final synthetic g:[Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

.field public static final h:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate$Application;

.field public static final enum j:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    new-instance v1, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    const/4 v2, 0x0

    const-string v3, "HERO_SINGLE"

    const-string v4, "HeroSingle"

    .line 292
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->a:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    const/4 v2, 0x1

    const-string v3, "ONE_PLUS_TWO"

    const-string v4, "OnePlusTwo"

    .line 293
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->b:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    const/4 v2, 0x2

    const-string v3, "FULLBLEED_32"

    const-string v4, "FullBleed_32"

    .line 294
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->d:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    const/4 v2, 0x3

    const-string v3, "FULLBLEED_33"

    const-string v4, "FullBleed_33"

    .line 295
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->e:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    const/4 v2, 0x4

    const-string v3, "FULLBLEED_34"

    const-string v4, "FullBleed_34"

    .line 296
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->c:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    const/4 v2, 0x5

    const-string v3, "UNKNOWN"

    const-string v4, ""

    .line 297
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->j:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->g:[Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    new-instance v0, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate$Application;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->h:Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate$Application;

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

    .line 290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;
    .locals 1

    const-class v0, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    return-object p0
.end method

.method public static values()[Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;
    .locals 1

    sget-object v0, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->g:[Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    invoke-virtual {v0}, [Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;

    return-object v0
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/netflix/partner/PServiceCardEventHandler$CardTemplate;->f:Ljava/lang/String;

    return-object v0
.end method
