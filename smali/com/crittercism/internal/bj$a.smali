.class public final enum Lcom/crittercism/internal/bj$a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/crittercism/internal/bj$a;

.field public static final enum b:Lcom/crittercism/internal/bj$a;

.field private static final synthetic d:[Lcom/crittercism/internal/bj$a;


# instance fields
.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/crittercism/internal/bj$a;

    const-string/jumbo v1, "FOREGROUND"

    const-string/jumbo v2, "foregrounded"

    invoke-direct {v0, v1, v3, v2}, Lcom/crittercism/internal/bj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/bj$a;->a:Lcom/crittercism/internal/bj$a;

    new-instance v0, Lcom/crittercism/internal/bj$a;

    const-string/jumbo v1, "BACKGROUND"

    const-string/jumbo v2, "backgrounded"

    invoke-direct {v0, v1, v4, v2}, Lcom/crittercism/internal/bj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/bj$a;->b:Lcom/crittercism/internal/bj$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/crittercism/internal/bj$a;

    sget-object v1, Lcom/crittercism/internal/bj$a;->a:Lcom/crittercism/internal/bj$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/crittercism/internal/bj$a;->b:Lcom/crittercism/internal/bj$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/crittercism/internal/bj$a;->d:[Lcom/crittercism/internal/bj$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/crittercism/internal/bj$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crittercism/internal/bj$a;
    .locals 1

    const-class v0, Lcom/crittercism/internal/bj$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/bj$a;

    return-object v0
.end method

.method public static values()[Lcom/crittercism/internal/bj$a;
    .locals 1

    sget-object v0, Lcom/crittercism/internal/bj$a;->d:[Lcom/crittercism/internal/bj$a;

    invoke-virtual {v0}, [Lcom/crittercism/internal/bj$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crittercism/internal/bj$a;

    return-object v0
.end method
