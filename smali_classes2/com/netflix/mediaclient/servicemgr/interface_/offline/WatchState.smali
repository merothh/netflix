.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field private static final synthetic i:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const/4 v2, 0x1

    const-string v3, "NOT_WATCHABLE_DUE_TO_NOT_ENOUGH_DATA"

    invoke-direct {v0, v3, v2, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const/4 v3, 0x2

    const-string v4, "WATCHING_ALLOWED"

    invoke-direct {v0, v4, v3, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const/4 v4, 0x3

    const-string v5, "LICENSE_EXPIRED"

    invoke-direct {v0, v5, v4, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const/4 v5, 0x4

    const/4 v6, 0x5

    const-string v7, "PLAY_WINDOW_EXPIRED_BUT_RENEWABLE"

    invoke-direct {v0, v7, v5, v6}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const/4 v7, 0x6

    const-string v8, "PLAY_WINDOW_EXPIRED_FINAL"

    invoke-direct {v0, v8, v6, v7}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const/4 v8, 0x7

    const-string v9, "VIEW_WINDOW_EXPIRED"

    invoke-direct {v0, v9, v7, v8}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const/16 v9, 0x8

    const-string v10, "GEO_BLOCKED"

    invoke-direct {v0, v10, v8, v9}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    new-array v0, v9, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 10
    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v9, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->i:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->j:I

    return-void
.end method

.method public static e(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
    .locals 5

    .line 32
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 33
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->a()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
    .locals 1

    .line 10
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
    .locals 1

    .line 10
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->i:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->j:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d()Z
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->a()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
