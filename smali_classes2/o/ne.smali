.class Lo/ne;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lo/zQ$Activity;

.field private final e:Z


# direct methods
.method public constructor <init>(Lo/zQ$Activity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ne;->d:Lo/zQ$Activity;

    iput-boolean p2, p0, Lo/ne;->e:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/ne;->d:Lo/zQ$Activity;

    iget-boolean v1, p0, Lo/ne;->e:Z

    invoke-static {v0, v1}, Lo/nc;->e(Lo/zQ$Activity;Z)V

    return-void
.end method
