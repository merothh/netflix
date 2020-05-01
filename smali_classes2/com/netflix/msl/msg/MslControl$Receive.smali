.class final enum Lcom/netflix/msl/msg/MslControl$Receive;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MslControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Receive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/msl/msg/MslControl$Receive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/msl/msg/MslControl$Receive;

.field public static final enum b:Lcom/netflix/msl/msg/MslControl$Receive;

.field public static final enum c:Lcom/netflix/msl/msg/MslControl$Receive;

.field public static final enum d:Lcom/netflix/msl/msg/MslControl$Receive;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1829
    new-instance v0, Lcom/netflix/msl/msg/MslControl$Receive;

    const/4 v1, 0x0

    const-string v2, "ALWAYS"

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/msg/MslControl$Receive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/msg/MslControl$Receive;->b:Lcom/netflix/msl/msg/MslControl$Receive;

    .line 1831
    new-instance v0, Lcom/netflix/msl/msg/MslControl$Receive;

    const/4 v2, 0x1

    const-string v3, "RENEWING"

    invoke-direct {v0, v3, v2}, Lcom/netflix/msl/msg/MslControl$Receive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/msg/MslControl$Receive;->c:Lcom/netflix/msl/msg/MslControl$Receive;

    .line 1833
    new-instance v0, Lcom/netflix/msl/msg/MslControl$Receive;

    const/4 v3, 0x2

    const-string v4, "NEVER"

    invoke-direct {v0, v4, v3}, Lcom/netflix/msl/msg/MslControl$Receive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/msg/MslControl$Receive;->d:Lcom/netflix/msl/msg/MslControl$Receive;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/msl/msg/MslControl$Receive;

    .line 1827
    sget-object v4, Lcom/netflix/msl/msg/MslControl$Receive;->b:Lcom/netflix/msl/msg/MslControl$Receive;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/msl/msg/MslControl$Receive;->c:Lcom/netflix/msl/msg/MslControl$Receive;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/msg/MslControl$Receive;->d:Lcom/netflix/msl/msg/MslControl$Receive;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/msg/MslControl$Receive;->a:[Lcom/netflix/msl/msg/MslControl$Receive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1827
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/msg/MslControl$Receive;
    .locals 1

    .line 1827
    const-class v0, Lcom/netflix/msl/msg/MslControl$Receive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/msl/msg/MslControl$Receive;

    return-object p0
.end method

.method public static values()[Lcom/netflix/msl/msg/MslControl$Receive;
    .locals 1

    .line 1827
    sget-object v0, Lcom/netflix/msl/msg/MslControl$Receive;->a:[Lcom/netflix/msl/msg/MslControl$Receive;

    invoke-virtual {v0}, [Lcom/netflix/msl/msg/MslControl$Receive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/msg/MslControl$Receive;

    return-object v0
.end method
