.class Lo/QY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lo/QQ;


# direct methods
.method public constructor <init>(Lo/QQ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/QY;->b:Lo/QQ;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/QY;->b:Lo/QQ;

    invoke-static {v0}, Lo/QQ;->f(Lo/QQ;)V

    return-void
.end method
