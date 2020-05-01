.class Lo/Jz;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final c:Lo/Jw;


# direct methods
.method public constructor <init>(Lo/Jw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Jz;->c:Lo/Jw;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/Jz;->c:Lo/Jw;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lo/Jw;->c(Lo/Jw;Ljava/lang/Boolean;)V

    return-void
.end method
