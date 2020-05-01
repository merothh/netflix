.class Lo/aW;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lo/aW;->a:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/aW;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/aW;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lo/aW;->d:Z

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lo/aW;->a:J

    return-void
.end method

.method public c()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lo/aW;->b:Z

    return v0
.end method

.method public d()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lo/aW;->a:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lo/aW;->e:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lo/aW;->h:Ljava/lang/String;

    .line 57
    iput-boolean p2, p0, Lo/aW;->b:Z

    .line 58
    iput-object p3, p0, Lo/aW;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lo/aW;->d:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/aW;->e:Ljava/lang/String;

    return-object v0
.end method
