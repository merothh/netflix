.class Lo/mx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/mw;


# direct methods
.method public constructor <init>(Lo/mw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/mx;->a:Lo/mw;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/mx;->a:Lo/mw;

    invoke-static {v0}, Lo/mw;->a(Lo/mw;)V

    return-void
.end method
