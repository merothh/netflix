.class Lo/Rl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lo/BE;

.field private final e:Lo/Cd;


# direct methods
.method public constructor <init>(Lo/BE;Lo/Cd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Rl;->d:Lo/BE;

    iput-object p2, p0, Lo/Rl;->e:Lo/Cd;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/Rl;->d:Lo/BE;

    iget-object v1, p0, Lo/Rl;->e:Lo/Cd;

    invoke-static {v0, v1}, Lo/Rj;->b(Lo/BE;Lo/Cd;)V

    return-void
.end method
