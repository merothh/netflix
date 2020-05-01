.class Lo/aiA;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aiv$Application;


# instance fields
.field private final a:Ljava/lang/Long;

.field private final c:Lo/aiB;

.field private final d:J


# direct methods
.method public constructor <init>(Lo/aiB;JLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aiA;->c:Lo/aiB;

    iput-wide p2, p0, Lo/aiA;->d:J

    iput-object p4, p0, Lo/aiA;->a:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public c(ILjava/util/List;)V
    .locals 6

    iget-object v0, p0, Lo/aiA;->c:Lo/aiB;

    iget-wide v1, p0, Lo/aiA;->d:J

    iget-object v3, p0, Lo/aiA;->a:Ljava/lang/Long;

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lo/aiB;->b(Lo/aiB;JLjava/lang/Long;ILjava/util/List;)V

    return-void
.end method
