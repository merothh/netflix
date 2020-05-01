.class Lo/Nu;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Lo/BC;

.field private final c:Lo/Np;


# direct methods
.method public constructor <init>(Lo/Np;Lo/BC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Nu;->c:Lo/Np;

    iput-object p2, p0, Lo/Nu;->a:Lo/BC;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/Nu;->c:Lo/Np;

    iget-object v1, p0, Lo/Nu;->a:Lo/BC;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lo/Np;->c(Lo/Np;Lo/BC;Ljava/lang/Throwable;)V

    return-void
.end method
