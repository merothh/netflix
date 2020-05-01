.class Lo/lj;
.super Ljava/lang/Object;

# interfaces
.implements Lo/UserHandle;


# instance fields
.field private final d:Lo/lf;


# direct methods
.method public constructor <init>(Lo/lf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lj;->d:Lo/lf;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/lj;->d:Lo/lf;

    check-cast p1, Lo/mo;

    invoke-static {v0, p1}, Lo/lf;->e(Lo/lf;Lo/mo;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
