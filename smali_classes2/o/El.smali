.class Lo/El;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final b:Lo/Eo;


# direct methods
.method public constructor <init>(Lo/Eo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/El;->b:Lo/Eo;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/El;->b:Lo/Eo;

    check-cast p1, Lo/DG;

    invoke-static {v0, p1}, Lo/Eo;->d(Lo/Eo;Lo/DG;)V

    return-void
.end method
