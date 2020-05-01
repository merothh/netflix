.class public final enum Lcom/bugsnag/android/DeliveryStyle;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bugsnag/android/DeliveryStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bugsnag/android/DeliveryStyle;

.field public static final enum b:Lcom/bugsnag/android/DeliveryStyle;

.field private static final synthetic c:[Lcom/bugsnag/android/DeliveryStyle;

.field public static final enum d:Lcom/bugsnag/android/DeliveryStyle;

.field public static final enum e:Lcom/bugsnag/android/DeliveryStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/bugsnag/android/DeliveryStyle;

    const/4 v1, 0x0

    const-string v2, "SAME_THREAD"

    invoke-direct {v0, v2, v1}, Lcom/bugsnag/android/DeliveryStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/DeliveryStyle;->b:Lcom/bugsnag/android/DeliveryStyle;

    .line 5
    new-instance v0, Lcom/bugsnag/android/DeliveryStyle;

    const/4 v2, 0x1

    const-string v3, "ASYNC"

    invoke-direct {v0, v3, v2}, Lcom/bugsnag/android/DeliveryStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/DeliveryStyle;->e:Lcom/bugsnag/android/DeliveryStyle;

    .line 6
    new-instance v0, Lcom/bugsnag/android/DeliveryStyle;

    const/4 v3, 0x2

    const-string v4, "ASYNC_WITH_CACHE"

    invoke-direct {v0, v4, v3}, Lcom/bugsnag/android/DeliveryStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/DeliveryStyle;->d:Lcom/bugsnag/android/DeliveryStyle;

    .line 7
    new-instance v0, Lcom/bugsnag/android/DeliveryStyle;

    const/4 v4, 0x3

    const-string v5, "NO_CACHE"

    invoke-direct {v0, v5, v4}, Lcom/bugsnag/android/DeliveryStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/DeliveryStyle;->a:Lcom/bugsnag/android/DeliveryStyle;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bugsnag/android/DeliveryStyle;

    .line 3
    sget-object v5, Lcom/bugsnag/android/DeliveryStyle;->b:Lcom/bugsnag/android/DeliveryStyle;

    aput-object v5, v0, v1

    sget-object v1, Lcom/bugsnag/android/DeliveryStyle;->e:Lcom/bugsnag/android/DeliveryStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bugsnag/android/DeliveryStyle;->d:Lcom/bugsnag/android/DeliveryStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bugsnag/android/DeliveryStyle;->a:Lcom/bugsnag/android/DeliveryStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bugsnag/android/DeliveryStyle;->c:[Lcom/bugsnag/android/DeliveryStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bugsnag/android/DeliveryStyle;
    .locals 1

    .line 3
    const-class v0, Lcom/bugsnag/android/DeliveryStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bugsnag/android/DeliveryStyle;

    return-object p0
.end method

.method public static values()[Lcom/bugsnag/android/DeliveryStyle;
    .locals 1

    .line 3
    sget-object v0, Lcom/bugsnag/android/DeliveryStyle;->c:[Lcom/bugsnag/android/DeliveryStyle;

    invoke-virtual {v0}, [Lcom/bugsnag/android/DeliveryStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bugsnag/android/DeliveryStyle;

    return-object v0
.end method
