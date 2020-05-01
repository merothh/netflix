.class public final enum Lcom/netflix/cl/model/StorageLocationKind;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/model/StorageLocationKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/model/StorageLocationKind;

.field public static final enum external:Lcom/netflix/cl/model/StorageLocationKind;

.field public static final enum internal:Lcom/netflix/cl/model/StorageLocationKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/netflix/cl/model/StorageLocationKind;

    const/4 v1, 0x0

    const-string v2, "external"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/StorageLocationKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/StorageLocationKind;->external:Lcom/netflix/cl/model/StorageLocationKind;

    .line 8
    new-instance v0, Lcom/netflix/cl/model/StorageLocationKind;

    const/4 v2, 0x1

    const-string v3, "internal"

    invoke-direct {v0, v3, v2}, Lcom/netflix/cl/model/StorageLocationKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/StorageLocationKind;->internal:Lcom/netflix/cl/model/StorageLocationKind;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/cl/model/StorageLocationKind;

    .line 6
    sget-object v3, Lcom/netflix/cl/model/StorageLocationKind;->external:Lcom/netflix/cl/model/StorageLocationKind;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/cl/model/StorageLocationKind;->internal:Lcom/netflix/cl/model/StorageLocationKind;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/cl/model/StorageLocationKind;->$VALUES:[Lcom/netflix/cl/model/StorageLocationKind;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/StorageLocationKind;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/cl/model/StorageLocationKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/model/StorageLocationKind;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/model/StorageLocationKind;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/cl/model/StorageLocationKind;->$VALUES:[Lcom/netflix/cl/model/StorageLocationKind;

    invoke-virtual {v0}, [Lcom/netflix/cl/model/StorageLocationKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/model/StorageLocationKind;

    return-object v0
.end method
