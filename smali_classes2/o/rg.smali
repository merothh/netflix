.class Lo/rg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Ljava/lang/Long;

.field private final e:Lo/rb;


# direct methods
.method public constructor <init>(Lo/rb;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/rg;->e:Lo/rb;

    iput-object p2, p0, Lo/rg;->c:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/rg;->e:Lo/rb;

    iget-object v1, p0, Lo/rg;->c:Ljava/lang/Long;

    invoke-static {v0, v1}, Lo/rb;->e(Lo/rb;Ljava/lang/Long;)V

    return-void
.end method
