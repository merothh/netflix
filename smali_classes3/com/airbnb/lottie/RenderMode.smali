.class public final enum Lcom/airbnb/lottie/RenderMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/airbnb/lottie/RenderMode;

.field private static final synthetic c:[Lcom/airbnb/lottie/RenderMode;

.field public static final enum d:Lcom/airbnb/lottie/RenderMode;

.field public static final enum e:Lcom/airbnb/lottie/RenderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/airbnb/lottie/RenderMode;

    const/4 v1, 0x0

    const-string v2, "AUTOMATIC"

    invoke-direct {v0, v2, v1}, Lcom/airbnb/lottie/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/RenderMode;->e:Lcom/airbnb/lottie/RenderMode;

    .line 11
    new-instance v0, Lcom/airbnb/lottie/RenderMode;

    const/4 v2, 0x1

    const-string v3, "HARDWARE"

    invoke-direct {v0, v3, v2}, Lcom/airbnb/lottie/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/RenderMode;->d:Lcom/airbnb/lottie/RenderMode;

    .line 12
    new-instance v0, Lcom/airbnb/lottie/RenderMode;

    const/4 v3, 0x2

    const-string v4, "SOFTWARE"

    invoke-direct {v0, v4, v3}, Lcom/airbnb/lottie/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/RenderMode;->a:Lcom/airbnb/lottie/RenderMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/lottie/RenderMode;

    .line 9
    sget-object v4, Lcom/airbnb/lottie/RenderMode;->e:Lcom/airbnb/lottie/RenderMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/airbnb/lottie/RenderMode;->d:Lcom/airbnb/lottie/RenderMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/lottie/RenderMode;->a:Lcom/airbnb/lottie/RenderMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/lottie/RenderMode;->c:[Lcom/airbnb/lottie/RenderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/RenderMode;
    .locals 1

    .line 9
    const-class v0, Lcom/airbnb/lottie/RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/RenderMode;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/RenderMode;
    .locals 1

    .line 9
    sget-object v0, Lcom/airbnb/lottie/RenderMode;->c:[Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/RenderMode;

    return-object v0
.end method
