.class public final enum Lcom/netflix/cl/model/GestureInputKind;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/model/GestureInputKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/model/GestureInputKind;

.field public static final enum doubleTap:Lcom/netflix/cl/model/GestureInputKind;

.field public static final enum pan:Lcom/netflix/cl/model/GestureInputKind;

.field public static final enum pinch:Lcom/netflix/cl/model/GestureInputKind;

.field public static final enum stretch:Lcom/netflix/cl/model/GestureInputKind;

.field public static final enum swipe:Lcom/netflix/cl/model/GestureInputKind;

.field public static final enum tap:Lcom/netflix/cl/model/GestureInputKind;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 7
    new-instance v0, Lcom/netflix/cl/model/GestureInputKind;

    const/4 v1, 0x0

    const-string v2, "doubleTap"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/GestureInputKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/GestureInputKind;->doubleTap:Lcom/netflix/cl/model/GestureInputKind;

    .line 8
    new-instance v0, Lcom/netflix/cl/model/GestureInputKind;

    const/4 v2, 0x1

    const-string v3, "pan"

    invoke-direct {v0, v3, v2}, Lcom/netflix/cl/model/GestureInputKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/GestureInputKind;->pan:Lcom/netflix/cl/model/GestureInputKind;

    .line 9
    new-instance v0, Lcom/netflix/cl/model/GestureInputKind;

    const/4 v3, 0x2

    const-string v4, "pinch"

    invoke-direct {v0, v4, v3}, Lcom/netflix/cl/model/GestureInputKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/GestureInputKind;->pinch:Lcom/netflix/cl/model/GestureInputKind;

    .line 10
    new-instance v0, Lcom/netflix/cl/model/GestureInputKind;

    const/4 v4, 0x3

    const-string v5, "stretch"

    invoke-direct {v0, v5, v4}, Lcom/netflix/cl/model/GestureInputKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/GestureInputKind;->stretch:Lcom/netflix/cl/model/GestureInputKind;

    .line 11
    new-instance v0, Lcom/netflix/cl/model/GestureInputKind;

    const/4 v5, 0x4

    const-string v6, "swipe"

    invoke-direct {v0, v6, v5}, Lcom/netflix/cl/model/GestureInputKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/GestureInputKind;->swipe:Lcom/netflix/cl/model/GestureInputKind;

    .line 12
    new-instance v0, Lcom/netflix/cl/model/GestureInputKind;

    const/4 v6, 0x5

    const-string v7, "tap"

    invoke-direct {v0, v7, v6}, Lcom/netflix/cl/model/GestureInputKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/GestureInputKind;->tap:Lcom/netflix/cl/model/GestureInputKind;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/cl/model/GestureInputKind;

    .line 6
    sget-object v7, Lcom/netflix/cl/model/GestureInputKind;->doubleTap:Lcom/netflix/cl/model/GestureInputKind;

    aput-object v7, v0, v1

    sget-object v1, Lcom/netflix/cl/model/GestureInputKind;->pan:Lcom/netflix/cl/model/GestureInputKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/cl/model/GestureInputKind;->pinch:Lcom/netflix/cl/model/GestureInputKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/cl/model/GestureInputKind;->stretch:Lcom/netflix/cl/model/GestureInputKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/cl/model/GestureInputKind;->swipe:Lcom/netflix/cl/model/GestureInputKind;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/cl/model/GestureInputKind;->tap:Lcom/netflix/cl/model/GestureInputKind;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/cl/model/GestureInputKind;->$VALUES:[Lcom/netflix/cl/model/GestureInputKind;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/GestureInputKind;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/cl/model/GestureInputKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/model/GestureInputKind;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/model/GestureInputKind;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/cl/model/GestureInputKind;->$VALUES:[Lcom/netflix/cl/model/GestureInputKind;

    invoke-virtual {v0}, [Lcom/netflix/cl/model/GestureInputKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/model/GestureInputKind;

    return-object v0
.end method
