.class public final enum Lcom/crittercism/internal/k$a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/crittercism/internal/k$a;

.field public static final enum b:Lcom/crittercism/internal/k$a;

.field private static final synthetic e:[Lcom/crittercism/internal/k$a;


# instance fields
.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/crittercism/internal/k$a;

    const-string/jumbo v1, "HTTP"

    const-string/jumbo v2, "http"

    const/16 v3, 0x50

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/crittercism/internal/k$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/crittercism/internal/k$a;->a:Lcom/crittercism/internal/k$a;

    new-instance v0, Lcom/crittercism/internal/k$a;

    const-string/jumbo v1, "HTTPS"

    const-string/jumbo v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/crittercism/internal/k$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/crittercism/internal/k$a;->b:Lcom/crittercism/internal/k$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/crittercism/internal/k$a;

    sget-object v1, Lcom/crittercism/internal/k$a;->a:Lcom/crittercism/internal/k$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crittercism/internal/k$a;->b:Lcom/crittercism/internal/k$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/crittercism/internal/k$a;->e:[Lcom/crittercism/internal/k$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/crittercism/internal/k$a;->c:Ljava/lang/String;

    iput p4, p0, Lcom/crittercism/internal/k$a;->d:I

    return-void
.end method

.method static synthetic a(Lcom/crittercism/internal/k$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/k$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/crittercism/internal/k$a;)I
    .locals 1

    iget v0, p0, Lcom/crittercism/internal/k$a;->d:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crittercism/internal/k$a;
    .locals 1

    const-class v0, Lcom/crittercism/internal/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/k$a;

    return-object v0
.end method

.method public static values()[Lcom/crittercism/internal/k$a;
    .locals 1

    sget-object v0, Lcom/crittercism/internal/k$a;->e:[Lcom/crittercism/internal/k$a;

    invoke-virtual {v0}, [Lcom/crittercism/internal/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crittercism/internal/k$a;

    return-object v0
.end method
