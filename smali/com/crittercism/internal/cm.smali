.class public final Lcom/crittercism/internal/cm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field public static final enum e:I

.field private static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/crittercism/internal/cm;->a:I

    sput v4, Lcom/crittercism/internal/cm;->b:I

    sput v5, Lcom/crittercism/internal/cm;->c:I

    sput v6, Lcom/crittercism/internal/cm;->d:I

    sput v0, Lcom/crittercism/internal/cm;->e:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/crittercism/internal/cm;->a:I

    aput v2, v0, v1

    sget v1, Lcom/crittercism/internal/cm;->b:I

    aput v1, v0, v3

    sget v1, Lcom/crittercism/internal/cm;->c:I

    aput v1, v0, v4

    sget v1, Lcom/crittercism/internal/cm;->d:I

    aput v1, v0, v5

    sget v1, Lcom/crittercism/internal/cm;->e:I

    aput v1, v0, v6

    sput-object v0, Lcom/crittercism/internal/cm;->f:[I

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)I
    .locals 2

    sget v0, Lcom/crittercism/internal/cm;->d:I

    add-int/lit8 v0, v0, -0x1

    instance-of v1, p0, Lcom/crittercism/error/CRXMLHttpRequestException;

    if-eqz v1, :cond_0

    sget v0, Lcom/crittercism/internal/cm;->e:I

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method
