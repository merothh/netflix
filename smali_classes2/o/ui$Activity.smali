.class final Lo/ui$Activity;
.super Lo/tA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation


# instance fields
.field private final d:Lo/tL;


# direct methods
.method public constructor <init>(Lo/tL;)V
    .locals 0

    .line 509
    invoke-direct {p0}, Lo/tA;-><init>()V

    .line 510
    iput-object p1, p0, Lo/ui$Activity;->d:Lo/tL;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;I)Lo/tM;
    .locals 0

    .line 515
    iget-object p2, p0, Lo/ui$Activity;->d:Lo/tL;

    invoke-virtual {p2, p1}, Lo/tL;->d(Ljava/lang/String;)[Lo/tM;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 520
    iget-object v0, p0, Lo/ui$Activity;->d:Lo/tL;

    invoke-virtual {v0}, Lo/tL;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lo/ui$Activity;->d:Lo/tL;

    invoke-virtual {v0}, Lo/tL;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/tL;->d(Ljava/lang/String;)[Lo/tM;

    move-result-object v0

    .line 522
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 523
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lo/tM;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
