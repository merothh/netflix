.class Lo/pk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/os/ConditionVariable;

.field private final b:Landroid/os/Handler;

.field private final c:J

.field private final d:Lo/pl;

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lo/pl;Landroid/content/Context;Landroid/os/Handler;JLandroid/os/ConditionVariable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/pk;->d:Lo/pl;

    iput-object p2, p0, Lo/pk;->e:Landroid/content/Context;

    iput-object p3, p0, Lo/pk;->b:Landroid/os/Handler;

    iput-wide p4, p0, Lo/pk;->c:J

    iput-object p6, p0, Lo/pk;->a:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lo/pk;->d:Lo/pl;

    iget-object v1, p0, Lo/pk;->e:Landroid/content/Context;

    iget-object v2, p0, Lo/pk;->b:Landroid/os/Handler;

    iget-wide v3, p0, Lo/pk;->c:J

    iget-object v5, p0, Lo/pk;->a:Landroid/os/ConditionVariable;

    invoke-static/range {v0 .. v5}, Lo/pl;->c(Lo/pl;Landroid/content/Context;Landroid/os/Handler;JLandroid/os/ConditionVariable;)V

    return-void
.end method
