.class Lo/lu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lo/lf$3;

.field private final d:Lo/mm;


# direct methods
.method public constructor <init>(Lo/lf$3;Lo/mm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lu;->b:Lo/lf$3;

    iput-object p2, p0, Lo/lu;->d:Lo/mm;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/lu;->b:Lo/lf$3;

    iget-object v1, p0, Lo/lu;->d:Lo/mm;

    invoke-static {v0, v1}, Lo/lf$3;->d(Lo/lf$3;Lo/mm;)V

    return-void
.end method
