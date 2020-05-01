.class Lo/je;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final e:Lo/jf;


# direct methods
.method public constructor <init>(Lo/jf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/je;->e:Lo/jf;

    iput-object p2, p0, Lo/je;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/je;->e:Lo/jf;

    iget-object v1, p0, Lo/je;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/jf;->d(Lo/jf;Ljava/lang/String;)V

    return-void
.end method
