.class final Lcom/crittercism/internal/cs$a;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/crittercism/internal/cs$a;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/crittercism/internal/cs$a;->a:Z

    iput v0, p0, Lcom/crittercism/internal/cs$a;->b:I

    iput-boolean v0, p0, Lcom/crittercism/internal/cs$a;->a:Z

    iput v0, p0, Lcom/crittercism/internal/cs$a;->b:I

    return-void
.end method
