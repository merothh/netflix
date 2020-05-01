.class Lo/wH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:J

.field private final d:Lo/xa;

.field private final e:Lo/wG;


# direct methods
.method public constructor <init>(Lo/wG;JLo/xa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/wH;->e:Lo/wG;

    iput-wide p2, p0, Lo/wH;->a:J

    iput-object p4, p0, Lo/wH;->d:Lo/xa;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lo/wH;->e:Lo/wG;

    iget-wide v1, p0, Lo/wH;->a:J

    iget-object v3, p0, Lo/wH;->d:Lo/xa;

    invoke-static {v0, v1, v2, v3}, Lo/wG;->b(Lo/wG;JLo/xa;)V

    return-void
.end method
