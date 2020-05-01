.class public final enum Lcom/google/android/play/core/splitinstall/w;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/play/core/splitinstall/w;",
        ">;",
        "Lcom/google/android/play/core/splitinstall/c;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/play/core/splitinstall/w;

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/play/core/splitinstall/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/play/core/splitinstall/w;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/splitinstall/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/w;->a:Lcom/google/android/play/core/splitinstall/w;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/play/core/splitinstall/w;

    sget-object v1, Lcom/google/android/play/core/splitinstall/w;->a:Lcom/google/android/play/core/splitinstall/w;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/w;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/splitinstall/d;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/splitinstall/w;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/d;

    return-object v0
.end method

.method public final a(Lcom/google/android/play/core/splitinstall/d;)V
    .locals 2

    sget-object v0, Lcom/google/android/play/core/splitinstall/w;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
