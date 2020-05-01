.class Lo/lm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Z

.field private final d:Lo/lf;


# direct methods
.method public constructor <init>(Lo/lf;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lm;->d:Lo/lf;

    iput-boolean p2, p0, Lo/lm;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/lm;->d:Lo/lf;

    iget-boolean v1, p0, Lo/lm;->c:Z

    invoke-static {v0, v1}, Lo/lf;->e(Lo/lf;Z)V

    return-void
.end method
