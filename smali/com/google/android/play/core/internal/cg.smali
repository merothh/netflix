.class public final Lcom/google/android/play/core/internal/cg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/ci;
.implements Lcom/google/android/play/core/internal/ce;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/ci;",
        "Lcom/google/android/play/core/internal/ce;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private volatile b:Lcom/google/android/play/core/internal/ci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ci<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/play/core/internal/cg;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/play/core/internal/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/ci<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/play/core/internal/cg;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/play/core/internal/cg;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/internal/cg;->b:Lcom/google/android/play/core/internal/ci;

    return-void
.end method

.method public static a(Lcom/google/android/play/core/internal/ci;)Lcom/google/android/play/core/internal/ci;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/google/android/play/core/internal/ci<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lcom/google/android/play/core/internal/ci<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/Object;)V

    instance-of v0, p0, Lcom/google/android/play/core/internal/cg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/play/core/internal/cg;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/internal/cg;-><init>(Lcom/google/android/play/core/internal/ci;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static b(Lcom/google/android/play/core/internal/ci;)Lcom/google/android/play/core/internal/ce;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/google/android/play/core/internal/ci<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lcom/google/android/play/core/internal/ce<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/play/core/internal/ce;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/play/core/internal/ce;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/internal/cg;

    invoke-static {p0}, Lcom/google/android/play/core/internal/bl;->a(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/google/android/play/core/internal/cg;-><init>(Lcom/google/android/play/core/internal/ci;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/internal/cg;->c:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/play/core/internal/cg;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/cg;->c:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/play/core/internal/cg;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/play/core/internal/cg;->b:Lcom/google/android/play/core/internal/ci;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/ci;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/internal/cg;->c:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/play/core/internal/cg;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/google/android/play/core/internal/ch;

    if-nez v2, :cond_2

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x76

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " & "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/google/android/play/core/internal/cg;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/play/core/internal/cg;->b:Lcom/google/android/play/core/internal/ci;

    :cond_3
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_1
    return-object v0
.end method
