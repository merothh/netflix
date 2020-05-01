.class public abstract Lo/QA;
.super Lo/RZ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/TimeUnit;",
        ">",
        "Lo/RZ<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field public i:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lo/RZ;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/CharSequence;
    .locals 2

    .line 8
    iget-object v0, p0, Lo/QA;->i:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v1, "title"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final C()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lo/QA;->b:J

    return-wide v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/QA;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lo/QA;->a:Ljava/lang/String;

    return-void
.end method

.method public final h(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lo/QA;->b:J

    return-void
.end method
