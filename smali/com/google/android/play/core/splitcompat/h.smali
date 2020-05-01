.class final Lcom/google/android/play/core/splitcompat/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitcompat/j;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/google/android/play/core/splitcompat/r;

.field final synthetic c:Lcom/google/android/play/core/splitcompat/m;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitcompat/m;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/h;->c:Lcom/google/android/play/core/splitcompat/m;

    iput-object p2, p0, Lcom/google/android/play/core/splitcompat/h;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/play/core/splitcompat/h;->b:Lcom/google/android/play/core/splitcompat/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipFile;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/Set<",
            "Lcom/google/android/play/core/splitcompat/l;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/h;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/play/core/splitcompat/h;->c:Lcom/google/android/play/core/splitcompat/m;

    iget-object v2, p0, Lcom/google/android/play/core/splitcompat/h;->b:Lcom/google/android/play/core/splitcompat/r;

    invoke-static {v1, p2, v2, p1}, Lcom/google/android/play/core/splitcompat/m;->a(Lcom/google/android/play/core/splitcompat/m;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/r;Ljava/util/zip/ZipFile;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
