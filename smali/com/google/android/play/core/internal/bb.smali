.class final Lcom/google/android/play/core/internal/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/ap;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/ClassLoader;Ljava/util/Set;)V
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

    invoke-static {}, Lcom/google/android/play/core/internal/ba;->b()Lcom/google/android/play/core/internal/az;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/play/core/internal/ba;->a(Ljava/lang/ClassLoader;Ljava/util/Set;Lcom/google/android/play/core/internal/az;)V

    return-void
.end method

.method public final a(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 1

    const-string v0, "zip"

    invoke-static {p1, p2, p3, p4, v0}, Lcom/google/android/play/core/internal/ba;->a(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method
