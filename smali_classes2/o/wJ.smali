.class Lo/wJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:J

.field private final e:Lo/wG;


# direct methods
.method public constructor <init>(Lo/wG;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/wJ;->e:Lo/wG;

    iput-wide p2, p0, Lo/wJ;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/wJ;->e:Lo/wG;

    iget-wide v1, p0, Lo/wJ;->b:J

    invoke-static {v0, v1, v2}, Lo/wG;->d(Lo/wG;J)V

    return-void
.end method
