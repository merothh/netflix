.class Lo/Ij;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/Ik;

.field private final c:Lo/Ik$Application;


# direct methods
.method public constructor <init>(Lo/Ik;Lo/Ik$Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ij;->a:Lo/Ik;

    iput-object p2, p0, Lo/Ij;->c:Lo/Ik$Application;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/Ij;->a:Lo/Ik;

    iget-object v1, p0, Lo/Ij;->c:Lo/Ik$Application;

    invoke-static {v0, v1}, Lo/Ik;->a(Lo/Ik;Lo/Ik$Application;)V

    return-void
.end method
