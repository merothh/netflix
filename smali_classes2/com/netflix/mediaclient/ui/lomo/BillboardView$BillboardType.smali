.class public final enum Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/lomo/BillboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BillboardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

.field public static final enum b:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

.field public static final enum c:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

.field public static final enum d:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

.field public static final enum e:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

.field private static final synthetic f:[Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;


# instance fields
.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 138
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    const/4 v1, 0x0

    const-string v2, "NSRE_SHOW"

    const-string v3, "nsreShow"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    .line 139
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    const/4 v2, 0x1

    const-string v3, "VERTICAL"

    const-string v4, "vertical"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    .line 140
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    const/4 v3, 0x2

    const-string v4, "AWARDS"

    const-string v5, "awards"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->b:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    .line 141
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    const/4 v4, 0x3

    const-string v5, "EPISODIC"

    const-string v6, "episodic"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->c:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    .line 142
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    const/4 v5, 0x4

    const-string v6, "GENRE"

    const-string v7, "genre"

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->d:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    .line 137
    sget-object v6, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->b:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->c:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->d:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->f:[Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

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

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 148
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 1

    .line 173
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->d:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->b(Lcom/netflix/model/leafs/originals/BillboardSummary;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static b(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 1

    .line 157
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->b(Lcom/netflix/model/leafs/originals/BillboardSummary;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Lcom/netflix/model/leafs/originals/BillboardSummary;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 177
    invoke-interface {p0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardType()Ljava/lang/String;

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

.method public static c(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 1

    .line 165
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->b:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->b(Lcom/netflix/model/leafs/originals/BillboardSummary;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static d(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 1

    .line 169
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->c:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->b(Lcom/netflix/model/leafs/originals/BillboardSummary;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;
    .locals 1

    .line 137
    const-class v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;
    .locals 1

    .line 137
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->f:[Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->h:Ljava/lang/String;

    return-object v0
.end method
