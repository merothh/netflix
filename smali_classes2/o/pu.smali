.class Lo/pu;
.super Ljava/lang/Object;

# interfaces
.implements Lo/pq$Activity;


# instance fields
.field private final a:Lo/pv;


# direct methods
.method public constructor <init>(Lo/pv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/pu;->a:Lo/pv;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lo/pu;->a:Lo/pv;

    invoke-static {v0}, Lo/pv;->i(Lo/pv;)V

    return-void
.end method
