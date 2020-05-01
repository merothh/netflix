.class Lo/acO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Z

.field private final e:Lo/acP;


# direct methods
.method public constructor <init>(Lo/acP;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/acO;->e:Lo/acP;

    iput-boolean p2, p0, Lo/acO;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/acO;->e:Lo/acP;

    iget-boolean v1, p0, Lo/acO;->a:Z

    invoke-static {v0, v1}, Lo/acP;->c(Lo/acP;Z)V

    return-void
.end method
