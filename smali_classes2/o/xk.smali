.class Lo/xk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:J

.field private final e:Lo/xf;


# direct methods
.method public constructor <init>(Lo/xf;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/xk;->e:Lo/xf;

    iput-wide p2, p0, Lo/xk;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/xk;->e:Lo/xf;

    iget-wide v1, p0, Lo/xk;->b:J

    invoke-static {v0, v1, v2}, Lo/xf;->c(Lo/xf;J)V

    return-void
.end method
