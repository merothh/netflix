.class public final enum Lcom/netflix/msl/msg/MslControl$ApplicationError;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MslControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/msl/msg/MslControl$ApplicationError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/msl/msg/MslControl$ApplicationError;

.field public static final enum c:Lcom/netflix/msl/msg/MslControl$ApplicationError;

.field private static final synthetic d:[Lcom/netflix/msl/msg/MslControl$ApplicationError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 195
    new-instance v0, Lcom/netflix/msl/msg/MslControl$ApplicationError;

    const/4 v1, 0x0

    const-string v2, "ENTITY_REJECTED"

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/msg/MslControl$ApplicationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/msg/MslControl$ApplicationError;->c:Lcom/netflix/msl/msg/MslControl$ApplicationError;

    .line 197
    new-instance v0, Lcom/netflix/msl/msg/MslControl$ApplicationError;

    const/4 v2, 0x1

    const-string v3, "USER_REJECTED"

    invoke-direct {v0, v3, v2}, Lcom/netflix/msl/msg/MslControl$ApplicationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/msg/MslControl$ApplicationError;->a:Lcom/netflix/msl/msg/MslControl$ApplicationError;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/msg/MslControl$ApplicationError;

    .line 193
    sget-object v3, Lcom/netflix/msl/msg/MslControl$ApplicationError;->c:Lcom/netflix/msl/msg/MslControl$ApplicationError;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/msl/msg/MslControl$ApplicationError;->a:Lcom/netflix/msl/msg/MslControl$ApplicationError;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/msl/msg/MslControl$ApplicationError;->d:[Lcom/netflix/msl/msg/MslControl$ApplicationError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/msg/MslControl$ApplicationError;
    .locals 1

    .line 193
    const-class v0, Lcom/netflix/msl/msg/MslControl$ApplicationError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/msl/msg/MslControl$ApplicationError;

    return-object p0
.end method

.method public static values()[Lcom/netflix/msl/msg/MslControl$ApplicationError;
    .locals 1

    .line 193
    sget-object v0, Lcom/netflix/msl/msg/MslControl$ApplicationError;->d:[Lcom/netflix/msl/msg/MslControl$ApplicationError;

    invoke-virtual {v0}, [Lcom/netflix/msl/msg/MslControl$ApplicationError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/msg/MslControl$ApplicationError;

    return-object v0
.end method
