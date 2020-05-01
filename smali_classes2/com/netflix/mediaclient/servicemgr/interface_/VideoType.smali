.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum SUPPLEMENTAL:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum UNAVAILABLE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# instance fields
.field private final key:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v1, 0x0

    const-string v2, "MOVIE"

    const-string v3, "movies"

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x1

    const-string v3, "SHOW"

    const-string v4, "shows"

    invoke-direct {v0, v3, v2, v4, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v3, 0x2

    const-string v4, "SEASON"

    const-string v5, "seasons"

    invoke-direct {v0, v4, v3, v5, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v4, 0x3

    const-string v5, "EPISODE"

    const-string v6, "episodes"

    invoke-direct {v0, v5, v4, v6, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v5, 0x4

    const-string v6, "CHARACTERS"

    const-string v7, "characters"

    invoke-direct {v0, v6, v5, v7, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v6, 0x5

    const-string v7, "SUPPLEMENTAL"

    const-string v8, "supplementals"

    invoke-direct {v0, v7, v6, v8, v6}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SUPPLEMENTAL:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v7, 0x6

    const-string v8, "UNAVAILABLE"

    const-string v9, "unavailable"

    invoke-direct {v0, v8, v7, v9, v7}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNAVAILABLE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v8, 0x7

    const-string v9, "UNKNOWN"

    const-string v10, ""

    invoke-direct {v0, v9, v8, v10, v8}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 7
    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v9, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SUPPLEMENTAL:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNAVAILABLE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->value:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->key:I

    return-void
.end method

.method public static create(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 5

    .line 37
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 38
    iget v4, v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->key:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object p0
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 5

    .line 28
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 29
    iget-object v4, v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object p0
.end method

.method public static isPresentationTrackingType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Z
    .locals 1

    .line 54
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SUPPLEMENTAL:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, p0, :cond_0

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 7
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 7
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->key:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->value:Ljava/lang/String;

    return-object v0
.end method
