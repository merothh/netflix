.class Lo/TL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/Tv;

.field private final d:Lo/TC;

.field private final e:Z


# direct methods
.method public constructor <init>(Lo/TC;ZLo/Tv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TL;->d:Lo/TC;

    iput-boolean p2, p0, Lo/TL;->e:Z

    iput-object p3, p0, Lo/TL;->a:Lo/Tv;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/TL;->d:Lo/TC;

    iget-boolean v1, p0, Lo/TL;->e:Z

    iget-object v2, p0, Lo/TL;->a:Lo/Tv;

    invoke-static {v0, v1, v2}, Lo/TC;->a(Lo/TC;ZLo/Tv;)V

    return-void
.end method
