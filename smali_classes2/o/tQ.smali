.class Lo/tQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lo/tT$Activity;

.field private final d:Lo/ug;


# direct methods
.method public constructor <init>(Lo/tT$Activity;Lo/ug;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/tQ;->b:Lo/tT$Activity;

    iput-object p2, p0, Lo/tQ;->d:Lo/ug;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/tQ;->b:Lo/tT$Activity;

    iget-object v1, p0, Lo/tQ;->d:Lo/ug;

    invoke-static {v0, v1}, Lo/tT;->e(Lo/tT$Activity;Lo/ug;)V

    return-void
.end method
