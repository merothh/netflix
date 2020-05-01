.class Lo/ls;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/lf$2;

.field private final c:Lcom/netflix/dial/DialDevice;

.field private final e:Lo/mm;


# direct methods
.method public constructor <init>(Lo/lf$2;Lcom/netflix/dial/DialDevice;Lo/mm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ls;->a:Lo/lf$2;

    iput-object p2, p0, Lo/ls;->c:Lcom/netflix/dial/DialDevice;

    iput-object p3, p0, Lo/ls;->e:Lo/mm;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/ls;->a:Lo/lf$2;

    iget-object v1, p0, Lo/ls;->c:Lcom/netflix/dial/DialDevice;

    iget-object v2, p0, Lo/ls;->e:Lo/mm;

    invoke-static {v0, v1, v2}, Lo/lf$2;->e(Lo/lf$2;Lcom/netflix/dial/DialDevice;Lo/mm;)V

    return-void
.end method
