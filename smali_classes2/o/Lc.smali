.class Lo/Lc;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final b:Lo/Ld;


# direct methods
.method public constructor <init>(Lo/Ld;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Lc;->b:Lo/Ld;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/Lc;->b:Lo/Ld;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lo/Ld;->b(Lo/Ld;Ljava/lang/Integer;)V

    return-void
.end method
