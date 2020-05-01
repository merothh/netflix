.class Lo/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lo/bp;

.field private final e:Lo/aeb$StateListAnimator;


# direct methods
.method public constructor <init>(Lo/bp;Lo/aeb$StateListAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/bo;->c:Lo/bp;

    iput-object p2, p0, Lo/bo;->e:Lo/aeb$StateListAnimator;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/bo;->c:Lo/bp;

    iget-object v1, p0, Lo/bo;->e:Lo/aeb$StateListAnimator;

    invoke-static {v0, v1}, Lo/bp;->e(Lo/bp;Lo/aeb$StateListAnimator;)V

    return-void
.end method
