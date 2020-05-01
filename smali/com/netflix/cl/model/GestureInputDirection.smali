.class public final enum Lcom/netflix/cl/model/GestureInputDirection;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/model/GestureInputDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/model/GestureInputDirection;

.field public static final enum backward:Lcom/netflix/cl/model/GestureInputDirection;

.field public static final enum down:Lcom/netflix/cl/model/GestureInputDirection;

.field public static final enum forward:Lcom/netflix/cl/model/GestureInputDirection;

.field public static final enum left:Lcom/netflix/cl/model/GestureInputDirection;

.field public static final enum right:Lcom/netflix/cl/model/GestureInputDirection;

.field public static final enum up:Lcom/netflix/cl/model/GestureInputDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 7
    new-instance v0, Lcom/netflix/cl/model/GestureInputDirection;

    const/4 v1, 0x0

    const-string v2, "backward"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/GestureInputDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/GestureInputDirection;->backward:Lcom/netflix/cl/model/GestureInputDirection;

    .line 8
    new-instance v0, Lcom/netflix/cl/model/GestureInputDirection;

    const/4 v2, 0x1

    const-string v3, "down"

    invoke-direct {v0, v3, v2}, Lcom/netflix/cl/model/GestureInputDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/GestureInputDirection;->down:Lcom/netflix/cl/model/GestureInputDirection;

    .line 9
    new-instance v0, Lcom/netflix/cl/model/GestureInputDirection;

    const/4 v3, 0x2

    const-string v4, "forward"

    invoke-direct {v0, v4, v3}, Lcom/netflix/cl/model/GestureInputDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/GestureInputDirection;->forward:Lcom/netflix/cl/model/GestureInputDirection;

    .line 10
    new-instance v0, Lcom/netflix/cl/model/GestureInputDirection;

    const/4 v4, 0x3

    const-string v5, "left"

    invoke-direct {v0, v5, v4}, Lcom/netflix/cl/model/GestureInputDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/GestureInputDirection;->left:Lcom/netflix/cl/model/GestureInputDirection;

    .line 11
    new-instance v0, Lcom/netflix/cl/model/GestureInputDirection;

    const/4 v5, 0x4

    const-string v6, "right"

    invoke-direct {v0, v6, v5}, Lcom/netflix/cl/model/GestureInputDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/GestureInputDirection;->right:Lcom/netflix/cl/model/GestureInputDirection;

    .line 12
    new-instance v0, Lcom/netflix/cl/model/GestureInputDirection;

    const/4 v6, 0x5

    const-string v7, "up"

    invoke-direct {v0, v7, v6}, Lcom/netflix/cl/model/GestureInputDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/GestureInputDirection;->up:Lcom/netflix/cl/model/GestureInputDirection;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/cl/model/GestureInputDirection;

    .line 6
    sget-object v7, Lcom/netflix/cl/model/GestureInputDirection;->backward:Lcom/netflix/cl/model/GestureInputDirection;

    aput-object v7, v0, v1

    sget-object v1, Lcom/netflix/cl/model/GestureInputDirection;->down:Lcom/netflix/cl/model/GestureInputDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/cl/model/GestureInputDirection;->forward:Lcom/netflix/cl/model/GestureInputDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/cl/model/GestureInputDirection;->left:Lcom/netflix/cl/model/GestureInputDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/cl/model/GestureInputDirection;->right:Lcom/netflix/cl/model/GestureInputDirection;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/cl/model/GestureInputDirection;->up:Lcom/netflix/cl/model/GestureInputDirection;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/cl/model/GestureInputDirection;->$VALUES:[Lcom/netflix/cl/model/GestureInputDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/GestureInputDirection;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/cl/model/GestureInputDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/model/GestureInputDirection;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/model/GestureInputDirection;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/cl/model/GestureInputDirection;->$VALUES:[Lcom/netflix/cl/model/GestureInputDirection;

    invoke-virtual {v0}, [Lcom/netflix/cl/model/GestureInputDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/model/GestureInputDirection;

    return-object v0
.end method
