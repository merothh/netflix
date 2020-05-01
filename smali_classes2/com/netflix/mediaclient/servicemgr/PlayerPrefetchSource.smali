.class public final enum Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum f:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum g:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum h:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum i:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum j:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum k:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum n:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum o:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field private static final synthetic p:[Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;


# instance fields
.field private final l:Z

.field private final m:I

.field private final q:Z

.field private final r:Z

.field private final s:Z

.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 28
    new-instance v9, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string v1, "ContinueWatching"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "Default"

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V

    sput-object v9, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->a:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string v11, "DetailsPage"

    const/4 v12, 0x1

    const/16 v13, 0xc8

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v18, "Default"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string v2, "DetailsPageFromSearch"

    const/4 v3, 0x2

    const/16 v4, 0xc8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "Default"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->b:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string v11, "DetailsPageLite"

    const/4 v12, 0x3

    const-string v18, "PlayerLite"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->e:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string v2, "PostPlay"

    const/4 v3, 0x4

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v9, "Default"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->d:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string v11, "Playlist"

    const/4 v12, 0x5

    const/16 v13, 0x44c

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-string v18, "Default"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->h:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string v2, "Branching"

    const/4 v3, 0x6

    const/16 v4, 0x44c

    const-string v9, "branching"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->j:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string v11, "MobileComingSoon"

    const/4 v12, 0x7

    const/16 v13, 0x12c

    const/16 v17, 0x1

    const-string v18, "ComingSoon"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->g:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string v2, "Previews"

    const/16 v3, 0x8

    const/16 v4, 0x12c

    const/4 v8, 0x1

    const-string v9, "previews"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->f:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string v11, "VideoCarousel"

    const/16 v12, 0x9

    const-string v18, "videoCarousel"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->i:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string v2, "BigRow"

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "billboard-bigRow"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->n:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string v11, "PrePlay"

    const/16 v12, 0xb

    const/16 v13, 0x7d0

    const/16 v17, 0x0

    const-string v18, "Default"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->o:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string v2, "BackgroundJob"

    const/16 v3, 0xc

    const/16 v4, 0x1388

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v9, "Default"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->k:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 25
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->a:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->b:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->e:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->d:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->h:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->j:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->g:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->f:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->i:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->n:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->o:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->k:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->p:[Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->m:I

    .line 51
    iput-boolean p4, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->l:Z

    .line 52
    iput-boolean p5, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->q:Z

    .line 53
    iput-boolean p6, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->s:Z

    .line 54
    iput-boolean p7, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->r:Z

    .line 55
    iput-object p8, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->t:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;
    .locals 1

    .line 25
    const-class v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;
    .locals 1

    .line 25
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->p:[Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->l:Z

    return v0
.end method

.method public a(Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Z
    .locals 1

    .line 71
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->e:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->s:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->m:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->r:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->t:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->q:Z

    return v0
.end method

.method public g()Z
    .locals 7

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->t:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "videoCarousel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "ComingSoon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "billboard-bigRow"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "previews"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    return v1

    :cond_2
    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bec6a55 -> :sswitch_3
        -0x3d39fcf8 -> :sswitch_2
        -0x1844e844 -> :sswitch_1
        -0xfbbd105 -> :sswitch_0
    .end sparse-switch
.end method

.method public h()Z
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->t:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "videoCarousel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "ComingSoon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "billboard-bigRow"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "previews"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_2

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    return v1

    :cond_2
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bec6a55 -> :sswitch_3
        -0x3d39fcf8 -> :sswitch_2
        -0x1844e844 -> :sswitch_1
        -0xfbbd105 -> :sswitch_0
    .end sparse-switch
.end method
