.class Lo/qU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/qM;

.field private final e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lo/qM;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/qU;->a:Lo/qM;

    iput-object p2, p0, Lo/qU;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/qU;->a:Lo/qM;

    iget-object v1, p0, Lo/qU;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lo/qM;->e(Lo/qM;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
