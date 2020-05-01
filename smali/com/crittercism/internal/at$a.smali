.class public final Lcom/crittercism/internal/at$a;
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

    sput v3, Lcom/crittercism/internal/at$a;->a:I

    sput v4, Lcom/crittercism/internal/at$a;->b:I

    sput v5, Lcom/crittercism/internal/at$a;->c:I

    sput v6, Lcom/crittercism/internal/at$a;->d:I

    sput v0, Lcom/crittercism/internal/at$a;->e:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/crittercism/internal/at$a;->a:I

    aput v2, v0, v1

    sget v1, Lcom/crittercism/internal/at$a;->b:I

    aput v1, v0, v3

    sget v1, Lcom/crittercism/internal/at$a;->c:I

    aput v1, v0, v4

    sget v1, Lcom/crittercism/internal/at$a;->d:I

    aput v1, v0, v5

    sget v1, Lcom/crittercism/internal/at$a;->e:I

    aput v1, v0, v6

    sput-object v0, Lcom/crittercism/internal/at$a;->f:[I

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    sget v0, Lcom/crittercism/internal/at$a;->a:I

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    sget v0, Lcom/crittercism/internal/at$a;->b:I

    goto :goto_0

    :cond_1
    instance-of v0, p0, Landroid/app/Service;

    if-eqz v0, :cond_2

    sget v0, Lcom/crittercism/internal/at$a;->c:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
