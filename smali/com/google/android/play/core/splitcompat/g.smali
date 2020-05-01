.class final Lcom/google/android/play/core/splitcompat/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitcompat/j;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/splitcompat/r;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Lcom/google/android/play/core/splitcompat/m;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitcompat/m;Lcom/google/android/play/core/splitcompat/r;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/g;->d:Lcom/google/android/play/core/splitcompat/m;

    iput-object p2, p0, Lcom/google/android/play/core/splitcompat/g;->a:Lcom/google/android/play/core/splitcompat/r;

    iput-object p3, p0, Lcom/google/android/play/core/splitcompat/g;->b:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/play/core/splitcompat/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipFile;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/Set<",
            "Lcom/google/android/play/core/splitcompat/l;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/play/core/splitcompat/g;->d:Lcom/google/android/play/core/splitcompat/m;

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/g;->a:Lcom/google/android/play/core/splitcompat/r;

    new-instance v1, Lcom/google/android/play/core/splitcompat/f;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/splitcompat/f;-><init>(Lcom/google/android/play/core/splitcompat/g;)V

    invoke-static {p1, v0, p2, v1}, Lcom/google/android/play/core/splitcompat/m;->a(Lcom/google/android/play/core/splitcompat/m;Lcom/google/android/play/core/splitcompat/r;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/k;)V

    return-void
.end method
