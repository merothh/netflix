.class final enum Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;
.super Ljava/lang/Enum;
.source "BillboardView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

.field public static final enum NSRE_EPISODIC:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

.field public static final enum NSRE_SHOW:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    const-string/jumbo v1, "NSRE_SHOW"

    const-string/jumbo v2, "nsreShow"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->NSRE_SHOW:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    const-string/jumbo v1, "NSRE_EPISODIC"

    const-string/jumbo v2, "nsreEpisodic"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->NSRE_EPISODIC:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->NSRE_SHOW:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->NSRE_EPISODIC:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->$VALUES:[Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

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

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->$VALUES:[Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->name:Ljava/lang/String;

    return-object v0
.end method
