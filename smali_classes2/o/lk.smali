.class Lo/lk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lo/aiY;

.field private final c:Lo/lf;

.field private final e:Z


# direct methods
.method public constructor <init>(Lo/lf;ZLo/aiY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lk;->c:Lo/lf;

    iput-boolean p2, p0, Lo/lk;->e:Z

    iput-object p3, p0, Lo/lk;->b:Lo/aiY;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/lk;->c:Lo/lf;

    iget-boolean v1, p0, Lo/lk;->e:Z

    iget-object v2, p0, Lo/lk;->b:Lo/aiY;

    invoke-static {v0, v1, v2}, Lo/lf;->b(Lo/lf;ZLo/aiY;)V

    return-void
.end method
