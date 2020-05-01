.class Lo/pc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lo/pa;


# direct methods
.method public constructor <init>(Lo/pa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/pc;->d:Lo/pa;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/pc;->d:Lo/pa;

    invoke-static {v0}, Lo/pa;->b(Lo/pa;)V

    return-void
.end method
