.class Lo/wI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lo/wG;

.field private final e:J


# direct methods
.method public constructor <init>(Lo/wG;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/wI;->c:Lo/wG;

    iput-wide p2, p0, Lo/wI;->e:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/wI;->c:Lo/wG;

    iget-wide v1, p0, Lo/wI;->e:J

    invoke-static {v0, v1, v2}, Lo/wG;->a(Lo/wG;J)V

    return-void
.end method
