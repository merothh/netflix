.class Lo/xn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lo/xf;


# direct methods
.method public constructor <init>(Lo/xf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/xn;->c:Lo/xf;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/xn;->c:Lo/xf;

    invoke-static {v0}, Lo/xf;->f(Lo/xf;)V

    return-void
.end method
