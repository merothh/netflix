.class Lo/Jc;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final e:Lo/IL$Application;


# direct methods
.method public constructor <init>(Lo/IL$Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Jc;->e:Lo/IL$Application;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/Jc;->e:Lo/IL$Application;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lo/IL$Application;->e(Lo/IL$Application;Ljava/lang/Throwable;)V

    return-void
.end method
