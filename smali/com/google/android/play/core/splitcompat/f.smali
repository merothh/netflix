.class final Lcom/google/android/play/core/splitcompat/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitcompat/k;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/splitcompat/g;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitcompat/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/f;->a:Lcom/google/android/play/core/splitcompat/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/splitcompat/l;Ljava/io/File;Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/play/core/splitcompat/f;->a:Lcom/google/android/play/core/splitcompat/g;

    iget-object p1, p1, Lcom/google/android/play/core/splitcompat/g;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/google/android/play/core/splitcompat/f;->a:Lcom/google/android/play/core/splitcompat/g;

    iget-object p1, p1, Lcom/google/android/play/core/splitcompat/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
