.class Lo/Mc;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final e:Lo/Ti;


# direct methods
.method public constructor <init>(Lo/Ti;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Mc;->e:Lo/Ti;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/Mc;->e:Lo/Ti;

    check-cast p1, Lo/Tk;

    invoke-static {v0, p1}, Lo/Mb;->c(Lo/Ti;Lo/Tk;)V

    return-void
.end method