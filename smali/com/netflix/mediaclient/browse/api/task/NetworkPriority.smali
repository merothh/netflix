.class public final enum Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

.field private static final synthetic b:[Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

.field public static final enum c:Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

.field public static final enum d:Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

.field public static final enum e:Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    new-instance v1, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    const/4 v2, 0x0

    const-string v3, "LOW"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;->d:Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;->e:Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    const/4 v2, 0x2

    const-string v3, "HIGH"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;->a:Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    const/4 v2, 0x3

    const-string v3, "IMMEDIATE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;->c:Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;->b:[Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;->b:[Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/browse/api/task/NetworkPriority;

    return-object v0
.end method
