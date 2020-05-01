.class Lo/tk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lo/th;


# direct methods
.method public constructor <init>(Lo/th;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/tk;->c:Lo/th;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/tk;->c:Lo/th;

    invoke-static {v0}, Lo/th;->b(Lo/th;)V

    return-void
.end method
