.class final Lcom/google/android/play/core/internal/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/ap;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/internal/bd;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/bd;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/android/play/core/internal/ba;->a(Ljava/lang/ClassLoader;Ljava/util/Set;Lcom/google/android/play/core/internal/az;)V

    return-void
.end method

.method static b(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 7

    invoke-static {}, Lcom/google/android/play/core/internal/ba;->a()Lcom/google/android/play/core/internal/au;

    move-result-object v4

    new-instance v6, Lcom/google/android/play/core/internal/be;

    invoke-direct {v6}, Lcom/google/android/play/core/internal/be;-><init>()V

    const-string v5, "path"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/play/core/internal/av;->a(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;ZLcom/google/android/play/core/internal/au;Ljava/lang/String;Lcom/google/android/play/core/internal/at;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/play/core/internal/bf;->b(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    return-void
.end method

.method public final a(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/play/core/internal/bf;->b(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z

    move-result p1

    return p1
.end method
