.class public final enum Lcom/netflix/mediaclient/browse/api/task/TaskMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field public static final enum b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field public static final enum d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field private static final synthetic e:[Lcom/netflix/mediaclient/browse/api/task/TaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    const/4 v1, 0x0

    const-string v2, "FROM_CACHE_ONLY"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/browse/api/task/TaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    const/4 v2, 0x1

    const-string v3, "FROM_CACHE_OR_NETWORK"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/browse/api/task/TaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    const/4 v3, 0x2

    const-string v4, "FROM_NETWORK"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/browse/api/task/TaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 7
    sget-object v4, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->e:[Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/browse/api/task/TaskMode;
    .locals 1

    .line 7
    const-class v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/browse/api/task/TaskMode;
    .locals 1

    .line 7
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->e:[Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/browse/api/task/TaskMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    return-object v0
.end method
