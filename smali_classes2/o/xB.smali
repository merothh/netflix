.class Lo/xB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lo/xy;


# direct methods
.method public constructor <init>(Lo/xy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/xB;->c:Lo/xy;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/xB;->c:Lo/xy;

    invoke-static {v0}, Lo/xy;->f(Lo/xy;)V

    return-void
.end method
