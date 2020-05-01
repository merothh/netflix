.class public final enum Lcom/netflix/cl/model/ThumbRating;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/model/ThumbRating;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/model/ThumbRating;

.field public static final enum DOWN:Lcom/netflix/cl/model/ThumbRating;

.field public static final enum UNRATED:Lcom/netflix/cl/model/ThumbRating;

.field public static final enum UP:Lcom/netflix/cl/model/ThumbRating;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/netflix/cl/model/ThumbRating;

    const/4 v1, 0x0

    const-string v2, "UNRATED"

    invoke-direct {v0, v2, v1, v1}, Lcom/netflix/cl/model/ThumbRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/cl/model/ThumbRating;->UNRATED:Lcom/netflix/cl/model/ThumbRating;

    .line 9
    new-instance v0, Lcom/netflix/cl/model/ThumbRating;

    const/4 v2, 0x1

    const-string v3, "DOWN"

    invoke-direct {v0, v3, v2, v2}, Lcom/netflix/cl/model/ThumbRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/cl/model/ThumbRating;->DOWN:Lcom/netflix/cl/model/ThumbRating;

    .line 10
    new-instance v0, Lcom/netflix/cl/model/ThumbRating;

    const/4 v3, 0x2

    const-string v4, "UP"

    invoke-direct {v0, v4, v3, v3}, Lcom/netflix/cl/model/ThumbRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/cl/model/ThumbRating;->UP:Lcom/netflix/cl/model/ThumbRating;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/cl/model/ThumbRating;

    .line 7
    sget-object v4, Lcom/netflix/cl/model/ThumbRating;->UNRATED:Lcom/netflix/cl/model/ThumbRating;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/cl/model/ThumbRating;->DOWN:Lcom/netflix/cl/model/ThumbRating;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/cl/model/ThumbRating;->UP:Lcom/netflix/cl/model/ThumbRating;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/cl/model/ThumbRating;->$VALUES:[Lcom/netflix/cl/model/ThumbRating;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/netflix/cl/model/ThumbRating;->val:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/ThumbRating;
    .locals 1

    .line 7
    const-class v0, Lcom/netflix/cl/model/ThumbRating;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/model/ThumbRating;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/model/ThumbRating;
    .locals 1

    .line 7
    sget-object v0, Lcom/netflix/cl/model/ThumbRating;->$VALUES:[Lcom/netflix/cl/model/ThumbRating;

    invoke-virtual {v0}, [Lcom/netflix/cl/model/ThumbRating;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/model/ThumbRating;

    return-object v0
.end method


# virtual methods
.method public getVal()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/netflix/cl/model/ThumbRating;->val:I

    return v0
.end method
