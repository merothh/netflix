.class Lo/TR;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Lo/TC;

.field private final d:Lo/Ti;


# direct methods
.method public constructor <init>(Lo/TC;Lo/Ti;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TR;->a:Lo/TC;

    iput-object p2, p0, Lo/TR;->d:Lo/Ti;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/TR;->a:Lo/TC;

    iget-object v1, p0, Lo/TR;->d:Lo/Ti;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lo/TC;->b(Lo/TC;Lo/Ti;Ljava/lang/Throwable;)V

    return-void
.end method