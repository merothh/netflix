.class public final Lcom/crittercism/internal/ao;
.super Lcom/crittercism/internal/aa;


# static fields
.field public static final d:Lcom/crittercism/internal/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/crittercism/internal/ao;

    invoke-direct {v0}, Lcom/crittercism/internal/ao;-><init>()V

    sput-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/crittercism/internal/aa;-><init>(Lcom/crittercism/internal/ah;)V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    iget v0, p0, Lcom/crittercism/internal/ao;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/crittercism/internal/ao;->c:I

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/crittercism/internal/ab;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b([BII)I
    .locals 1

    iget v0, p0, Lcom/crittercism/internal/ao;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/crittercism/internal/ao;->c:I

    const/4 v0, -0x1

    return v0
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 0

    return-object p0
.end method

.method public final c()Lcom/crittercism/internal/aa;
    .locals 0

    return-object p0
.end method

.method protected final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
