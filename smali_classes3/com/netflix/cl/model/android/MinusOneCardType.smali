.class public final enum Lcom/netflix/cl/model/android/MinusOneCardType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/model/android/MinusOneCardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/model/android/MinusOneCardType;

.field public static final enum full32:Lcom/netflix/cl/model/android/MinusOneCardType;

.field public static final enum full33:Lcom/netflix/cl/model/android/MinusOneCardType;

.field public static final enum full34:Lcom/netflix/cl/model/android/MinusOneCardType;

.field public static final enum onePlus:Lcom/netflix/cl/model/android/MinusOneCardType;

.field public static final enum single32:Lcom/netflix/cl/model/android/MinusOneCardType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/netflix/cl/model/android/MinusOneCardType;

    const/4 v1, 0x0

    const-string v2, "full32"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/android/MinusOneCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/android/MinusOneCardType;->full32:Lcom/netflix/cl/model/android/MinusOneCardType;

    .line 8
    new-instance v0, Lcom/netflix/cl/model/android/MinusOneCardType;

    const/4 v2, 0x1

    const-string v3, "full33"

    invoke-direct {v0, v3, v2}, Lcom/netflix/cl/model/android/MinusOneCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/android/MinusOneCardType;->full33:Lcom/netflix/cl/model/android/MinusOneCardType;

    .line 9
    new-instance v0, Lcom/netflix/cl/model/android/MinusOneCardType;

    const/4 v3, 0x2

    const-string v4, "full34"

    invoke-direct {v0, v4, v3}, Lcom/netflix/cl/model/android/MinusOneCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/android/MinusOneCardType;->full34:Lcom/netflix/cl/model/android/MinusOneCardType;

    .line 10
    new-instance v0, Lcom/netflix/cl/model/android/MinusOneCardType;

    const/4 v4, 0x3

    const-string v5, "onePlus"

    invoke-direct {v0, v5, v4}, Lcom/netflix/cl/model/android/MinusOneCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/android/MinusOneCardType;->onePlus:Lcom/netflix/cl/model/android/MinusOneCardType;

    .line 11
    new-instance v0, Lcom/netflix/cl/model/android/MinusOneCardType;

    const/4 v5, 0x4

    const-string v6, "single32"

    invoke-direct {v0, v6, v5}, Lcom/netflix/cl/model/android/MinusOneCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/android/MinusOneCardType;->single32:Lcom/netflix/cl/model/android/MinusOneCardType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/cl/model/android/MinusOneCardType;

    .line 6
    sget-object v6, Lcom/netflix/cl/model/android/MinusOneCardType;->full32:Lcom/netflix/cl/model/android/MinusOneCardType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netflix/cl/model/android/MinusOneCardType;->full33:Lcom/netflix/cl/model/android/MinusOneCardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/cl/model/android/MinusOneCardType;->full34:Lcom/netflix/cl/model/android/MinusOneCardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/cl/model/android/MinusOneCardType;->onePlus:Lcom/netflix/cl/model/android/MinusOneCardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/cl/model/android/MinusOneCardType;->single32:Lcom/netflix/cl/model/android/MinusOneCardType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/cl/model/android/MinusOneCardType;->$VALUES:[Lcom/netflix/cl/model/android/MinusOneCardType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/android/MinusOneCardType;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/cl/model/android/MinusOneCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/model/android/MinusOneCardType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/model/android/MinusOneCardType;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/cl/model/android/MinusOneCardType;->$VALUES:[Lcom/netflix/cl/model/android/MinusOneCardType;

    invoke-virtual {v0}, [Lcom/netflix/cl/model/android/MinusOneCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/model/android/MinusOneCardType;

    return-object v0
.end method
