.class public final Lcom/crittercism/internal/dw$a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 14
    sput v3, Lcom/crittercism/internal/dw$a;->a:I

    .line 15
    sput v4, Lcom/crittercism/internal/dw$a;->b:I

    .line 16
    sput v0, Lcom/crittercism/internal/dw$a;->c:I

    .line 13
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/crittercism/internal/dw$a;->a:I

    aput v2, v0, v1

    sget v1, Lcom/crittercism/internal/dw$a;->b:I

    aput v1, v0, v3

    sget v1, Lcom/crittercism/internal/dw$a;->c:I

    aput v1, v0, v4

    sput-object v0, Lcom/crittercism/internal/dw$a;->d:[I

    return-void
.end method
