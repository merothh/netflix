.class final Lcom/crittercism/internal/eb$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/ec;


# instance fields
.field final synthetic a:Lcom/crittercism/internal/eb;


# direct methods
.method private constructor <init>(Lcom/crittercism/internal/eb;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/internal/eb$a;->a:Lcom/crittercism/internal/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crittercism/internal/eb;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crittercism/internal/eb$a;-><init>(Lcom/crittercism/internal/eb;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method
