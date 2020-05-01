.class Lo/Ou;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lo/Os$5;


# direct methods
.method public constructor <init>(Lo/Os$5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ou;->e:Lo/Os$5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/Ou;->e:Lo/Os$5;

    invoke-static {v0}, Lo/Os$5;->e(Lo/Os$5;)V

    return-void
.end method
