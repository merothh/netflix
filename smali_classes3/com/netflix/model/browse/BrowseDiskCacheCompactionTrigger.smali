.class public final enum Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

.field public static final enum b:Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

.field private static final synthetic c:[Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

.field public static final enum d:Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

.field public static final enum e:Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;


# instance fields
.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    new-instance v1, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    const-string v2, "PERIODIC_24_HOUR"

    const/4 v3, 0x0

    .line 15
    invoke-direct {v1, v2, v3, v2}, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;->d:Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    const-string v2, "LOLOMO"

    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v2}, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;->e:Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    const-string v2, "DEBUG"

    const/4 v3, 0x2

    .line 17
    invoke-direct {v1, v2, v3, v2}, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;->a:Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    const-string v2, "INSOMNIA"

    const/4 v3, 0x3

    .line 18
    invoke-direct {v1, v2, v3, v2}, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;->b:Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;->c:[Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;
    .locals 1

    const-class v0, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    return-object p0
.end method

.method public static values()[Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;
    .locals 1

    sget-object v0, Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;->c:[Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    invoke-virtual {v0}, [Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;

    return-object v0
.end method
