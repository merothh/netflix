.class Lo/uo;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ul$TaskDescription;


# instance fields
.field private final a:Lo/sE;

.field private final d:J

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/sE;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/uo;->a:Lo/sE;

    iput-object p2, p0, Lo/uo;->e:Ljava/lang/String;

    iput-wide p3, p0, Lo/uo;->d:J

    return-void
.end method


# virtual methods
.method public b()Lo/rc;
    .locals 4

    iget-object v0, p0, Lo/uo;->a:Lo/sE;

    iget-object v1, p0, Lo/uo;->e:Ljava/lang/String;

    iget-wide v2, p0, Lo/uo;->d:J

    invoke-static {v0, v1, v2, v3}, Lo/ul;->d(Lo/sE;Ljava/lang/String;J)Lo/rc;

    move-result-object v0

    return-object v0
.end method
