.class Lo/TQ;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final d:Lo/TC;


# direct methods
.method public constructor <init>(Lo/TC;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TQ;->d:Lo/TC;

    iput-object p2, p0, Lo/TQ;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/TQ;->d:Lo/TC;

    iget-object v1, p0, Lo/TQ;->a:Ljava/lang/ref/WeakReference;

    check-cast p1, Lo/UP;

    invoke-static {v0, v1, p1}, Lo/TC;->c(Lo/TC;Ljava/lang/ref/WeakReference;Lo/UP;)V

    return-void
.end method
