.class Lo/ln;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lo/lf;


# direct methods
.method public constructor <init>(Lo/lf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ln;->d:Lo/lf;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/ln;->d:Lo/lf;

    invoke-static {v0}, Lo/lf;->f(Lo/lf;)V

    return-void
.end method
