.class public final enum Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

.field public static final enum b:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

.field public static final enum c:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

.field public static final enum d:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

.field public static final enum e:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

.field private static final synthetic i:[Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->e:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    const/4 v2, 0x1

    const-string v3, "RAISED"

    invoke-direct {v0, v3, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->c:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    const/4 v3, 0x2

    const-string v4, "DEPRESSED"

    invoke-direct {v0, v4, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->b:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    const/4 v4, 0x3

    const-string v5, "UNIFORM"

    invoke-direct {v0, v5, v4, v5}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->d:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    const/4 v5, 0x4

    const-string v6, "DROP_SHADOW"

    invoke-direct {v0, v6, v5, v6}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->a:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    .line 14
    sget-object v6, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->e:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->c:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->b:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->d:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->a:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->i:[Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;
    .locals 1

    .line 14
    const-class v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;
    .locals 1

    .line 14
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->i:[Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->f:Ljava/lang/String;

    return-object v0
.end method
