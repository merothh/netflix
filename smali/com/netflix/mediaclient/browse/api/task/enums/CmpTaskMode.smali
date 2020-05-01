.class public final enum Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

.field public static final enum b:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

.field public static final enum c:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

.field private static final synthetic e:[Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    const/4 v1, 0x0

    const-string v2, "FROM_CACHE_ONLY"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->c:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    const/4 v2, 0x1

    const-string v3, "FROM_CACHE_OR_NETWORK"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    const/4 v3, 0x2

    const-string v4, "FROM_NETWORK"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    .line 7
    sget-object v4, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->c:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->e:[Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;
    .locals 1

    .line 7
    const-class v0, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;
    .locals 1

    .line 7
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->e:[Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    return-object v0
.end method
