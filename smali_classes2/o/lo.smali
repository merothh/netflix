.class Lo/lo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lo/lf;

.field private final d:Lo/mm;


# direct methods
.method public constructor <init>(Lo/lf;Lo/mm;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lo;->c:Lo/lf;

    iput-object p2, p0, Lo/lo;->d:Lo/mm;

    iput-object p3, p0, Lo/lo;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lo/lo;->c:Lo/lf;

    iget-object v1, p0, Lo/lo;->d:Lo/mm;

    iget-object v2, p0, Lo/lo;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lo/lf;->d(Lo/lf;Lo/mm;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
