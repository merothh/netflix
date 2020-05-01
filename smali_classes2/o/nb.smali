.class Lo/nb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:[B

.field private final c:Lo/nc;

.field private final d:Lo/zQ$StateListAnimator;


# direct methods
.method public constructor <init>(Lo/nc;[BLo/zQ$StateListAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/nb;->c:Lo/nc;

    iput-object p2, p0, Lo/nb;->a:[B

    iput-object p3, p0, Lo/nb;->d:Lo/zQ$StateListAnimator;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/nb;->c:Lo/nc;

    iget-object v1, p0, Lo/nb;->a:[B

    iget-object v2, p0, Lo/nb;->d:Lo/zQ$StateListAnimator;

    invoke-static {v0, v1, v2}, Lo/nc;->d(Lo/nc;[BLo/zQ$StateListAnimator;)V

    return-void
.end method
