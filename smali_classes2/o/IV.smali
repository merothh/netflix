.class Lo/IV;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final e:Lo/IL;


# direct methods
.method public constructor <init>(Lo/IL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/IV;->e:Lo/IL;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/IV;->e:Lo/IL;

    check-cast p1, Lo/FC;

    invoke-static {v0, p1}, Lo/IL;->c(Lo/IL;Lo/FC;)V

    return-void
.end method
