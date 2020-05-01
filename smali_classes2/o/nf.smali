.class Lo/nf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/zQ$Activity;


# direct methods
.method public constructor <init>(Lo/zQ$Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/nf;->a:Lo/zQ$Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/nf;->a:Lo/zQ$Activity;

    invoke-static {v0}, Lo/nc;->b(Lo/zQ$Activity;)V

    return-void
.end method
