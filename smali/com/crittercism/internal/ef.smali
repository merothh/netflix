.class public final Lcom/crittercism/internal/ef;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/crittercism/internal/ax;

.field public b:Lcom/crittercism/internal/e;

.field public c:Lcom/crittercism/internal/d;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/e;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crittercism/internal/ef;->a:Lcom/crittercism/internal/ax;

    iput-object p2, p0, Lcom/crittercism/internal/ef;->b:Lcom/crittercism/internal/e;

    new-instance v0, Lcom/crittercism/internal/d;

    invoke-direct {v0, p3}, Lcom/crittercism/internal/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/crittercism/internal/ef;->c:Lcom/crittercism/internal/d;

    invoke-static {p3}, Lcom/crittercism/internal/ef;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ef;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string/jumbo v0, "www/error.js"

    invoke-static {p0, v0}, Lcom/crittercism/internal/dz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method
