.class public final enum Lcom/netflix/mediaclient/servicemgr/PlayLocationType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/PlayLocationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum f:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum g:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum h:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum j:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum k:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum l:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum m:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum n:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum o:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum p:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field public static final enum r:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field private static final synthetic s:[Lcom/netflix/mediaclient/servicemgr/PlayLocationType;


# instance fields
.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v1, 0x0

    const-string v2, "STORY_ART"

    const-string v3, "storyArt"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->c:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v2, 0x1

    const-string v3, "EPISODE"

    const-string v4, "episode"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->a:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v3, 0x2

    const-string v4, "DIRECT_PLAY"

    const-string v5, "directPlay"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->b:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v4, 0x3

    const-string v5, "POST_PLAY"

    const-string v6, "postPlay"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v5, 0x4

    const-string v6, "MDX"

    const-string v7, "mdx"

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->d:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v6, 0x5

    const-string v7, "CHARACTER_DP"

    const-string v8, "cdp"

    invoke-direct {v0, v7, v6, v8}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->g:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v7, 0x6

    const-string v8, "DOWNLOADS"

    const-string v9, "downloads"

    invoke-direct {v0, v8, v7, v9}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v8, 0x7

    const-string v9, "EXTRAS"

    const-string v10, "extras"

    invoke-direct {v0, v9, v8, v10}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->f:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/16 v9, 0x8

    const-string v10, "LOLOMO_ROW"

    const-string v11, "lolomoRow"

    invoke-direct {v0, v10, v9, v11}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->j:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/16 v10, 0x9

    const-string v11, "VIDEO_VIEW"

    const-string v12, "videoView"

    invoke-direct {v0, v11, v10, v12}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->h:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/16 v11, 0xa

    const-string v12, "SEARCH"

    const-string v13, "searchResults"

    invoke-direct {v0, v12, v11, v13}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->l:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/16 v12, 0xb

    const-string v13, "SEARCH_SUGGESTION_RESULTS"

    const-string v14, "searchSuggestionResults"

    invoke-direct {v0, v13, v12, v14}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->k:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/16 v13, 0xc

    const-string v14, "IKO_RESTART_STATE_BUTTON"

    const-string v15, "interactiveRestart_state"

    invoke-direct {v0, v14, v13, v15}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->n:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/16 v14, 0xd

    const-string v15, "QUICK_DRAW_DP"

    const-string v13, "quickDrawDP"

    invoke-direct {v0, v15, v14, v13}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->o:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/16 v13, 0xe

    const-string v15, "DEEPLINK"

    const-string v14, "deeplink"

    invoke-direct {v0, v15, v13, v14}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->m:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const-string v14, "DP_LANGUAGES_DIALOG"

    const/16 v15, 0xf

    const-string v13, "dp_languages_dialog"

    invoke-direct {v0, v14, v15, v13}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->r:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const-string v13, "UNKNOWN"

    const/16 v14, 0x10

    const-string v15, ""

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->p:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 6
    sget-object v13, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->c:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->a:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->b:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->d:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->g:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->f:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->j:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->h:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->l:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->k:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->n:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->o:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->m:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->r:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->p:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->s:[Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->t:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayLocationType;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/PlayLocationType;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->s:[Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    return-object v0
.end method
