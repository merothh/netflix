.class Lo/Rb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/List;

.field private final c:Lo/QQ;

.field private final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lo/QQ;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Rb;->c:Lo/QQ;

    iput-object p2, p0, Lo/Rb;->a:Ljava/util/List;

    iput-object p3, p0, Lo/Rb;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/Rb;->c:Lo/QQ;

    iget-object v1, p0, Lo/Rb;->a:Ljava/util/List;

    iget-object v2, p0, Lo/Rb;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lo/QQ;->c(Lo/QQ;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
