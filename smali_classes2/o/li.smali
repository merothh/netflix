.class Lo/li;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lo/aiY;

.field private final d:Z

.field private final e:Lo/lf;


# direct methods
.method public constructor <init>(Lo/lf;ZLo/aiY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/li;->e:Lo/lf;

    iput-boolean p2, p0, Lo/li;->d:Z

    iput-object p3, p0, Lo/li;->c:Lo/aiY;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/li;->e:Lo/lf;

    iget-boolean v1, p0, Lo/li;->d:Z

    iget-object v2, p0, Lo/li;->c:Lo/aiY;

    invoke-static {v0, v1, v2}, Lo/lf;->a(Lo/lf;ZLo/aiY;)V

    return-void
.end method
