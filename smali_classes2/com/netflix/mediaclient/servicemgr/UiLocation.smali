.class public final enum Lcom/netflix/mediaclient/servicemgr/UiLocation;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/UiLocation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum f:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum g:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum h:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum i:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum j:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field private static final synthetic m:[Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum n:Lcom/netflix/mediaclient/servicemgr/UiLocation;


# instance fields
.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const/4 v1, 0x0

    const-string v2, "HOME_LOLOMO"

    const-string v3, "browseHome"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->c:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const/4 v2, 0x1

    const-string v3, "GENRE_LOLOMO"

    const-string v4, "browseGenre"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->d:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const/4 v3, 0x2

    const-string v4, "MDP"

    const-string v5, "mdp"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->e:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const/4 v4, 0x3

    const-string v5, "MDP_SIMILARS"

    const-string v6, "mdpSimilars"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->a:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const/4 v5, 0x4

    const-string v6, "SDP"

    const-string v7, "sdp"

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->b:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const/4 v6, 0x5

    const-string v7, "SDP_SIMILARS"

    const-string v8, "sdpSimilars"

    invoke-direct {v0, v7, v6, v8}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->h:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const/4 v7, 0x6

    const-string v8, "SEARCH"

    const-string v9, "search"

    invoke-direct {v0, v8, v7, v9}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->f:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const/4 v8, 0x7

    const-string v9, "PEOPLE"

    const-string v10, "people"

    invoke-direct {v0, v9, v8, v10}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->j:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const/16 v9, 0x8

    const-string v10, "BROWSE"

    const-string v11, "Browse"

    invoke-direct {v0, v10, v9, v11}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->i:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const/16 v10, 0x9

    const-string v11, "DOWNLOADS"

    const-string v12, "Downloads"

    invoke-direct {v0, v11, v10, v12}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->g:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const/16 v11, 0xa

    const-string v12, "UNKNOWN"

    const-string v13, ""

    invoke-direct {v0, v12, v11, v13}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->n:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 6
    sget-object v12, Lcom/netflix/mediaclient/servicemgr/UiLocation;->c:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v12, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->d:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->e:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->a:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->b:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->h:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->f:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->j:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->i:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->g:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->n:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v11

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->m:[Lcom/netflix/mediaclient/servicemgr/UiLocation;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->k:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UiLocation;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/UiLocation;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->m:[Lcom/netflix/mediaclient/servicemgr/UiLocation;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/UiLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/UiLocation;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->k:Ljava/lang/String;

    return-object v0
.end method
