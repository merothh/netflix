.class Lo/lv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lo/lf$2;

.field private final e:Lo/mm;


# direct methods
.method public constructor <init>(Lo/lf$2;Lo/mm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lv;->c:Lo/lf$2;

    iput-object p2, p0, Lo/lv;->e:Lo/mm;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/lv;->c:Lo/lf$2;

    iget-object v1, p0, Lo/lv;->e:Lo/mm;

    invoke-static {v0, v1}, Lo/lf$2;->e(Lo/lf$2;Lo/mm;)V

    return-void
.end method
