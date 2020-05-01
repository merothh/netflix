.class Lo/TP;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TP;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/TP;->d:Ljava/lang/ref/WeakReference;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lo/TC;->b(Ljava/lang/ref/WeakReference;Ljava/lang/Throwable;)V

    return-void
.end method
