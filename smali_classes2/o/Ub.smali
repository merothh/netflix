.class Lo/Ub;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final b:Lo/TX;


# direct methods
.method public constructor <init>(Lo/TX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ub;->b:Lo/TX;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/Ub;->b:Lo/TX;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lo/TX;->d(Lo/TX;Ljava/lang/Throwable;)V

    return-void
.end method
