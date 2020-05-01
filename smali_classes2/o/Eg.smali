.class Lo/Eg;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Lo/DY;


# direct methods
.method public constructor <init>(Lo/DY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Eg;->a:Lo/DY;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/Eg;->a:Lo/DY;

    check-cast p1, Lo/ValidationProbeEvent;

    invoke-static {v0, p1}, Lo/DY;->b(Lo/DY;Lo/ValidationProbeEvent;)V

    return-void
.end method
