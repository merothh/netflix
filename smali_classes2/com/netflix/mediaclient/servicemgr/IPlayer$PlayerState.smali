.class public final enum Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

.field public static final enum g:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

.field public static final enum h:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

.field private static final synthetic i:[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

.field public static final enum j:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    const/4 v1, 0x0

    const-string v2, "Idle"

    invoke-direct {v0, v2, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    const/4 v2, 0x1

    const-string v3, "Prepared"

    invoke-direct {v0, v3, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->a:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    const/4 v3, 0x2

    const-string v4, "Started"

    invoke-direct {v0, v4, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    const/4 v4, 0x3

    const-string v5, "Paused"

    invoke-direct {v0, v5, v4, v5}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    const/4 v5, 0x4

    const-string v6, "Error"

    invoke-direct {v0, v6, v5, v6}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    const/4 v6, 0x5

    const-string v7, "Stalled"

    invoke-direct {v0, v7, v6, v7}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->j:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    const/4 v7, 0x6

    const-string v8, "Completed"

    invoke-direct {v0, v8, v7, v8}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->h:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    const-string v8, "Seeking"

    const/4 v9, 0x7

    invoke-direct {v0, v8, v9, v8}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->g:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    .line 37
    sget-object v8, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    aput-object v8, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->a:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->j:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->h:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->g:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->i:[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

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

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;
    .locals 1

    .line 37
    const-class v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;
    .locals 1

    .line 37
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->i:[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 63
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->g:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    .line 71
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->g:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->j:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    .line 72
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->a:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
