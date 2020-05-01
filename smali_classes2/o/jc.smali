.class Lo/jc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:Lo/jd;


# direct methods
.method public constructor <init>(Lo/jd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/jc;->d:Lo/jd;

    iput-object p2, p0, Lo/jc;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/jc;->d:Lo/jd;

    iget-object v1, p0, Lo/jc;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/jd;->a(Lo/jd;Ljava/lang/String;)V

    return-void
.end method
