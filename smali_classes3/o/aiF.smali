.class Lo/aiF;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aiE$TaskDescription;


# instance fields
.field private final c:J

.field private final d:Lo/aiH;

.field private final e:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lo/aiH;JLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aiF;->d:Lo/aiH;

    iput-wide p2, p0, Lo/aiF;->c:J

    iput-object p4, p0, Lo/aiF;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public c(ILjava/util/List;)V
    .locals 6

    iget-object v0, p0, Lo/aiF;->d:Lo/aiH;

    iget-wide v1, p0, Lo/aiF;->c:J

    iget-object v3, p0, Lo/aiF;->e:Ljava/lang/Long;

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lo/aiH;->d(Lo/aiH;JLjava/lang/Long;ILjava/util/List;)V

    return-void
.end method
