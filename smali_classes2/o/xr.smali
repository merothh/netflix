.class Lo/xr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/xf$3;


# direct methods
.method public constructor <init>(Lo/xf$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/xr;->a:Lo/xf$3;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/xr;->a:Lo/xf$3;

    invoke-static {v0}, Lo/xf$3;->b(Lo/xf$3;)V

    return-void
.end method
