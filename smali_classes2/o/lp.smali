.class Lo/lp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lo/lf;

.field private final e:Lo/mm;


# direct methods
.method public constructor <init>(Lo/lf;Lo/mm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lp;->b:Lo/lf;

    iput-object p2, p0, Lo/lp;->e:Lo/mm;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/lp;->b:Lo/lf;

    iget-object v1, p0, Lo/lp;->e:Lo/mm;

    invoke-static {v0, v1}, Lo/lf;->c(Lo/lf;Lo/mm;)V

    return-void
.end method
